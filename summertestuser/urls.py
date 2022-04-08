"""
 # -*- coding:utf-8 -*-
 # @Author：xiabo
 # @File : urls.py
 # @Date ：2022/4/1 下午2:31
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

from django.urls import path, re_path
from summertestuser import views

urlpatterns = [
    # path('register/', views.RegisterView.as_view()),
    path('login/', views.LoginView.as_view()),
    path('list/', views.UserView.as_view()),



]
