# -*- coding: utf-8 -*-
# Generated by Django 1.10.1 on 2016-09-19 15:19
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Careers',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=300)),
                ('description', models.CharField(max_length=700)),
            ],
        ),
        migrations.CreateModel(
            name='Clusters',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=150)),
                ('dscription', models.CharField(max_length=700)),
            ],
        ),
        migrations.CreateModel(
            name='CourseCareer',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('career_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='CAS.Careers')),
            ],
        ),
        migrations.CreateModel(
            name='Courses',
            fields=[
                ('code', models.CharField(max_length=50, primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=200)),
                ('duration', models.IntegerField(default=0)),
                ('cutoff', models.IntegerField(default=0)),
                ('cluster_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='CAS.Clusters')),
            ],
        ),
        migrations.CreateModel(
            name='Groups',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=40)),
            ],
        ),
        migrations.CreateModel(
            name='Subjects',
            fields=[
                ('code', models.CharField(max_length=70, primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=60)),
                ('group_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='CAS.Groups')),
            ],
        ),
        migrations.CreateModel(
            name='Universities',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=300)),
                ('ranking', models.IntegerField(default=0)),
                ('description', models.CharField(max_length=500)),
            ],
        ),
        migrations.AddField(
            model_name='courses',
            name='university_id',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='CAS.Universities'),
        ),
        migrations.AddField(
            model_name='coursecareer',
            name='course_code',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='CAS.Courses'),
        ),
    ]
