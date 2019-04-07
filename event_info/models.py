# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models

# Create your models here.
class Calendar(models.Model):
	image = models.CharField(max_length=40)
	date = models.CharField(max_length=40)
	event = models.CharField(max_length=50)
	time = models.CharField(max_length=40)
	category = models.CharField(max_length=40)
	url = models.CharField(max_length=100)
	
	def __str__(self):
		return self.event
	
	class Meta:
		verbose_name		= "Calendar Event"
		verbose_name_plural = "Calendar Events"
