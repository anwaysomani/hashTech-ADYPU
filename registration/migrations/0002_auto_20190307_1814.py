# -*- coding: utf-8 -*-
# Generated by Django 1.11.20 on 2019-03-07 18:14
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('registration', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='volunteers',
            name='mobile',
            field=models.CharField(blank=True, max_length=10, null=True),
        ),
    ]
