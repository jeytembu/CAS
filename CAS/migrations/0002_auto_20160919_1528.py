# -*- coding: utf-8 -*-
# Generated by Django 1.10.1 on 2016-09-19 15:28
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('CAS', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='coursecareer',
            old_name='career_id',
            new_name='career',
        ),
        migrations.RenameField(
            model_name='courses',
            old_name='cluster_id',
            new_name='cluster',
        ),
        migrations.RenameField(
            model_name='courses',
            old_name='university_id',
            new_name='university',
        ),
        migrations.RenameField(
            model_name='subjects',
            old_name='group_id',
            new_name='group',
        ),
    ]
