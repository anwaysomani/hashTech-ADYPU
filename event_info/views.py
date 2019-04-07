# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render

from bootstrap_modal_forms.mixins import PassRequestMixin
from django.contrib.messages.views import SuccessMessageMixin
from django.views import generic
from .models import *
from .forms import *
from django.urls import reverse_lazy



# Create your views here.
def home_page(request):
	return render(request, 'homepage/index.html', {})

def calendar_page(request):
	event = Calendar.objects.all().order_by('date', '-category')
	context = {
		'event': event,
	}
	
	return render(request, 'event_description/calendar.html', context)


