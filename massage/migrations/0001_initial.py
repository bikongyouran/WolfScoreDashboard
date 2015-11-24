# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Colleague',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('emailAddress', models.CharField(max_length=50)),
                ('timeArea', models.CharField(blank=True, max_length=20)),
                ('place', models.CharField(blank=True, max_length=30)),
            ],
        ),
        migrations.CreateModel(
            name='ServeTime',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('timeArea', models.CharField(max_length=30)),
                ('available', models.IntegerField()),
            ],
        ),
    ]
