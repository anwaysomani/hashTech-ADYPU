from django import forms
from .models import *

class calendarForm(forms.ModelForm):
	class Meta:
		model = Calendar
		fields = ['image', 'date', 'event', 'time', 'category', 'url']


