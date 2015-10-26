# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Candidate',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=30)),
                ('phoneNumber', models.CharField(max_length=20)),
                ('workType', models.CharField(max_length=20)),
                ('timeArea', models.CharField(blank=True,max_length=20)),
            ],
        ),
        migrations.CreateModel(
            name='TimeArea',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('description', models.CharField(max_length=30)),
                ('workType', models.CharField(max_length=20)),
                ('available', models.IntegerField()),
            ],
        ),
    ]
