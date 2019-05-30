from django.conf.urls import url
from . import views

urlpatterns=[
    url(r'^$',views.place),  # 提交订单
    url(r'^remind/(\d+)/$',views.order_remind),  # 提醒发货
    url(r'^pay/(\d+)/$',views.order_pay),  # 支付
    url(r'^pay/$',views.order_pay),  # 支付
    url(r'^logistics/(\d+)/$',views.order_logistics),  # 快递查询
    url(r'^confirm/(\d+)/$',views.order_confirm),  # 确认收货
    url(r'^appraise/(\d+)/$',views.order_appraise),  # 评价
    url(r'^evaluate/$',views.order_evaluate),  # 文字评价
    url(r'^create/$',views.order_create),  # 创建订单
    url(r'^place(\d+)_(\d+)/$',views.place),  #
    url(r'^change_pay/$',views.change_pay),  # 改变支付
    url(r'^del/(\d+)/$',views.order_del),  # 删除订单
]