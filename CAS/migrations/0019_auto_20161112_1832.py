# -*- coding: utf-8 -*-
# Generated by Django 1.10.1 on 2016-11-12 18:32
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('CAS', '0018_auto_20161112_1813'),
    ]

    operations = [
        migrations.AlterField(
            model_name='courses',
            name='cluster',
            field=models.TextField(default='', max_length=1000),
        ),
        migrations.AlterField(
            model_name='courses',
            name='university',
            field=models.TextField(default='', max_length=1000),
        ),
    ]
