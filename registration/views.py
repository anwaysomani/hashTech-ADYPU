# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from .forms import *
from .models import *

from django.template import Context
from django.template.loader import get_template
from django.core.mail import EmailMessage

# Forms
from django.urls import reverse_lazy
from django.views import generic

# Messages
from django.contrib import messages

# Defining events
# ---------------

# Hackathon
def hackathon(request):
	coordinators = Coordinators.objects.filter(event='Hackathon')
	volunteers = Volunteers.objects.filter(event='Hackathon')
	event = Event.objects.filter(event_name='Hackathon')

	form = HackathonForm()
	context = {
		'form': form,
		'coordinator': coordinators,
		'volunteers': volunteers,
		'event_name': 'Hackathon',
		'event_date': '28<sup>th</sup> - 29<sup>th</sup>',
		'event': event,
		'category': 'Competitions',
		'event_location': '04hackathon',
	}

	if request.method=="POST":
		form = HackathonForm(request.POST or None)
		if form.is_valid():
			emailSave = form.cleaned_data['contactEmail']
			nameSave = form.cleaned_data['playerName']
			mobileSave = form.cleaned_data['contactNumber']
			form.save()
			email = emailSave
			subject = "Successful Form Submission for HashTech '19"
			EMAIL_HOST_USER = 'hashtech@adypu.edu.in'
			from_email = EMAIL_HOST_USER
			to_email = [emailSave, settings.EMAIL_HOST_USER]
			
			ctx = { 
				'name': nameSave,
				'event': 'Hackathon',
				'website': 'Hackathon',
				'mobile': mobileSave,
				'email': emailSave,
				'date': '28-29 March',
			}   
			
			message = get_template('payment/hackathon_email.html').render(ctx)
			msg = EmailMessage(subject, message, from_email, to_email)
			msg.content_subtype = 'html'
			msg.send()
			messages.success(request, "Successfully registered, Please check your email!")
	else:
		form = HackathonForm()

	return render(request, 'sub_events/event_page.html', context)

# NFS Most Wanted
def nfsmostwanted(request):
	coordinators = Coordinators.objects.filter(event='Gaming')
	volunteers = Volunteers.objects.filter(event='Gaming')
	event = Event.objects.filter(event_name='NFS Most Wanted')
	
	form = NfsMostWantedForm()
	context = {
		'form': form,
		'coordinator': coordinators,
		'volunteers': volunteers,
		'event_name': 'NFS Most Wanted',
		'event_date': '26<sup>th</sup> - 29<sup>th</sup>',
		'event': event,
		'category': 'Gaming',
		'event_location': '16nfs',
	}
	
	if request.method=="POST":
		form = NfsMostWantedForm(request.POST or None)
		if form.is_valid():
			emailSave = form.cleaned_data['contactEmail']
			nameSave = form.cleaned_data['playerName']
			mobileSave = form.cleaned_data['contactNumber']
			form.save()
			email = emailSave
			subject = "Successful Form Submission for HashTech '19"
			EMAIL_HOST_USER = 'hashtech@adypu.edu.in'
			from_email = EMAIL_HOST_USER
			to_email = [emailSave, settings.EMAIL_HOST_USER]

			ctx = {
				'name': nameSave,
				'event': 'NFS Most Wanted',
				'website': 'NFS-Most-Wanted',
				'amount': '50',
				'mobile': mobileSave,
				'email': emailSave,
				'date': '26-29 March',
			}

			message = get_template('payment/email_template.html').render(ctx)
			msg = EmailMessage(subject, message, from_email, to_email)
			msg.content_subtype = 'html'
			msg.send()
			messages.success(request, "Successfully registered, please check your mail")
	else:
		form = NfsMostWantedForm()

	return render(request, 'sub_events/event_page.html', context)


def fifa19(request):
	coordinators = Coordinators.objects.filter(event='Gaming')
	volunteers = Volunteers.objects.filter(event='Gaming')
	event = Event.objects.filter(event_name='FIFA 19')

	form = Fifa19Form()
	context = {
		'form': form,
		'coordinator': coordinators,
		'volunteers': volunteers,
		'event_name': 'FIFA 19',
		'event_date': '26<sup>th</sup> - 29<sup>th</sup>',
		'event': event,
		'category': 'Gaming',
		'event_location': '15fifa',
	}

	if request.method=="POST":
		form = Fifa19Form(request.POST or None)
		if form.is_valid():
			emailSave = form.cleaned_data['contactEmail']
			nameSave = form.cleaned_data['playerName']
			mobileSave = form.cleaned_data['contactNumber']
			form.save()
			email = emailSave
			subject = "Successful Form Submission for HashTech '19"
			EMAIL_HOST_USER = 'hashtech@adypu.edu.in'
			from_email = EMAIL_HOST_USER
			to_email = [emailSave, settings.EMAIL_HOST_USER]
			
			ctx = {
				'name': nameSave,
				'event': 'Fifa-19',
				'website': 'Fifa-19',
				'amount': '50',
				'mobile': mobileSave,
				'email': emailSave,
				'date': '26-29 March',
			}

			message = get_template('payment/email_template.html').render(ctx)
			msg = EmailMessage(subject, message, from_email, to_email)
			msg.content_subtype = 'html'
			msg.send()
			messages.success(request, "Successfully registered, please check your mail")
	else:
		form = Fifa19Form()

	return render(request, 'sub_events/event_page.html', context)

def dronebuildingworkshop(request):
	coordinators = Coordinators.objects.filter(event='Drone Building Workshop')
	volunteers = Volunteers.objects.filter(event='Drone Building Workshop')
	event = Event.objects.filter(event_name='Drone Building Workshop')
	
	form = DroneBuildingWorkshopForm()
	context = {
		'form': form,
		'coordinator': coordinators,
		'volunteers': volunteers,
		'event_name': 'Drone Building Workshop',
		'event_date': '26<sup>th</sup> - 27<sup>th</sup>',
		'event': event,
		'category': 'Workshop',
		'event_location': '10drone',
	}
    
	if request.method=="POST":
		form = DroneBuildingWorkshopForm(request.POST or None)
		if form.is_valid():
			emailSave = form.cleaned_data['contactEmail']
			nameSave = form.cleaned_data['playerName']
			mobileSave = form.cleaned_data['contactNumber']
			form.save()
			email = emailSave
			subject = "Successful Form Submission for HashTech '19"
			EMAIL_HOST_USER = 'hashtech@adypu.edu.in'
			from_email = EMAIL_HOST_USER
			to_email = [emailSave, settings.EMAIL_HOST_USER]
			
			ctx = {
				'name': nameSave,
				'event': 'Drone Building Workshop',
				'website': 'Drone-Building-Workshop',
				'amount': '1000',
				'mobile': mobileSave,
				'email': emailSave,
				'date': '26 - 27 March',
			}

			message = get_template('payment/email_template.html').render(ctx)
			msg = EmailMessage(subject, message, from_email, to_email)
			msg.content_subtype = 'html'
			msg.send()
			messages.success(request, "Successfully registered, please check your mail")
	else:
		form = DroneBuildingWorkshopForm()

	return render(request, 'sub_events/event_page.html', context)

def mypageantry(request):
	coordinators = Coordinators.objects.filter(event='My Pageantry')
	volunteers = Volunteers.objects.filter(event='My Pageantry')
	event = Event.objects.filter(event_name='My Pageantry')

	form = MyPageantryForm()
	context = {
		'form': form,
		'coordinator': coordinators,
		'volunteers': volunteers,
		'event_name': 'My Pageantry',
		'event_date': '15<sup>th</sup> - 29<sup>th</sup>',
		'event': event,
		'category': 'Fun Events',
		'event_location': 'mypageantry',
	}

	if request.method=="POST":
		form = MyPageantryForm(request.POST or None)
		if form.is_valid():
			emailSave = form.cleaned_data['contactEmail']
			nameSave = form.cleaned_data['playerName']
			mobileSave = form.cleaned_data['contactNumber']
			form.save()
			email = emailSave
			subject = "Successful Form Submission for hashTech '19"
			EMAIL_HOST_USER = 'hashtech@adypu.edu.in'
			from_email = EMAIL_HOST_USER
			to_email = [emailSave, settings.EMAIL_HOST_USER]
			ctx = {
				'name': nameSave,
				'event': 'MyPageantry',
				'website': 'MyPageantry',
			}

			message = get_template('payment/mypageantry_email_template.html').render(ctx)
			msg = EmailMessage(subject, message, from_email, to_email)
			msg.content_subtype = 'html'
			msg.send()
			messages.success(request, "Successfully registered, please check your mail")
	else:
		form = DjNightForm()
		
	return render(request, 'sub_events/event_page.html', context)	

def djnight(request):
	coordinators = Coordinators.objects.filter(event='DJ Night')
	volunteers = Volunteers.objects.filter(event='DJ Night')
	event = Event.objects.filter(event_name='DJ Night')
	
	form = DjNightForm()
	context = {
		'form': form,
		'coordinator': coordinators,
		'volunteers': volunteers,
		'event_name': 'DJ Night',
		'event_date': '29<sup>th</sup>',
		'event': event,
		'category': 'Fun Events',
		'event_location': 'djnight',
	}

	if request.method=="POST":
		form = DjNightForm(request.POST or None)
		if form.is_valid():
			emailSave = form.cleaned_data['contactEmail']
			nameSave = form.cleaned_data['playerName']
			mobileSave = form.cleaned_data['contactNumber']
			form.save()
			email = emailSave
			subject = "Successful Form Submission for HashTech '19"
			EMAIL_HOST_USER = 'hashtech@adypu.edu.in'
			from_email = EMAIL_HOST_USER
			to_email = [emailSave, settings.EMAIL_HOST_USER]
			ctx = {
				'name': nameSave,
				'event': 'DJ Night',
				'website': 'DJ-Night',
				'amount': '200',
				'mobile': mobileSave,
				'email': emailSave,
				'date': '29 March',
			}

			message = get_template('payment/email_template.html').render(ctx)
			msg = EmailMessage(subject, message, from_email, to_email)
			msg.content_subtype = 'html'
			msg.send()
			messages.success(request, "Successfully registered, please check your mail")
	else:
		form = DjNightForm()

	return render(request, 'sub_events/event_page.html', context)


def evehicleworkshop(request):
	coordinators = Coordinators.objects.filter(event='E-Vehicle Design Workshop')
	volunteers = Volunteers.objects.filter(event='E-Vehicle Design Workshop')
	event = Event.objects.filter(event_name='E-Vehicle Design Workshop')
	
	form = EVehicleDesignWorkshopForm()
	context = {
		'form': form,
		'coordinator': coordinators,
		'volunteers': volunteers,
		'event_name': 'E-Vehicle Design Workshop',
		'event_date': '26<sup>th</sup> - 27<sup>th</sup>',
		'event': event,
		'category': 'Workshop',
		'event_location': 'evehicle',
	}

	if request.method=="POST":
		form = EVehicleDesignWorkshopForm(request.POST or None)
		if form.is_valid():
			emailSave = form.cleaned_data['contactEmail']
			nameSave = form.cleaned_data['playerName']
			mobileSave = form.cleaned_data['contactNumber']
			form.save()
			email = emailSave
			subject = "Successful Form Submission for HashTech '19"
			EMAIL_HOST_USER = 'hashtech@adypu.edu.in'
			from_email = EMAIL_HOST_USER
			to_email = [emailSave, settings.EMAIL_HOST_USER]
			ctx = {
				'name': nameSave,
				'event': 'E-Vehicle Design Workshop',
				'website': 'E-Vehicle-Design-Workshop',
				'amount': '900',
				'mobile': mobileSave,
				'email': emailSave,
				'date': '26 - 27 March',
			}
			
			message = get_template('payment/email_template.html').render(ctx)
			msg = EmailMessage(subject, message, from_email, to_email)
			msg.content_subtype = 'html'
			msg.send()
			messages.success(request, "Successfully registered, please check your mail")
	else:
		form = DroneBuildingWorkshopForm()

	return render(request, 'sub_events/event_page.html', context)

def bikeshow(request):
	coordinators = Coordinators.objects.filter(event='Bike Show')
	volunteers = Volunteers.objects.filter(event='Bike Show')
	event = Event.objects.filter(event_name='Bike Show')
	
	context = {
		'coordinator': coordinators,
		'volunteers': volunteers,
		'event_name': 'Bike Show',
		'event_date': '28<sup>th</sup> - 29<sup>th</sup>',
		'event': event,
		'category': 'Fun Event',
		'event_location': 'bikeshow',
	}

	return render(request, 'sub_events/event_page.html', context)


def coolestBike(request):
	coordinators = Coordinators.objects.filter(event='Coolest Bike Award')
	volunteers = Volunteers.objects.filter(event='Coolest Bike Award')
	event = Event.objects.filter(event_name='Coolest Bike Award')
	
	context = {
		'coordinator': coordinators,
		'volunteers': volunteers,
		'event_name': 'Coolest Bike',
		'start_date': '26',
		'end_date': '',
		'event': event,
		'category': 'Fun Event',
		'event_location': 'coolestbike',
	}    
    
	return render(request, 'sub_events/event_page.html', context)


def ethicalhackingworkshop(request):
	coordinators = Coordinators.objects.filter(event='Ethical Hacking Workshop')
	volunteers = Volunteers.objects.filter(event='Ethical Hacking Workshop')
	event = Event.objects.filter(event_name='Ethical Hacking Workshop')

	form = EthicalHackingWorkshopForm()
	context = {
		'form': form,
		'coordinator': coordinators,
		'volunteers': volunteers,
		'event_name': 'Ethical Hacking Workshop',
		'event_date': '30<sup>th</sup> - 31<sup>st</sup>',
		'event': event,
		'category': 'Workshop',
		'event_location': '11ethhacking',
	}

	if request.method=="POST":
		form = EthicalHackingWorkshopForm(request.POST or None)
		if form.is_valid():
			emailSave = form.cleaned_data['contactEmail']
			nameSave = form.cleaned_data['playerName']
			mobileSave = form.cleaned_data['contactNumber']
			form.save()
			email = emailSave
			subject = "Successful Form Submission for HashTech '19"
			EMAIL_HOST_USER = 'hashtech@adypu.edu.in'
			from_email = EMAIL_HOST_USER
			to_email = [emailSave, settings.EMAIL_HOST_USER]
			
			ctx = {
				'name': nameSave,
				'event': 'Ethical Hacking Workshop',
				'website': 'Ethical-Hacking-Workshop',
				'amount': '900',
				'mobile': mobileSave,
				'email': emailSave,
				'date': '30 - 31 March',
			}
			
			message = get_template('payment/email_template.html').render(ctx)
			msg = EmailMessage(subject, message, from_email, to_email)
			msg.content_subtype = 'html'
			msg.send()
			messages.success(request, "Successfully registered, please check your mail")
	else:
		form = EthicalHackingWorkshopForm()

	return render(request, 'sub_events/event_page.html', context)

def tallbuildingdesignanalysisworkshop(request):
	coordinators = Coordinators.objects.filter(event='Tall Building Design Analysis Workshop')
	volunteers = Volunteers.objects.filter(event='Tall Building Design Analysis Workshop')
	event = Event.objects.filter(event_name='Tall Building Design Analysis Workshop')

	form = TallBuildingDesignAnalysisWorkshopForm()
	context = {
		'form': form,
		'coordinator': coordinators,
		'volunteers': volunteers,
		'event_name': 'Tall Building Design Analysis Workshop',
		'event_date': '26<sup>th</sup> - 27<sup>th</sup>',
		'event': event,
		'category': 'Workshop',
		'event_location': 'tall',
	}

	if request.method=="POST":
		form = TallBuildingDesignAnalysisWorkshopForm(request.POST or None)
		if form.is_valid():
			emailSave = form.cleaned_data['contactEmail']
			nameSave = form.cleaned_data['playerName']
			mobileSave = form.cleaned_data['contactNumber']
			form.save()
			email = emailSave
			subject = "Successful Form Submission for HashTech '19"
			EMAIL_HOST_USER = 'hashtech@adypu.edu.in'
			from_email = EMAIL_HOST_USER
			to_email = [emailSave, settings.EMAIL_HOST_USER]

			ctx = {
				'name': nameSave,
				'event': 'Tall Building Design Analysis Workshop',
				'website': 'Tall-Building-Design-Analysis-Workshop',
				'amount': '800',
				'mobile': mobileSave,
				'email': emailSave,
				'date': '26 - 27 March',
			}

			message = get_template('payment/email_template.html').render(ctx)
			msg = EmailMessage(subject, message, from_email, to_email)
			msg.content_subtype = 'html'
			msg.send()
			messages.success(request, "Successfully registered, please check your mail")
	else:
		form = TallBuildingDesignAnalysisWorkshopForm()

	return render(request, 'sub_events/event_page.html', context)

def intothenextdimension(request):
	coordinators = Coordinators.objects.filter(event='Into The Next Dimension').order_by('firstName')
	volunteers = Volunteers.objects.filter(event='Into The Next Dimension')
	event = Event.objects.filter(event_name='Into The Next Dimension')
	
	form = IntoTheNextDimensionForm()
	context = {
		'form': form,
		'coordinator': coordinators,
		'volunteers': volunteers,
		'event_name': 'Into The Next Dimension',
		'event_date': '26<sup>th</sup> - 29<sup>th</sup>',
		'event': event,
		'category': 'Fun Event',
		'event_location': '09vr',
	}

	if request.method=="POST":
		form = IntoTheNextDimensionForm(request.POST or None)
		if form.is_valid():
			emailSave = form.cleaned_data['contactEmail']
			nameSave = form.cleaned_data['playerName']
			mobileSave = form.cleaned_data['contactNumber']
			form.save()
			email = emailSave
			subject = "Successful Form Submission for HashTech '19"
			EMAIL_HOST_USER = 'hashtech@adypu.edu.in'
			from_email = EMAIL_HOST_USER
			to_email = [emailSave, settings.EMAIL_HOST_USER]

			ctx = {
				'name': nameSave,
				'event': 'Into The Next Dimension',
				'website': 'Into-The-Next-Dimension',
				'amount': '100',
				'mobile': mobileSave,
				'email': emailSave,
				'date': '26 - 29 March',
			}

			message = get_template('payment/email_template.html').render(ctx)
			msg = EmailMessage(subject, message, from_email, to_email)
			msg.content_subtype = 'html'
			msg.send()
			messages.success(request, "Successfully registered, please check your mail")
	else:
		form = IntoTheNextDimensionForm()

	return render(request, 'sub_events/event_page.html', context)

def pcbdesignworkshop(request):
	coordinators = Coordinators.objects.filter(event='PCB Design Workshop')
	volunteers = Volunteers.objects.filter(event='PCB Design Workshop')
	event = Event.objects.filter(event_name='PCB Design Workshop')

	form = PcbDesignWorkshopForm()
	context = {
		'form': form,
		'coordinator': coordinators,
		'volunteers': volunteers,
		'event_name': 'PCB Design Workshop',
		'event_date': '26<sup>th</sup> - 27<sup>th</sup>',
		'event': event,
		'category': 'Workshop',
		'event_location': 'pcb',
	}

	if request.method=="POST":
		form = PcbDesignWorkshopForm(request.POST or None)
		if form.is_valid():
			emailSave = form.cleaned_data['contactEmail']
			nameSave = form.cleaned_data['playerName']
			mobileSave = form.cleaned_data['contactNumber']
			form.save()
			email = emailSave
			subject = "Successful Form Submission for HashTech '19"
			EMAIL_HOST_USER = 'hashtech@adypu.edu.in'
			from_email = EMAIL_HOST_USER
			to_email = [emailSave, settings.EMAIL_HOST_USER]
			
			ctx = {
				'name': nameSave,
				'event': 'PCB Design Workshop',
				'website': 'PCB-Design-Workshop',
				'amount': '900',
				'mobile': mobileSave,
				'email': emailSave,
				'date': '26 - 27 March',
			}

			message = get_template('payment/email_template.html').render(ctx)
			msg = EmailMessage(subject, message, from_email, to_email)
			msg.content_subtype = 'html'
			msg.send()
			messages.success(request, "Successfully registered, please check your mail")
	else:
		form = PcbDesignWorkshopForm()

	return render(request, 'sub_events/event_page.html', context)

def machinelearningworkshop(request):
	coordinators = Coordinators.objects.filter(event='Machine Learning Workshop')
	volunteers = Volunteers.objects.filter(event='Machine Learning Workshop')
	event = Event.objects.filter(event_name='Python & Machine Learning Workshop')
	
	form = MachineLearningWorkshopForm()
	context = {
		'form': form,
		'coordinator': coordinators,
		'volunteers': volunteers,
		'event_name': 'Python & Machine Learning Workshop',
		'event_date': '26<sup>th</sup> - 27<sup>th</sup>',
		'event': event,
		'category': 'Workshop',
		'event_location': '12ML',
	}

	if request.method=="POST":
		form = MachineLearningWorkshopForm(request.POST or None)
		if form.is_valid():
			emailSave = form.cleaned_data['contactEmail']
			nameSave = form.cleaned_data['playerName']
			mobileSave = form.cleaned_data['contactNumber']
			form.save()
			email = emailSave
			subject = "Successful Form Submission for HashTech '19"
			EMAIL_HOST_USER = 'hashtech@adypu.edu.in'
			from_email = EMAIL_HOST_USER
			to_email = [emailSave, settings.EMAIL_HOST_USER]
			
			ctx = {
				'name': nameSave,
				'event': 'Machine Learning Workshop',
				'website': 'Machine-Learning-Workshop',
				'amount': '800',
				'mobile': mobileSave,
				'email': emailSave,
				'date': '26 - 27 March',
			}

			message = get_template('payment/email_template.html').render(ctx)
			msg = EmailMessage(subject, message, from_email, to_email)
			msg.content_subtype = 'html'
			msg.send()
			messages.success(request, "Successfully registered, please check your mail")
	else:
		form = MachineLearningWorkshopForm()

	return render(request, 'sub_events/machineLearningWorkshop.html', context)

def theexcelsiorsquest(request):
	coordinators = Coordinators.objects.filter(event='The Excelsiors Quest')
	volunteers = Volunteers.objects.filter(event='The Excelsiors Quest')
	event = Event.objects.filter(event_name='The Excelsiors Quest')
	
	form = TheExcelsiorsQuestForm()
	context = {
		'form': form,
		'coordinator': coordinators,
		'volunteers': volunteers,    
		'event_name': 'The Excelsiors Quest',
		'event_date': '28<sup>th</sup> - 29<sup>th</sup>',
		'event': event,
		'category': 'Fun Event',
		'event_location': '07quest',
	}
	
	if request.method=="POST":
		form = TheExcelsiorsQuestForm(request.POST or None)
		if form.is_valid():
			nameSave = form.cleaned_data['playerName']
			mobileSave = form.cleaned_data['contactNumber']
			emailSave = form.cleaned_data['contactEmail']
			form.save()
			email = emailSave
			subject = "Successful Form Submission for HashTech '19"
			EMAIL_HOST_USER = 'hashtech@adypu.edu.in'
			from_email = EMAIL_HOST_USER
			to_email = [emailSave, settings.EMAIL_HOST_USER]
			
			ctx = {
				'name': nameSave,
				'event': 'The Excelsiors Quest',
				'website': 'The-Excelsiors;Quest',
				'amount': '50',
				'mobile': mobileSave,
				'email': emailSave,
				'date': '28 - 29 March',
			}

			message = get_template('payment/email_template.html').render(ctx)
			msg = EmailMessage(subject, message, from_email, to_email)
			msg.content_subtype = 'html'
			msg.send()
			messages.success(request, "Successfully registered, please check your mail")
	else:
		form = TheExcelsiorsQuestForm()

	return render(request, 'sub_events/event_page.html', context)

def pitchitup(request):
	coordinators = Coordinators.objects.filter(event='Pitch-It-Up')
	volunteers = Volunteers.objects.filter(event='Pitch-It-Up')
	event = Event.objects.filter(event_name='Pitch-It-Up')
	
	form = PitchItUpForm()
	context = {
		'form': form,
		'coordinator': coordinators,
		'volunteers': volunteers,
		'event_name': 'Pitch-It-Up',
		'event_date': '29<sup>th</sup>',
		'event': event,
		'category': 'Competitions',
		'event_location': '05business',
	}
	
	if request.method=="POST":
		form = PitchItUpForm(request.POST or None)
		if form.is_valid():
			nameSave = form.cleaned_data['firstPlayer']
			mobileSave = form.cleaned_data['contactNumber']
			emailSave = form.cleaned_data['contactEmail']
			form.save()
			email = emailSave
			subject = "Successful Form Submission for HashTech '19"
			EMAIL_HOST_USER = 'hashtech@adypu.edu.in'
			from_email = EMAIL_HOST_USER
			to_email = [emailSave, settings.EMAIL_HOST_USER]
			
			ctx = {
				'name': nameSave,
				'event': 'Pitch-It-Up',
				'website': 'Pitch-It-Up',
				'amount': '150',
				'mobile': mobileSave,
				'email': emailSave,
				'date': '29 March',
			}
			
			message = get_template('payment/email_template.html').render(ctx)
			msg = EmailMessage(subject, message, from_email, to_email)
			msg.content_subtype = 'html'
			msg.send()
			messages.success(request, "Successfully registered, please check your mail")
	else:
		form = PitchItUpForm()

	return render(request, 'sub_events/pitchItUp.html', context)

def gokartdesignworkshop(request):
	coordinators = Coordinators.objects.filter(event='Go Kart Design Workshop')
	volunteers = Volunteers.objects.filter(event='Go Kart Design Workshop')
	event = Event.objects.filter(event_name='Go Kart Design Workshop')
	
	form = GoCartForm()
	context = {
		'form': form,
		'coordinator': coordinators,
		'volunteers': volunteers,
		'event_name': 'Go Kart Design Workshop',
		'event_date': '28<sup>th</sup> - 29<sup>th</sup>',
		'event': event,
		'category': 'Workshop',
		'event_location': '',
	}
	
	if request.method=="POST":
		form = GoCartForm(request.POST or None)
		if form.is_valid():
			nameSave = form.cleaned_data['firstPlayer']
			mobileSave = form.cleaned_data['contactNumber']
			emailSave = form.cleaned_data['contactEmail']
			form.save()
			email = emailSave
			subject = "Successful Form Submission for HashTech '19"
			EMAIL_HOST_USER = 'hashtech@adypu.edu.in'
			from_email = EMAIL_HOST_USER
			to_email = [emailSave, settings.EMAIL_HOST_USER]
			
			ctx = {
				'name': nameSave,
				'event': 'Go-Cart Designing Workshop',
				'amount': '150',
				'mobile': mobileSave,
				'email': emailSave,
				'date': '28 - 29 March',
			}
			
			message = get_template('payment/email_template.html').render(ctx)
			msg = EmailMessage(subject, message, from_email, to_email)
			msg.content_subtype = 'html'
			msg.send()
			messages.success(request, "Successfully registered, please check your mail")
	else:
		form = GoCartForm()

	return render(request, 'sub_events/event_page.html', context)

def robosoccer(request):
	coordinators = Coordinators.objects.filter(event='Robo Soccer')
	volunteers = Volunteers.objects.filter(event='Robo Soccer')
	event = Event.objects.filter(event_name='Robo Soccer')
	
	form = RoboSoccerForm()
	context = {
		'form': form,
		'coordinator': coordinators,
		'volunteers': volunteers,
		'event_name': 'Robo-Soccer',
		'event_date': '28<sup>th</sup> - 29<sup>th</sup>',
		'event': event,
		'category': 'Competition',
		'event_location': '01soccer',
	}

	if request.method=="POST":
		form = RoboSoccerForm(request.POST or None)
		if form.is_valid():
			nameSave = form.cleaned_data['firstPlayer']
			mobileSave = form.cleaned_data['contactNumber']
			emailSave = form.cleaned_data['contactEmail']
			form.save()
			email = emailSave
			subject = "Successful Form Submission for HashTech '19"
			EMAIL_HOST_USER = 'hashtech@adypu.edu.in'
			from_email = EMAIL_HOST_USER
			to_email = [emailSave, settings.EMAIL_HOST_USER]
			
			ctx = {
				'name': nameSave,
				'event': 'Robo-Soccer',
				'website': 'Robo-Soccer',
				'amount': '200',
				'mobile': mobileSave,
				'email': emailSave,
				'date': '28 - 29 March',
			}

			message = get_template('payment/email_template.html').render(ctx)
			msg = EmailMessage(subject, message, from_email, to_email)
			msg.content_subtype = 'html'
			msg.send()
			messages.success(request, "Successfully registered, please check your mail")
	else:
		form = RoboSoccerForm()

	return render(request, 'sub_events/roboSoccer.html', context)

def roborace(request):
	coordinators = Coordinators.objects.filter(event='Robo Race')
	volunteers = Volunteers.objects.filter(event='Robo Race')
	event = Event.objects.filter(event_name='Robo Race')
	
	form = RoboRaceForm()
	context = {
		'form': form,
		'coordinator': coordinators,
		'volunteers': volunteers,
		'event_name': 'Robo Race',
		'event_date': '28<sup>th</sup> - 29<sup>th</sup>',
		'event': event,
		'category': 'Competition',
		'event_location': '03roborace',
	}

	if request.method=="POST":
		form = RoboRaceForm(request.POST or None)
		if form.is_valid():
			nameSave = form.cleaned_data['firstPlayer']
			mobileSave = form.cleaned_data['contactNumber']
			emailSave = form.cleaned_data['contactEmail']
			form.save()
			email = emailSave
			subject = "Successful Form Submission for HashTech '19"
			EMAIL_HOST_USER = 'hashtech@adypu.edu.in'
			from_email = EMAIL_HOST_USER
			to_email = [emailSave, settings.EMAIL_HOST_USER]
			
			ctx = {
				'name': nameSave,
				'event': 'Robo Race',
				'website': 'Robo-Race',
				'amount': '200',
				'mobile': mobileSave,
				'email': emailSave,
				'date': '28 - 29 March', 
			}
			
			message = get_template('payment/email_template.html').render(ctx)
			msg = EmailMessage(subject, message, from_email, to_email)
			msg.content_subtype = 'html'
			msg.send()
			messages.success(request, "Successfully registered, please check your mail")
	else:
		form = RoboRaceForm()

	return render(request, 'sub_events/roboRace.html', context)

def fastestlinefollowerchallenge(request):
	coordinators = Coordinators.objects.filter(event='Fastest Line Follower Challenge')
	volunteers = Volunteers.objects.filter(event='Fastest Line Follower Challenge')
	event = Event.objects.filter(event_name='Fastest Line Follower Challenge')
	
	form = FastestLineFollowerChallengeForm()
	context = {
		'form': form,
		'coordinator': coordinators,
		'volunteers': volunteers,
		'event_name': 'Fastest Line Follower Challenge',
		'event_date': '28<sup>th</sup> - 29<sup>th</sup>',
		'event': event,
		'category': 'Competition',
		'event_location': '02line',
	}

	if request.method=="POST":
		form = FastestLineFollowerChallengeForm(request.POST or None)
		if form.is_valid():
			nameSave = form.cleaned_data['firstPlayer']
			mobileSave = form.cleaned_data['contactNumber']
			emailSave = form.cleaned_data['contactEmail']
			form.save()
			email = emailSave
			subject = "Successful Form Submission for HashTech '19"
			EMAIL_HOST_USER = 'hashtech@adypu.edu.in'
			from_email = EMAIL_HOST_USER
			to_email = [emailSave, settings.EMAIL_HOST_USER]
			
			ctx = {
				'name': nameSave,
				'event': 'Fastest Line Follower Challenge',
				'website': 'Fastest-Line-Follower-Challenge',
				'amount': '200',
				'mobile': mobileSave,
				'email': emailSave,
				'date': '28 - 29 March',
			}
			
			message = get_template('payment/email_template.html').render(ctx)
			msg = EmailMessage(subject, message, from_email, to_email)
			msg.content_subtype = 'html'
			msg.send()
			messages.success(request, "Successfully registered, please check your mail")
	else:
		form = FastestLineFollowerChallengeForm()

	return render(request, 'sub_events/fastestLineFollowerChallenge.html', context)

def pradyogeeky(request):
	coordinators = Coordinators.objects.filter(event='Pradyo-Geeky')
	volunteers = Volunteers.objects.filter(event='Pradyo-Geeky')
	event = Event.objects.filter(event_name='Pradyo-Geeky')
	
	form = PradyoGeekyForm()
	context = {
		'form': form,
		'coordinator': coordinators,
		'volunteers': volunteers,
		'event_name': 'Pradyo-Geeky',
		'event_date': '28<sup>th</sup>',
		'event': event,
		'category': 'Competition',
		'event_location': '06project',
	}

	if request.method=="POST":
		form = PradyoGeekyForm(request.POST or None)
		if form.is_valid():
			nameSave = form.cleaned_data['firstPlayer']
			mobileSave = form.cleaned_data['contactNumber']
			emailSave = form.cleaned_data['contactEmail']
			form.save()
			email = emailSave
			subject = "Successful Form Submission for HashTech '19"
			EMAIL_HOST_USER = 'hashtech@adypu.edu.in'
			from_email = EMAIL_HOST_USER
			to_email = [emailSave, settings.EMAIL_HOST_USER]
			
			ctx = {
				'name': nameSave,
				'event': 'Pradyo-Geeky',
				'website': 'Pradyo-Geeky',
				'amount': '200',
				'mobile': mobileSave,
				'email': emailSave,
				'date': '28 March',
			}
			            
			message = get_template('payment/email_template.html').render(ctx)
			msg = EmailMessage(subject, message, from_email, to_email)
			msg.content_subtype = 'html'
			msg.send()
			messages.success(request, "Successfully registered, please check your mail")
	else:
		form = PradyoGeekyForm()

	return render(request, 'sub_events/pradyoGeeky.html', context)

def pubgmobile(request):
	coordinators = Coordinators.objects.filter(event='Gaming')
	volunteers = Volunteers.objects.filter(event='Gaming')
	event = Event.objects.filter(event_name='Gaming')
	
	form = PubgMobileForm()
	context = {
		'form': form,
		'coordinator': coordinators,
		'volunteers': volunteers,
		'event_name': 'PUBG Mobile',
		'event_date': '26<sup>th</sup> - 29<sup>th</sup>',
		'event': event,
		'category': 'Gaming',
		'event_location': '13pubg',
	}

	if request.method=="POST":
		form = PubgMobileForm(request.POST or None)
		if form.is_valid():
			emailSave = form.cleaned_data['contactEmail']
			nameSave = form.cleaned_data['firstPlayer']
			mobileSave = form.cleaned_data['contactNumber']
			form.save()
			email = emailSave
			subject = "Successful Form Submission for HashTech '19"
			EMAIL_HOST_USER = 'hashtech@adypu.edu.in'
			from_email = EMAIL_HOST_USER
			to_email = [emailSave, settings.EMAIL_HOST_USER]
			
			ctx = {
				'name': nameSave,
				'event': 'PUBG Mobile',
				'website': 'PUBG-Mobile',
				'amount': '300',
				'mobile': mobileSave,
				'email': emailSave,
				'date': '26 - 29 March',
			}

			message = get_template('payment/email_template.html').render(ctx)
			msg = EmailMessage(subject, message, from_email, to_email)
			msg.content_subtype = 'html'
			msg.send()
			messages.success(request, "Successfully registered, please check your mail")
	else:
		form = PubgMobileForm()

	return render(request, 'sub_events/event_page.html', context)

def csgo(request):
	coordinators = Coordinators.objects.filter(event='Gaming')
	volunteers = Volunteers.objects.filter(event='Gaming')
	event = Event.objects.filter(event_name='Gaming')

	form = CsGoForm()
	context = {
		'form': form,
		'coordinator': coordinators,
		'volunteers': volunteers,
		'event_name': 'CS Go',
		'event_date': '26<sup>th</sup> - 29<sup>th</sup>',
		'event': event,
		'category': 'Gaming',
		'event_location': '14csgo',
	}

	if request.method=="POST":
		form = CsGoForm(request.POST or None)
		if form.is_valid():
			emailSave = form.cleaned_data['contactEmail']
			nameSave = form.cleaned_data['firstPlayer']
			mobileSave = form.cleaned_data['contactNumber']
			form.save()
			email = emailSave
			subject = "Successful Form Submission for HashTech '19"
			EMAIL_HOST_USER = 'hashtech@adypu.edu.in'
			from_email = EMAIL_HOST_USER
			to_email = [emailSave, settings.EMAIL_HOST_USER]
		
			ctx = {
				'name': nameSave,
				'event': 'Counter Strike: Global Offensive',
				'website': 'CS-Go',
				'amount': '250',
				'mobile': mobileSave,
				'email': emailSave,
				'date': '26 - 29 March',
			}

			message = get_template('payment/email_template.html').render(ctx)
			msg = EmailMessage(subject, message, from_email, to_email)
			msg.content_subtype = 'html'
			msg.send()
		messages.success(request, "Successfully registered, please check your mail")
	else:
		form = CsGoForm()

	return render(request, 'sub_events/event_page.html', context)

from django.http import HttpResponse

def paintball(request):
	coordinators = Coordinators.objects.filter(event='Paintball')
	volunteers = Volunteers.objects.filter(event='Paintball')
	event = Event.objects.filter(event_name='Paintball')

	form = PaintballForm()
	context = {
		'form': form,
		'coordinator': coordinators,
		'volunteers': volunteers,
		'event_name': 'Paintball',
		'event_date': '28<sup>th</sup> - 29<sup>th</sup>',
		'event': event,
		'category': 'Gaming',
		'event_location': '08paintball',
	}
	
	if request.method=="POST":
		form = PaintballForm(request.POST or None)
		#msg = 'Errors: %s' % form.errors.as_text()
		#return HttpResponse(msg, status=400)
		if form.is_valid():
			emailSave = form.cleaned_data['contactEmail']
			nameSave = form.cleaned_data['firstPlayer']
			mobileSave = form.cleaned_data['contactNumber']
			ball30Save = form.cleaned_data['ball30'] * 200
			ball60Save = form.cleaned_data['ball60'] * 350
			#messages.success(request, "Step 1")
			total = ball30Save + ball60Save
			nameSave = form.cleaned_data['firstPlayer']
			form.save()
			email = emailSave
			subject = "Successful Form Submission for HashTech '19"
			EMAIL_HOST_USER = 'hashtech@adypu.edu.in'
			from_email = EMAIL_HOST_USER
			to_email = [emailSave, settings.EMAIL_HOST_USER]
			
			ctx = {
				'name': nameSave,
				'event': 'Paintball',
				'website': 'Paintball',
				'amount': str(total),
				'mobile': mobileSave,
				'email': emailSave,
				'date': '28 - 29 March',
			}

			message = get_template('payment/email_template.html').render(ctx)
			msg = EmailMessage(subject, message, from_email, to_email)
			msg.content_subtype = 'html'
			msg.send()
			messages.success(request, "Successfully registered, please check your mail")
	else:
		form = PaintballForm()

	return render(request, 'sub_events/event_page.html', context)

def qrCode(request):
	return render(request, 'payment/qrcode.html', {})

def sampleQuestion(request):
	return render(request, 'sample_question.html', {})
