# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('wolf', '0004_auto_20150802_1215'),
    ]

    operations = [
        migrations.RenameField(
            model_name='visitor',
            old_name='des',
            new_name='desc',
        ),
    ]
