# -*- coding: utf-8 -*-
# Generated by Django 1.10.1 on 2016-11-24 03:42
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('CAS', '0047_auto_20161123_1956'),
    ]

    operations = [
        migrations.RenameField(
            model_name='choices',
            old_name='text',
            new_name='choice',
        ),
    ]
