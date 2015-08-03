# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('wolf', '0003_auto_20150801_1403'),
    ]

    operations = [
        migrations.CreateModel(
            name='Visitor',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('des', models.CharField(max_length=20)),
                ('count', models.BigIntegerField()),
            ],
        ),
        migrations.AlterField(
            model_name='player',
            name='createDate',
            field=models.DateField(blank=True, verbose_name='create Date'),
        ),
    ]
