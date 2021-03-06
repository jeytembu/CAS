# -*- coding: utf-8 -*-
# Generated by Django 1.10.1 on 2016-11-12 18:36
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('CAS', '0019_auto_20161112_1832'),
    ]

    operations = [
        migrations.AlterField(
            model_name='courses',
            name='cluster',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='CAS.Clusters'),
        ),
        migrations.AlterField(
            model_name='courses',
            name='university',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='CAS.Universities'),
        ),
    ]
