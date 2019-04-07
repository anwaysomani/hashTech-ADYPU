# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from registration.models import Volunteers

def student_coordinators(request):
	volunteer = Volunteers.objects.all().order_by('name').values('name').distinct()
	context = {
		'volunteer': volunteer,
	}
	return render(request, 'team/student_coordinators.html', context)


# Sponsors 
def sponsors(request):
	return render(request, 'records/sponsors.html', {})
