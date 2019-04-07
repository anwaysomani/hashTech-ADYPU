# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.conf import settings
from django.db import models
from django.core.mail import send_mail
from phonenumber_field.modelfields import PhoneNumberField
from .constants import *

# Solo Events
# -----------

# Hackathon
class HackathonModel(models.Model):
	playerName    = models.CharField(max_length=75)
	contactEmail  = models.EmailField(unique=True, error_messages={'unique':"This email has already been registered."})
	contactNumber = models.CharField(max_length=10, unique=True)
	challenge	  = models.CharField(max_length=50, choices=HACKATHON)
	institute     = models.CharField(max_length=250)
	city 		  = models.CharField(max_length=75) 
	state 		  = models.CharField(max_length=75, choices=STATES)
	verified  	  = models.BooleanField(default=True)

	def __str__(self):
		return self.playerName

	class Meta:
		verbose_name		= 'Hackathon'
		verbose_name_plural	= 'Hackathon'

# NFS Most Wanted
class NfsMostWantedModel(models.Model):
	playerName    = models.CharField(max_length=75)
	contactEmail  = models.EmailField(unique=True)
	contactNumber = models.CharField(max_length=10, unique=True)
	institute     = models.CharField(max_length=250)
	city          = models.CharField(max_length=75)
	state         = models.CharField(max_length=75, choices=STATES)
	verified	  = models.BooleanField(default=False)

	def __str__(self):
		return self.playerName

	class Meta:
		verbose_name		= 'NFS Most Wanted'
		verbose_name_plural = 'NFS Most Wanted'	
	
# FIFA 19
class Fifa19Model(models.Model):
	playerName    = models.CharField(max_length=75)
	contactEmail  = models.EmailField(unique=True)
	contactNumber = models.CharField(max_length=10, unique=True)
	institute     = models.CharField(max_length=250)
	city          = models.CharField(max_length=75)
	state         = models.CharField(max_length=75, choices=STATES)
	verified	  = models.BooleanField(default=False)

	def __str__(self):
  		return self.playerName

	class Meta:
		verbose_name		= "FIFA 19"
		verbose_name_plural	= "FIFA 19"

# Drone Building Workshop
class DroneBuildingWorkshopModel(models.Model):
	playerName    = models.CharField(max_length=75)
	contactEmail  = models.EmailField(unique=True)
	contactNumber = models.CharField(max_length=10, unique=True)
	institute     = models.CharField(max_length=250)
	city          = models.CharField(max_length=75)
	state         = models.CharField(max_length=75, choices=STATES)
	verified      = models.BooleanField(default=False)

	def __str__(self):
		return self.playerName

	class Meta:
		verbose_name		= "Drone Building Workshop"
		verbose_name_plural	= "Drone Building Workshop"

# Ethical Hacking Workshop
class EthicalHackingWorkshopModel(models.Model):
	playerName    = models.CharField(max_length=75)  
	contactEmail  = models.EmailField(unique=True)
	contactNumber = models.CharField(max_length=10, unique=True)
	institute     = models.CharField(max_length=250)
	city          = models.CharField(max_length=75)
	state         = models.CharField(max_length=75, choices=STATES)
	verified      = models.BooleanField(default=False)

	def __str__(self):
		return self.playerName

	class Meta:
		verbose_name		= "Ethical Hacking Workshop"
		verbose_name_plural	= "Ethical Hacking Workshop"

# Tall Building Design Analysis Workshop
class TallBuildingDesignAnalysisWorkshopModel(models.Model):
	playerName    = models.CharField(max_length=75)
	contactEmail  = models.EmailField(unique=True)
	contactNumber = models.CharField(max_length=10, unique=True)
	institute     = models.CharField(max_length=250)
	city          = models.CharField(max_length=75)
	state         = models.CharField(max_length=75, choices=STATES)
	verified      = models.BooleanField(default=False)

	def __str__(self):
		return self.playerName

	class Meta:
		verbose_name		= "Tall Building Design Analysis Workshop"
		verbose_name_plural = "Tall Building Design Analysis Workshop"

# Into The Next Dimension
class IntoTheNextDimensionModel(models.Model):
	playerName    = models.CharField(max_length=75)
	contactEmail  = models.EmailField(unique=True)
	contactNumber = models.CharField(max_length=10, unique=True)
	institute     = models.CharField(max_length=250)
	city          = models.CharField(max_length=75)
	state         = models.CharField(max_length=75, choices=STATES)
	verified      = models.BooleanField(default=False)

	def __str__(self):
		return self.playerName

	class Meta:
		verbose_name		= "Into The Next Dimension"
		verbose_name_plural	= "Into The Next Dimension"

# PCB Design Workshop
class PcbDesignWorkshopModel(models.Model):
	playerName    = models.CharField(max_length=75)
	contactEmail  = models.EmailField(unique=True)
	contactNumber = models.CharField(max_length=10, unique=True)
	institute     = models.CharField(max_length=250)
	city          = models.CharField(max_length=75)
	state         = models.CharField(max_length=75, choices=STATES)
	verified      = models.BooleanField(default=False)

	def __str__(self):
		return self.playerName

	class Meta:
		verbose_name		= "PCB Design Workshop"
		verbose_name_plural	= "PCB Design Workshop"

# Machine Learning Workshop
class MachineLearningWorkshopModel(models.Model):
	playerName    = models.CharField(max_length=75)
	contactEmail  = models.EmailField(unique=True)
	contactNumber = models.CharField(max_length=10, unique=True)
	institute     = models.CharField(max_length=250)
	city          = models.CharField(max_length=75)
	state         = models.CharField(max_length=75, choices=STATES)
	verified      = models.BooleanField(default=False)

	def __str__(self):
		return self.playerName

	class Meta:
		verbose_name		= "Machine Learning Workshop"
		verbose_name_plural = "Machine Learning Workshop"

# The Excelsior's Quest
class TheExcelsiorsQuestModel(models.Model):
	playerName    = models.CharField(max_length=75)
	contactEmail  = models.EmailField(unique=True)
	contactNumber = models.CharField(max_length=10, unique=True)
	institute     = models.CharField(max_length=250)
	city          = models.CharField(max_length=75)
	state         = models.CharField(max_length=75, choices=STATES)
	verified      = models.BooleanField(default=False)

	def __str__(self):
		return self.playerName

	class Meta:
		verbose_name		= "The Excelsior's Quest"
		verbose_name_plural = "The Excelsior's Quest"

# My Pageantry
class MyPageantryModel(models.Model):
	playerName    = models.CharField(max_length=75)
	contactEmail  = models.EmailField(unique=True)
	contactNumber = models.CharField(max_length=10, unique=True)
	institute     = models.CharField(max_length=250)
	city          = models.CharField(max_length=75)
	state         = models.CharField(max_length=75, choices=STATES)
	verified      = models.BooleanField(default=False)

	def __str__(self):
		return self.playerName

	class Meta:
		verbose_name		= "My Pageantry"
		verbose_name_plural = "My Pageantry"

# DJ Night 
class DjNightModel(models.Model):
	playerName    = models.CharField(max_length=75)
	contactEmail  = models.EmailField(unique=True)
	contactNumber = models.CharField(max_length=10, unique=True)
	institute     = models.CharField(max_length=250)
	city          = models.CharField(max_length=75)
	state         = models.CharField(max_length=75, choices=STATES)
	verified      = models.BooleanField(default=False)

	def __str__(self):
		return self.playerName

	class Meta:
		verbose_name		= "DJ Night"
		verbose_name_plural = "DJ Night"

# E-Vehicle Design Workshop
class EVehicleDesignWorkshopModel(models.Model):
	playerName	  = models.CharField(max_length=75)
	contactEmail  = models.EmailField(unique=True)
	contactNumber = models.CharField(max_length=10, unique=True)
	institute	  = models.CharField(max_length=250)
	city		  = models.CharField(max_length=75)
	state		  = models.CharField(max_length=75, choices=STATES)
	verified	  = models.BooleanField(default=False)

	def __str__(self):
		return self.playerName

	class Meta:
		verbose_name		= "E-Vehicle Design Workshop"
		verbose_name_plural = "E-Vehicle Design Workshop"


# ThreeTeam Events
# ----------------

# Pitch-It-Up
class PitchItUpModel(models.Model):
	teamName      = models.CharField(max_length=35)
	firstPlayer   = models.CharField(max_length=75)
	secondPlayer  = models.CharField(max_length=75, blank=True, null=True)
	thirdPlayer   = models.CharField(max_length=75, blank=True, null=True)
	contactEmail  = models.EmailField(unique=True)
	contactNumber = models.CharField(max_length=10, unique=True)
	institute     = models.CharField(max_length=250)
	city          = models.CharField(max_length=75)
	state         = models.CharField(max_length=75, choices=STATES)
	verified      = models.BooleanField(default=False)

	def __str__(self):
		return self.teamName

	class Meta:
		verbose_name		= "Pitch-It-Up"
		verbose_name_plural = "Pitch-It-Up"

# Go-Kart Design Workshop
class GoCartModel(models.Model):
	teamName      = models.CharField(max_length=35)
	firstPlayer   = models.CharField(max_length=75)
	secondPlayer  = models.CharField(max_length=75, blank=True, null=True)
	thirdPlayer   = models.CharField(max_length=75, blank=True, null=True)
	contactEmail  = models.EmailField(unique=True)
	contactNumber = models.CharField(max_length=10, unique=True)
	institute     = models.CharField(max_length=250)
	city          = models.CharField(max_length=75)
	state         = models.CharField(max_length=75, choices=STATES)
	verified      = models.BooleanField(default=False)

	def __str__(self):
		return self.teamName

	class Meta:
		verbose_name		= "Go-Kart Designing"
		verbose_name_plural = "Go-Kart Designing"


# FourTeam Events
# ---------------

# Robo Soccer
class RoboSoccerModel(models.Model):
	teamName      = models.CharField(max_length=35)
	firstPlayer   = models.CharField(max_length=75)
	secondPlayer  = models.CharField(max_length=75, blank=True, null=True)
	thirdPlayer   = models.CharField(max_length=75, blank=True, null=True)
	fourthPlayer  = models.CharField(max_length=75, blank=True, null=True)
	contactEmail  = models.EmailField(unique=True)
	contactNumber = models.CharField(max_length=10, unique=True)
	institute     = models.CharField(max_length=250)
	city          = models.CharField(max_length=75)
	state         = models.CharField(max_length=75, choices=STATES)
	verified      = models.BooleanField(default=False)

	def __str__(self):
		return self.teamName

	class Meta:
		verbose_name		= "Robo Soccer"
		verbose_name_plural = "Robo Soccer"

# Robo Race
class RoboRaceModel(models.Model):
	teamName      = models.CharField(max_length=35)
	firstPlayer   = models.CharField(max_length=75)
	secondPlayer  = models.CharField(max_length=75, blank=True, null=True)
	thirdPlayer   = models.CharField(max_length=75, blank=True, null=True)
	fourthPlayer  = models.CharField(max_length=75, blank=True, null=True)
	contactEmail  = models.EmailField(unique=True)
	contactNumber = models.CharField(max_length=10, unique=True)
	institute     = models.CharField(max_length=250)
	city          = models.CharField(max_length=75)
	state         = models.CharField(max_length=75, choices=STATES)
	verified      = models.BooleanField(default=False)

	def __str__(self):
		return self.teamName
	
	class Meta:
		verbose_name		= "Robo Race"
		verbose_name_plural = "Robo Race"

# Fastest Line Follower Challenge
class FastestLineFollowerChallengeModel(models.Model):
	teamName      = models.CharField(max_length=35)
	firstPlayer   = models.CharField(max_length=75)
	secondPlayer  = models.CharField(max_length=75, blank=True, null=True)
	thirdPlayer   = models.CharField(max_length=75, blank=True, null=True)
	fourthPlayer  = models.CharField(max_length=75, blank=True, null=True)
	contactEmail  = models.EmailField(unique=True)
	contactNumber = models.CharField(max_length=10, unique=True)
	institute     = models.CharField(max_length=250)
	city          = models.CharField(max_length=75)
	state         = models.CharField(max_length=75, choices=STATES)
	verified      = models.BooleanField(default=False)

	def __str__(self):
		return self.teamName
	
	class Meta:
		verbose_name		= "Fastest Line Follower Challenge"
		verbose_name_plural = "Fastest Line Follower Challenge"

# Pradyo-Geeky
class PradyoGeekyModel(models.Model):
	teamName      = models.CharField(max_length=35)
	firstPlayer   = models.CharField(max_length=75)
	secondPlayer  = models.CharField(max_length=75, blank=True, null=True)
	thirdPlayer   = models.CharField(max_length=75, blank=True, null=True)
	fourthPlayer  = models.CharField(max_length=75, blank=True, null=True)
	contactEmail  = models.EmailField(unique=True)
	contactNumber = models.CharField(max_length=10, unique=True)
	institute     = models.CharField(max_length=250)
	city          = models.CharField(max_length=75)
	state         = models.CharField(max_length=75, choices=STATES)
	verified      = models.BooleanField(default=False)

	def __str__(self):
		return self.teamName
	
	class Meta:
		verbose_name		= "Pradyo-Geeky"
		verbose_name_plural = "Pradyo-Geeky"

# PUBG Mobile
class PubgMobileModel(models.Model):
	teamName      = models.CharField(max_length=35)
	firstPlayer   = models.CharField(max_length=75)
	secondPlayer  = models.CharField(max_length=75, blank=True, null=True)
	thirdPlayer   = models.CharField(max_length=75, blank=True, null=True)
	fourthPlayer  = models.CharField(max_length=75, blank=True, null=True)
	contactEmail  = models.EmailField(unique=True)
	contactNumber = models.CharField(max_length=10, unique=True)
	institute     = models.CharField(max_length=250)
	city          = models.CharField(max_length=75)
	state         = models.CharField(max_length=75, choices=STATES)
	verified        = models.BooleanField(default=False)

	def __str__(self):
		return self.teamName

	def __unicode__(self):
		return "%s"
	
	class Meta:
		verbose_name		= "Player's Unknown Battle Ground: Mobile"
		verbose_name_plural = "Player's Unknown Battle Ground: Mobile"

# FiveTeam Events
# ---------------

# Counter Strike: Global Offensive
class CsGoModel(models.Model):
	teamName      = models.CharField(max_length=35)
	firstPlayer   = models.CharField(max_length=75)
	secondPlayer  = models.CharField(max_length=75, blank=True, null=True)
	thirdPlayer   = models.CharField(max_length=75, blank=True, null=True)
	fourthPlayer  = models.CharField(max_length=75, blank=True, null=True)
	fifthPlayer   = models.CharField(max_length=75, blank=True, null=True)
	contactEmail  = models.EmailField(unique=True)
	contactNumber = models.CharField(max_length=10)
	institute     = models.CharField(max_length=250)
	city          = models.CharField(max_length=75)
	state         = models.CharField(max_length=75, choices=STATES)
	verified      = models.BooleanField(default=False)

	def __str__(self):
		return self.teamName

	class Meta:
		verbose_name		= "Counter Strike: Global Offensive"
		verbose_name_plural = "Counter Strike: Global Offensive"

# Paintball
class PaintballModel(models.Model):
	#teamName      		   = models.CharField(max_length=35)
	firstPlayer   		   = models.CharField(max_length=75)
	secondPlayer  		   = models.CharField(max_length=75, blank=True, null=True)
	thirdPlayer   		   = models.CharField(max_length=75, blank=True, null=True)
	fourthPlayer  		   = models.CharField(max_length=75, blank=True, null=True)
	fifthPlayer   		   = models.CharField(max_length=75, blank=True, null=True)
	ball30				   = models.IntegerField(choices=NUM_FIVE, null=True, blank=True)
	ball60				   = models.IntegerField(choices=NUM_FIVE, null=True, blank=True)
	contactEmail  		   = models.EmailField(unique=True)
	contactNumber 		   = models.CharField(max_length=10, unique=True)
	alternateContactNumber = models.CharField(max_length=10, null=True, blank=True)
	institute     		   = models.CharField(max_length=250)
	city          		   = models.CharField(max_length=75)
	state         		   = models.CharField(max_length=75, choices=STATES)
	verified      		   = models.BooleanField(default=False)

	def __str__(self):
		return self.firstPlayer

	class Meta:
		verbose_name		= "Paintball"
		verbose_name_plural	= "Paintball"

# Event Details
class Event_Category(models.Model):
	category = models.CharField(max_length=15)

	def __str__(self):
		return self.category

	class Meta:
		verbose_name		= "Event Category"
		verbose_name_plural	= "Event Categories"

class Event(models.Model):
	event_name = models.CharField(max_length=75)
	event_category = models.ForeignKey(Event_Category)
	description = models.TextField(blank=True, null=True)
	amount = models.IntegerField(blank=True, null=True)
	event_start_date = models.IntegerField(blank=True, null=True)
	event_end_date = models.IntegerField(blank=True, null=True)
	#rule_book = models.FileField(upload_to='rule_book/')

	def __str__(self):
		return self.event_name

	class Meta:
		verbose_name		= "Event"
		verbose_name_plural = "Events"

class Coordinators(models.Model):
	firstName = models.CharField(max_length=15, help_text="For image")
	name = models.CharField(max_length=50)
	email = models.EmailField(help_text="Official mail id")
	mobile = models.CharField(max_length=10)
	event = models.CharField(max_length=40)

	def __str__(self):
		return self.name
	
	class Meta:
		verbose_name		= "Coordinator"
		verbose_name_plural = "Coordinators"
	

class Volunteers(models.Model):
	name = models.CharField(max_length=75)
	mobile = models.CharField(max_length=10, blank=True, null=True)
	event = models.CharField(max_length=40, blank=True, null=True)

	def __str__(self):
		return self.name

	class Meta:
		verbose_name 		= "Volunteer"
		verbose_name_plural = "Volunteers"

