# -*- coding: utf-8 -*-
# Generated by Django 1.10.1 on 2016-09-25 12:53
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('CAS', '0011_auto_20160924_0910'),
    ]

    operations = [
        migrations.AddField(
            model_name='careers',
            name='definition',
            field=models.TextField(default='', max_length=700),
        ),
    ]
