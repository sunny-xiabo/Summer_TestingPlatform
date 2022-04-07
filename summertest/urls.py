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
from summertest.views import project

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
]
