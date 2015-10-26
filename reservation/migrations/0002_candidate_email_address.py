# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('reservation', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='candidate',
            name='email_address',
            field=models.CharField(default='wuhaifengdhu@163.com', max_length=50),
            preserve_default=False,
        ),
    ]
