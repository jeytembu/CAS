# -*- coding: utf-8 -*-
# Generated by Django 1.10.1 on 2016-11-21 12:50
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('CAS', '0044_auto_20161121_1240'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='coursecareer',
            name='career',
        ),
        migrations.RemoveField(
            model_name='coursecareer',
            name='course',
        ),
        migrations.RemoveField(
            model_name='courses',
            name='cluster',
        ),
        migrations.RemoveField(
            model_name='courses',
            name='university',
        ),
        migrations.RemoveField(
            model_name='recommendedcourses',
            name='course',
        ),
        migrations.RemoveField(
            model_name='recommendedcourses',
            name='user',
        ),
        migrations.DeleteModel(
            name='CourseCareer',
        ),
        migrations.DeleteModel(
            name='Courses',
        ),
        migrations.DeleteModel(
            name='RecommendedCourses',
        ),
    ]
