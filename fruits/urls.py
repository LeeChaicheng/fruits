"""fruits URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.8/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Add an import:  from blog import urls as blog_urls
    2. Add a URL to urlpatterns:  url(r'^blog/', include(blog_urls))
"""
from django.conf.urls import include, url
from django.contrib import admin
from f_info import views
urlpatterns = [
    url(r'^admin/', include(admin.site.urls)),  # 管理员
    url(r'^user/',include('f_user.urls')),  # 用户
    url(r'^index/',include('f_info.urls')),  # 主页
    url(r'^list(\d+)_(\d+)_(\d+)/$',views.list),  # 列表
    url(r'^(\d+)/$',views.detail),
    url(r'^tinymce/', include('tinymce.urls')),  # 编辑
    url(r'^cart/',include('f_cart.urls')),  # 购物车
    url(r'^order/',include('f_order.urls')),  # 订单
    url(r'^search/', include('haystack.urls')),  # 搜索
]
