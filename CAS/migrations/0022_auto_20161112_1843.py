# -*- coding: utf-8 -*-
# Generated by Django 1.10.1 on 2016-11-12 18:43
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('CAS', '0021_auto_20161112_1840'),
    ]

    operations = [
        migrations.AlterField(
            model_name='coursecareer',
            name='course',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='CAS.Courses'),
        ),
    ]
