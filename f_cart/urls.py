from django.conf.urls import url
from . import views

urlpatterns=[
    url(r'^$',views.cart),  # 购物车
    url(r'^add(\d+)_(\d+)/$',views.cart_add),  # 添加
    url(r'^alter(\d+)_(\d+)/$',views.cart_alter),  # 修改
    url(r'^del(\d+)/$',views.cart_del),  # 删除
    url(r'^count/$',views.count),  # 数量

]