# -*- coding: utf-8 -*-
# Generated by Django 1.11.20 on 2019-03-07 03:30
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('event_info', '0007_delete_calendar'),
    ]

    operations = [
        migrations.CreateModel(
            name='Calendar',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('image', models.CharField(max_length=40)),
                ('date', models.CharField(max_length=40)),
                ('event', models.CharField(max_length=50)),
                ('time', models.CharField(max_length=40)),
                ('category', models.CharField(max_length=40)),
                ('url', models.CharField(max_length=100)),
            ],
            options={
                'verbose_name': 'Calendar Event',
                'verbose_name_plural': 'Calendar Events',
            },
        ),
    ]
