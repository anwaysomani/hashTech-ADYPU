# -*- coding: utf-8 -*-
# Generated by Django 1.11.20 on 2019-03-22 19:20
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('registration', '0008_auto_20190319_1516'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='djnightmodel',
            name='entryType',
        ),
    ]
