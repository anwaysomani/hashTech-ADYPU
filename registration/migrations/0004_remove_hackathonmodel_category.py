# -*- coding: utf-8 -*-
# Generated by Django 1.11.20 on 2019-03-10 08:33
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('registration', '0003_hackathonmodel_challenge'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='hackathonmodel',
            name='category',
        ),
    ]
