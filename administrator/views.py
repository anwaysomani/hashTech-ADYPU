# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render


def contact_page(request):
	return render(request, 'contact.html', {})


