# -*- coding: utf-8 -*-
from __future__ import unicode_literals

import datetime
from django.db import migrations, models
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('wolf', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='player',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2015, 8, 1, 5, 51, 29, 213000, tzinfo=utc)),
            preserve_default=False,
        ),
    ]
