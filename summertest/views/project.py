"""
 # -*- coding:utf-8 -*-
 # @Author：xiabo
 # @File : project.py
 # @Date ：2022/4/2 上午11:26
"""
from django.core.exceptions import ObjectDoesNotExist
from rest_framework.viewsets import GenericViewSet
from rest_framework.response import Response
from rest_framework import status

from Summer_TestingPlatform import pagination
from summertest import models, serializers

from django.utils.decorators import method_decorator

from summertest.utils.decorator import request_log
from summertest.utils import response, prepare


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
        """
        添加项目
        :param {name: str}
        :param request:
        :return:
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