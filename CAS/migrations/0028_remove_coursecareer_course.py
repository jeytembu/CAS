# -*- coding: utf-8 -*-
# Generated by Django 1.10.1 on 2016-11-21 11:56
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('CAS', '0027_auto_20161121_1154'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='coursecareer',
            name='course',
        ),
    ]