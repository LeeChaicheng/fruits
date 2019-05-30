from django.conf.urls import url
from . import views

urlpatterns=[
    url(r'^register/$',views.register),  # 注册界面
    url(r'^register_handle/$',views.register_handle),  # 注册
    url(r'^uname_exist/',views.uname_exist),  # 退出登录
    url(r'^login/$',views.login),  # 登录界面
    url(r'^login_handle/$',views.login_handle),  # 登录
    url(r'^login_out/$',views.exit),  # 退出登录
    url(r'^info/$',views.user_info),  # 我的信息
    url(r'^order/(\d+)/$',views.order),  # 我的订单
    url(r'^order/$',views.order),
    url(r'^address/$',views.address),  # 地址
    url(r'^address_add/$',views.address_add),  # 添加地址
    url(r'^address/del',views.address_del),  # 删除地址
    url(r'^findpwd/$',views.find_pwd),  # 查找
    url(r'^resetpwd/$',views.reset_pwd),
]