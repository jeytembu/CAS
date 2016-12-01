# -*- coding: utf-8 -*-
# Generated by Django 1.10.1 on 2016-11-21 11:45
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('CAS', '0025_remove_recommendedcourses_course'),
    ]

    operations = [
        migrations.AddField(
            model_name='coursecareer',
            name='course',
            field=models.ForeignKey(default='', on_delete=django.db.models.deletion.CASCADE, to='CAS.Courses'),
        ),
        migrations.AddField(
            model_name='courses',
            name='cluster',
            field=models.ForeignKey(default='', on_delete=django.db.models.deletion.CASCADE, to='CAS.Clusters'),
        ),
        migrations.AddField(
            model_name='courses',
            name='university',
            field=models.ForeignKey(default='', on_delete=django.db.models.deletion.CASCADE, to='CAS.Universities'),
        ),
        migrations.AddField(
            model_name='recommendedcourses',
            name='course',
            field=models.ForeignKey(default='', on_delete=django.db.models.deletion.CASCADE, to='CAS.Courses'),
        ),
    ]