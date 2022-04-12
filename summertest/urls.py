"""
 # -*- coding:utf-8 -*-
 # @Author：xiabo
 # @File : urls.py
 # @Date ：2022/4/4 下午7:24
"""
"""
 # -*- coding:utf-8 -*-
 # @Author：xiabo
 # @File : urls.py
 # @Date ：2022/4/2 下午2:05
"""

"""Summer_TestPlatform URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""

from django.urls import path
from summertest.views import project, api, config, report, yapi

urlpatterns = [
    # 访问统计相关接口
    path('visit/', project.VisitView.as_view({
        "get": "list",
    })),

    # 项目相关接口地址
    path('project/', project.ProjectView.as_view(
        {
            "get": "list",
            "post": "add",
            "patch": "update",
            "delete": "delete"
        }
    )),

    path('project/<int:pk>/', project.ProjectView.as_view({"get": "single"})),
    path('project/yapi/<int:pk>/', project.ProjectView.as_view({"get": "yapi_info"})),

    path('dashboard/', project.DashBoardView.as_view({'get': 'get'})),

    # debugtalk.py 相关接口
    path('debugtalk/<int:pk>/', project.DebugTalkView.as_view({"get": "debugtalk"})),
    path('debugtalk/', project.DebugTalkView.as_view({
        "patch": "update",
        "post": "run"
    })),

    # 二叉树接口地址
    path('tree/<int:pk>/', project.TreeView.as_view()),

    # 导入yapi
    path('yapi/<int:pk>/', yapi.YAPIView.as_view()),

    # api接口模板地址
    path('api/', api.APITemplateView.as_view({
        "post": "add",
        "get": "list"
    })),

    path('api/<int:pk>/', api.APITemplateView.as_view({
        "delete": "delete",
        "get": "single",
        "patch": "update",
        "post": "copy"
    })),

    path('api/tag/', api.APITemplateView.as_view({
        "patch": "add_tag",  # api修改状态
    })),

    path('api/move_api/', api.APITemplateView.as_view({
        "patch": "move",  # api修改relation
    })),

    # 报告地址
    path('reports/', report.ReportView.as_view({
        "get": "list"
    })),

    path('reports/<int:pk>/', report.ReportView.as_view({
        "delete": "delete",
        "get": "look"
    })),

    # HOST IP 地址
    path('host_ip/', config.HostIPView.as_view({
        "post": "add",
        "get": "list"
    })),

    path('host_ip/<int:pk>/', config.HostIPView.as_view({
        "delete": "delete",
        "patch": "update",
        "get": "all"
    })),

    # config接口地址
    path('config/', config.ConfigView.as_view({
        "post": "add",
        "get": "list",
        "delete": "delete"
    })),

    path('config/<int:pk>/', config.ConfigView.as_view({
        "post": "copy",
        "delete": "delete",
        "patch": "update",
        "get": "all"
    })),

    path('variables/', config.VariablesView.as_view({
        "post": "add",
        "get": "list",
        "delete": "delete"
    })),

    path('variables/<int:pk>/', config.VariablesView.as_view({
        "delete": "delete",
        "patch": "update"
    })),

]
