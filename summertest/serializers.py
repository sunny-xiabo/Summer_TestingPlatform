"""
 # -*- coding:utf-8 -*-
 # @Author：xiabo
 # @File : serializers.py
 # @Date ：2022/4/4 下午7:28
"""

from rest_framework import serializers

from summertest import models
from django.db.models import Q
from summertest.utils.parser import Parse
from summertest.utils.tree import get_tree_relation_name


class ProjectSerializer(serializers.ModelSerializer):
    """
    项目信息序列化
    """
    api_cover_rate = serializers.SerializerMethodField()

    class Meta:
        model = models.Project
        fields = [
            'id',
            'name',
            'desc',
            'responsible',
            'update_time',
            'creator',
            'updater',
            'yapi_openapi_token',
            'yapi_base_url',
            'api_cover_rate',
            'jira_project_key',
            'jira_bearer_token',
        ]

    def get_api_cover_rate(self, obj):
        """
        接口覆盖率，百分比后去两位小数点
        """
        apis = models.API.objects.filter(
            project_id=obj.id, delete=0).filter(~Q(tag=4)).values(
            'url', 'method')
        api_unique = {f'{api["url"]}_{api["method"]}' for api in apis}
        case_steps = models.CaseStep.objects.filter(case__project_id=obj.id).filter(
            ~Q(method='config')).values('url', 'method')
        case_steps_unique = {
            f'{case_step["url"]}_{case_step["method"]}' for case_step in case_steps}
        if len(api_unique) == 0:
            return '0.00'
        if len(case_steps_unique) > len(api_unique):
            return '100.00'
        return '%.2f' % (len(case_steps_unique & api_unique) /
                         len(api_unique) * 100)


class VisitSerializer(serializers.ModelSerializer):
    """
    访问统计序列化
    """

    class Meta:
        model = models.Visit
        fields = '__all__'


class DebugTalkSerializer(serializers.ModelSerializer):
    """
    驱动代码序列化
    """

    class Meta:
        model = models.Debugtalk
        fields = '__all__'


class RelationSerializer(serializers.ModelSerializer):
    """
    树形结构序列化
    """

    class Meta:
        model = models.Relation
        fields = '__all__'

class AssertSerializer(serializers.Serializer):
    """
    断言序列化
    """
    class Meta:
        models = models.API

    node = serializers.IntegerField(min_value=0, default='')
    # max_value=models.Project.objects.latest('id').id 会导致数据库迁移找不到project
    project = serializers.IntegerField(required=True, min_value=1)
    search = serializers.CharField(default='')
    creator = serializers.CharField(required=False, default='')
    tag = serializers.ChoiceField(choices=models.API.TAG, default='')
    rigEnv = serializers.ChoiceField(choices=models.API.ENV_TYPE, default='')
    delete = serializers.ChoiceField(choices=(0, 1), default=0)
    onlyMe = serializers.BooleanField(default=False)
    showYAPI = serializers.BooleanField(default=True)


class APIRelatedCaseSerializer(serializers.Serializer):
    case_name = serializers.CharField(source='case.name')
    case_id = serializers.CharField(source='case.id')

    class Meta:
        fields = ['case_id', 'case_name']


class APISerializer(serializers.ModelSerializer):
    """
    接口信息序列化
    """
    body = serializers.SerializerMethodField()
    tag_name = serializers.CharField(source="get_tag_display")
    cases = serializers.SerializerMethodField()
    relation_name = serializers.SerializerMethodField()

    class Meta:
        model = models.API
        # fields = '__all__'
        fields = [
            'id',
            'name',
            'url',
            'method',
            'project',
            'relation',
            'body',
            'rig_env',
            'tag',
            'tag_name',
            'update_time',
            'delete',
            'creator',
            'updater',
            'cases',
            'relation_name']

    def get_body(self, obj):
        parse = Parse(eval(obj.body))
        parse.parse_http()
        return parse.testcase

    def get_cases(self, obj):
        cases = models.CaseStep.objects.filter(source_api_id=obj.id)
        case_id = APIRelatedCaseSerializer(many=True, instance=cases)
        return case_id.data

    def get_relation_name(self, obj):
        relation_obj = models.Relation.objects.get(
            project_id=obj.project_id, type=1)
        label = get_tree_relation_name(eval(relation_obj.tree), obj.relation)
        return label
