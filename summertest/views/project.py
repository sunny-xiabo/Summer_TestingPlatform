"""
 # -*- coding:utf-8 -*-
 # @Author：xiabo
 # @File : project.py
 # @Date ：2022/4/2 上午11:26
"""
from django.core.exceptions import ObjectDoesNotExist
from django.db.models import Count
from rest_framework.views import APIView
from rest_framework.viewsets import GenericViewSet
from rest_framework.response import Response
from rest_framework import status

from Summer_TestingPlatform import pagination
from summertest import models, serializers

from django.utils.decorators import method_decorator

from summertest.utils.decorator import request_log
from summertest.utils import response, prepare
from summertest.utils.day import get_day, get_month_format, get_week_format
from summertest.utils import day
from summertest.utils.runner import DebugCode
from summertest.utils.tree import get_tree_max_id


class ProjectView(GenericViewSet):
    """
    项目增删改查
    """
    queryset = models.Project.objects.all().order_by('-update_time')
    serializer_class = serializers.ProjectSerializer
    pagination_class = pagination.MyCursorPagination

    # 补充第一个self参数，以适配类视图方法
    @method_decorator(request_log(level='DEBUG'))
    def list(self, request):
        """
        查询项目信息
        :param request:
        :return:
        """
        projects = self.get_queryset()
        page_projects = self.paginate_queryset(projects)
        serializer = self.get_serializer(page_projects, many=True)
        return self.get_paginated_response(serializer.data)

    @method_decorator(request_log(level='INFO'))
    def add(self, request):
        """添加项目 {
            name: str
        }
        """

        name = request.data["name"]

        if models.Project.objects.filter(name=name).first():
            response.PROJECT_EXISTS["name"] = name
            return Response(response.PROJECT_EXISTS)
        # 反序列化
        serializer = serializers.ProjectSerializer(data=request.data)

        if serializer.is_valid():
            serializer.save()
            project = models.Project.objects.get(name=name)
            prepare.project_init(project)
            return Response(response.PROJECT_ADD_SUCCESS)

        return Response(response.SYSTEM_ERROR)

    @method_decorator(request_log(level='INFO'))
    def update(self, request):
        """
        编辑项目
        """

        try:
            project = models.Project.objects.get(id=request.data['id'])
        except (KeyError, ObjectDoesNotExist):
            return Response(response.SYSTEM_ERROR)

        if request.data['name'] != project.name:
            if models.Project.objects.filter(name=request.data['name']).first():
                return Response(response.PROJECT_EXISTS)

        # 调用save方法update_time字段才会自动更新
        project.name = request.data['name']
        project.desc = request.data['desc']
        project.responsible = request.data['responsible']
        project.yapi_base_url = request.data['yapi_base_url']
        project.yapi_openapi_token = request.data['yapi_openapi_token']
        project.jira_project_key = request.data['jira_project_key']
        project.jira_bearer_token = request.data['jira_bearer_token']
        project.save()

        return Response(response.PROJECT_UPDATE_SUCCESS)

    @method_decorator(request_log(level='INFO'))
    def delete(self, request):
        """
        删除项目
        """
        if request.user.is_superuser is False:
            return Response(status=status.HTTP_401_UNAUTHORIZED)
        try:
            project = models.Project.objects.get(id=request.data['id'])

            project.delete()
            prepare.project_end(project)

            return Response(response.PROJECT_DELETE_SUCCESS)
        except ObjectDoesNotExist:
            return Response(response.SYSTEM_ERROR)

    @method_decorator(request_log(level='INFO'))
    def single(self, request, **kwargs):
        """
        得到单个项目相关统计信息
        """
        pk = kwargs.pop('pk')

        try:
            queryset = models.Project.objects.get(id=pk)
        except ObjectDoesNotExist:
            return Response(response.PROJECT_NOT_EXISTS)

        serializer = self.get_serializer(queryset, many=False)

        project_info = prepare.get_project_detail_v2(pk)
        jira_core_case_cover_rate: dict = prepare.get_jira_core_case_cover_rate(pk)
        project_info.update(jira_core_case_cover_rate)
        project_info.update(serializer.data)

        return Response(project_info)

    @method_decorator(request_log(level='INFO'))
    def yapi_info(self, request, **kwargs):
        """获取项目的yapi地址和token"""
        pk = kwargs.pop('pk')
        obj = models.Project.objects.get(id=pk)
        ser = self.get_serializer(obj, many=False)
        return Response(ser.data)


class DashBoardView(GenericViewSet):
    """项目看板"""

    @method_decorator(request_log(level='INFO'))
    def get(self, request):
        _, report_status = prepare.aggregate_reports_by_status(0)
        _, report_type = prepare.aggregate_reports_by_type(0)
        report_day = prepare.aggregate_reports_or_case_bydate('day', models.Report)
        report_week = prepare.aggregate_reports_or_case_bydate('week', models.Report)
        report_month = prepare.aggregate_reports_or_case_bydate('month', models.Report)

        api_day = prepare.aggregate_apis_bydate('day')
        api_week = prepare.aggregate_apis_bydate('week')
        api_month = prepare.aggregate_apis_bydate('month')

        yapi_day = prepare.aggregate_apis_bydate('day', True)
        yapi_week = prepare.aggregate_apis_bydate('week', True)
        yapi_month = prepare.aggregate_apis_bydate('month', True)

        case_day = prepare.aggregate_reports_or_case_bydate('day', models.Case)
        case_week = prepare.aggregate_reports_or_case_bydate('week', models.Case)
        case_month = prepare.aggregate_reports_or_case_bydate('month', models.Case)

        res = {
            'report': {
                'status': report_status,
                'type': report_type,
                'week': report_week,
                'month': report_month,
                'day': report_day
            },
            'case': {
                'week': case_week,
                'month': case_month,
                'day': case_day
            },
            'api': {
                'week': api_week,
                'month': api_month,
                'day': api_day
            },
            'yapi': {
                'week': yapi_week,
                'month': yapi_month,
                'day': yapi_day
            },
            # 包含今天的前6天
            'recent_days': [get_day(n)[5:] for n in range(-5, 1)],
            'recent_months': [get_month_format(n) for n in range(-5, 1)],
            'recent_weeks': [get_week_format(n) for n in range(-5, 1)],

        }
        return Response(res)


class VisitView(GenericViewSet):
    serializer_class = serializers.VisitSerializer
    queryset = models.Visit.objects

    def list(self, request):
        """

        :param request:
        :return:
        """
        project = request.query_params.get("project")
        # 查询项目前7天的访问记录
        # 根据日期分组
        # 统计每天的条数
        recent7days = [day.get_day(d)[5:3] for d in range(-5, 0)]
        count_data = self.get_queryset() \
            .filter(project=project, create_time__range=(day.get_day(-5), day.get_day())) \
            .extra(select={"create_time": "DATE_FORMAT(create_time,'%%m-%%d')"}) \
            .values('create_time') \
            .annotate(counts=Count('id')) \
            .values('create_time', 'counts')

        create_time_report_map = {data['create_time']: data['counts'] for data in count_data}
        report_count = [create_time_report_map.get(d, 0) for d in recent7days]

        return Response({'recent7days': recent7days, 'report_count': report_count})


class DebugTalkView(GenericViewSet):
    """
    debugtalk update
    """

    serializer_class = serializers.DebugTalkSerializer

    @method_decorator(request_log(level='INFO'))
    def debugtalk(self, request, **kwargs):
        """
        得到debugtalk code
        :param request:
        :param kwargs:
        :return:
        """
        pk = kwargs.pop('pk')
        try:
            queryset = models.Debugtalk.objects.get(project__id=pk)
        except ObjectDoesNotExist:
            return Response(response.DEBUGTALK_NOT_EXISTS)

        serializer = self.get_serializer(queryset, many=False)

        return Response(serializer.data)

    @method_decorator(request_log(level='INFO'))
    def update(self, request):
        """
        编辑debugtalk.py 代码并保存
        :param request:
        :return:
        """
        pk = request.data['id']
        try:
            models.Debugtalk.objects.filter(id=pk) \
                .update(code=request.data['code'], updater=request.user.username)
        except ObjectDoesNotExist:
            return Response(response.SYSTEM_ERROR)

        return Response(response.DEBUGTALK_UPDATE_SUCCESS)

    @method_decorator(request_log(level='INFO'))
    def run(self, request):
        """
        运行debugtalk
        :param request:
        :return:
        """
        try:
            code = request.data['code']
        except KeyError:
            return Response(response.KEY_MISS)

        debug = DebugCode(code)
        debug.run()
        resp = {
            "msg": debug.resp,
            "success": True,
            "code": "0001"
        }
        return Response(resp)


class TreeView(APIView):
    """
    树形结构操作
    """

    @method_decorator(request_log(level='INFO'))
    def get(self, request, **kwargs):
        """
        返回树形结构
        当前节点ID
        :param request:
        :param kwargs:
        :return:
        """
        try:
            tree_type = request.query_params['type']
            tree = models.Relation.objects.get(project__id=kwargs['pk'], type=tree_type)
        except KeyError:
            return Response(response.KEY_MISS)
        except ObjectDoesNotExist:
            return Response(response.SYSTEM_ERROR)

        body = eval(tree.tree)  # list
        tree = {
            "tree": body,
            "id": tree.id,
            "success": True,
            "max": get_tree_max_id(body)
        }
        return Response(tree)

    @method_decorator(request_log(level='INFO'))
    def patch(self, request, **kwargs):
        """
        修改树形结构，ID不能重复
        :param request:
        :param kwargs:
        :return:
        """
        try:
            body = request.data['body']
            mode = request.data['mode']

            relation = models.Relation.objects.get(id=kwargs['pk'])
            relation.tree = body
            relation.save()

        except KeyError:
            return Response(response.KEY_MISS)

        except ObjectDoesNotExist:
            return Response(response.SYSTEM_ERROR)

        #  mode -> True remove node
        if mode:
            prepare.tree_end(request.data, relation.project)

        response.TREE_UPDATE_SUCCESS['tree'] = body
        response.TREE_UPDATE_SUCCESS['max'] = get_tree_max_id(body)

        return Response(response.TREE_UPDATE_SUCCESS)
