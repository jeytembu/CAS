# -*- coding: utf-8 -*-
# Generated by Django 1.10.1 on 2016-09-28 14:09
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('CAS', '0012_careers_definition'),
    ]

    operations = [
        migrations.CreateModel(
            name='Grades',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=10)),
            ],
            options={
                'db_table': 'grades',
            },
        ),
        migrations.CreateModel(
            name='SubjectGrade',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('grade', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='CAS.Grades')),
                ('subject', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='CAS.Subjects')),
            ],
            options={
                'db_table': 'subject_grade',
            },
        ),
    ]
