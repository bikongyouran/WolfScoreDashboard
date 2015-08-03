# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('wolf', '0002_player_date'),
    ]

    operations = [
        migrations.RenameField(
            model_name='player',
            old_name='date',
            new_name='createDate',
        ),
    ]
