# -*- coding: utf-8 -*-
# Generated by Django 1.10.1 on 2016-09-20 21:20
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('CAS', '0006_subjectcluster'),
    ]

    operations = [
        migrations.AddField(
            model_name='subjectcluster',
            name='subject_category',
            field=models.CharField(default='', max_length=30),
        ),
        migrations.AlterField(
            model_name='choices',
            name='text',
            field=models.CharField(max_length=70),
        ),
    ]
