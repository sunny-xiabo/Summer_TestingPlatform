"""
 # -*- coding:utf-8 -*-
 # @Author：xiabo
 # @File : serializers.py
 # @Date ：2022/4/4 下午7:28
"""

from rest_framework import serializers

from summertest import models
from django.db.models import Q


class ProjectSerializer(serializers.Serializer):
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


class VisitSerializer(serializers.Serializer):
    """
    访问统计序列化
    """

    class Meta:
        model = models.Visit
        fields = '__all__'
