# -*- coding: utf-8 -*-
# Generated by Django 1.10.1 on 2016-11-21 12:04
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('CAS', '0029_recommendedcourses'),
    ]

    operations = [
        migrations.AddField(
            model_name='coursecareer',
            name='course',
            field=models.ForeignKey(default='', on_delete=django.db.models.deletion.CASCADE, to='CAS.Courses'),
        ),
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
        migrations.AlterField(
            model_name='recommendedcourses',
            name='course',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='CAS.Courses'),
        ),
    ]
