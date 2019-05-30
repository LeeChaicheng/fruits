# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('f_order', '0004_auto_20180604_1033'),
    ]

    operations = [
        migrations.AlterField(
            model_name='orderinfo',
            name='odate',
            field=models.DateTimeField(verbose_name='订单时间'),
        ),
    ]
