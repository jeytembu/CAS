# -*- coding: utf-8 -*-
# Generated by Django 1.10.1 on 2016-11-24 04:27
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('CAS', '0048_auto_20161124_0342'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='questions',
            options={'ordering': ['id'], 'verbose_name_plural': 'Questions'},
        ),
    ]
