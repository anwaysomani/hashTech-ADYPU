from django import forms
from .models import *
from bootstrap_modal_forms.mixins import PopRequestMixin, CreateUpdateAjaxMixin

# Event Desk:
# -----------
#

# HackathonModel
class HackathonForm(forms.ModelForm):
	class Meta:
		model  = HackathonModel
		fields = ['playerName', 'challenge', 'contactEmail', 'contactNumber', 'institute', 'city', 'state']
		labels = {
			'playerName': "Participant's Name",
			'challenge': "Select Playground to Battle",
			'contactEmail': "Participant's Email Address",
			'contactNumber': "Participant's Mobile Number",
			'institute': "Which college you belong to?",
			'city': "Which city you reside in?",
			'state': "Which state your city resides in?",
		}

# NfsMostWantedModel
class NfsMostWantedForm(forms.ModelForm):
	class Meta:
		model  = NfsMostWantedModel
		fields = ['playerName', 'contactEmail', 'contactNumber', 'institute', 'city', 'state']
		labels = {
			'playerName': "Participant's Name",
			'contactEmail': "Participant's Email Address",
			'contactNumber': "Participant's Mobile Number",
			'institute': "Which college you belong to?",
			'city': "Which city you reside in?",
			'state': "Which state your city resides in?",
		}

# Fifa19Model
class Fifa19Form(forms.ModelForm):
	class Meta:
		model  = Fifa19Model
		fields = ['playerName', 'contactEmail', 'contactNumber', 'institute', 'city', 'state']
		labels = {
			'playerName': "Participant's Name",
			'contactEmail': "Participant's Email Address",
			'contactNumber': "Participant's Mobile Number",
			'institute': "Which college you belong to?",
			'city': "Which city you reside in?",
			'state': "Which state your city resides in?",
		}

# DroneBuildingWorkshop
class DroneBuildingWorkshopForm(forms.ModelForm):
	class Meta:
		model  = DroneBuildingWorkshopModel
		fields = ['playerName', 'contactEmail', 'contactNumber', 'institute', 'city', 'state']
		labels = {
			'playerName': "Participant's Name",
			'contactEmail': "Participant's Email Address",
			'contactNumber': "Participant's Mobile Number",
			'institute': "Which college you belong to?",
			'city': "Which city you reside in?",
			'state': "Which state your city resides in?",
		}

# DJNight
class DjNightForm(forms.ModelForm):
	class Meta:
		model = DjNightModel
		fields = ['playerName', 'contactEmail', 'contactNumber', 'institute', 'city', 'state']
		labels = {
			'playerName': "Attendee Name",
			'contactEmail': "Attendee's Email Address",
			'contactNumber': "Attendee's Mobile Number",
			'institute': "Which college you belong to?",
			'city': "Which city you reside in?",
			'state': "Which state your city resides in?",
		}

# My Pageantry
class MyPageantryForm(forms.ModelForm):
	class Meta:
		model = MyPageantryModel
		fields = ['playerName', 'contactEmail', 'contactNumber', 'institute', 'city', 'state']
		labels = {
			'playerName': "Participant's Name",
			'contactEmail': "Participant's Email Address",
			'contactNumber': "Participant's Mobile Number",
			'institute': "Which college you belong to?",
			'city': "Which city you reside in?",
			'state': "Which state your city resides in?",
		}

# E-Vehicle Design Workshop
class EVehicleDesignWorkshopForm(forms.ModelForm):
	class Meta:
		model = EVehicleDesignWorkshopModel
		fields = ['playerName', 'contactEmail', 'contactNumber', 'institute', 'city', 'state']
		labels = {
			'playerName': "Participant's Name",
			'contactEmail': "Participant's Email Address",
			'contactNumber': "Paticipant's Mobile Number",
			'institute': "Which college you belong to?",
			'city': "Which city you reside in?",
			'state': "Which state your city resides in?",
		}

# EthicalHackingWorkshop
class EthicalHackingWorkshopForm(forms.ModelForm):
	class Meta:
		model  = EthicalHackingWorkshopModel
		fields = ['playerName', 'contactEmail', 'contactNumber', 'institute', 'city', 'state']
		labels = {
			'playerName': "Participant's Name",
			'contactEmail': "Participant's Email Address",
			'contactNumber': "Participant's Mobile Number",
			'institute': "Which college you belong to?",
			'city': "Which city you reside in?",
			'state': "Which state your city resides in?",
		}

# TallBuildingDesignAnalysisWorkshop
class TallBuildingDesignAnalysisWorkshopForm(forms.ModelForm):
	class Meta:
		model  = TallBuildingDesignAnalysisWorkshopModel
		fields = ['playerName', 'contactEmail', 'contactNumber', 'institute', 'city', 'state']
		labels = {
			'playerName': "Participant's Name",
			'contactEmail': "Participant's Email Address",
			'contactNumber': "Participant's Mobile Number",
			'institute': "Which college you belong to?",
			'city': "Which city you reside in?",
			'state': "Which state your city resides in?",
		}

# IntoTheNextDimensionModel
class IntoTheNextDimensionForm(forms.ModelForm):
	class Meta:
		model  = IntoTheNextDimensionModel
		fields = ['playerName', 'contactEmail', 'contactNumber', 'institute', 'city', 'state']
		labels = {
			'playerName': "Participant's Name",
			'contactEmail': "Participant's Email Address",
			'contactNumber': "Participant's Mobile Number",
			'institute': "Which college you belong to?",
			'city': "Which city you reside in?",
			'state': "Which state your city resides in?",
		}

# PcbDesignWorkshopModel
class PcbDesignWorkshopForm(forms.ModelForm):
	class Meta:
		model  = PcbDesignWorkshopModel
		fields = ['playerName', 'contactEmail', 'contactNumber', 'institute', 'city', 'state']
		labels = {
			'playerName': "Participant's Name",
			'contactEmail': "Participant's Email Address",
			'contactNumber': "Participant's Mobile Number",
			'institute': "Which college you belong to?",
			'city': "Which city you reside in?",
			'state': "Which state your city resides in?",
		}

# MachineLearningWorkshopModel
class MachineLearningWorkshopForm(forms.ModelForm):
	class Meta:
		model  = MachineLearningWorkshopModel
		fields = ['playerName', 'contactEmail', 'contactNumber', 'institute', 'city', 'state']
		labels = {
			'playerName': "Participant's Name",
			'contactEmail': "Participant's Email Address",
			'contactNumber': "Participant's Mobile Number",
			'institute': "Which college you belong to?",
			'city': "Which city you reside in?",
			'state': "Which state your city resides in?",
		}

# TheExcelsiorsQuestModel
class TheExcelsiorsQuestForm(forms.ModelForm):
	class Meta:
		model  = TheExcelsiorsQuestModel
		fields = ['playerName', 'contactEmail', 'contactNumber', 'institute', 'city', 'state']
		labels = {
			'playerName': "Participant's Name",
			'contactEmail': "Participant's Email Address",
			'contactNumber': "Participant's Mobile Number",
			'institute': "Which college you belong to?",
			'city': "Which city you reside in?",
			'state': "Which state your city resides in?",
		}

# PitchItUpModel
class PitchItUpForm(forms.ModelForm):
	class Meta:
		model  = PitchItUpModel
		fields = ['teamName', 'firstPlayer', 'secondPlayer', 'thirdPlayer', 'contactEmail', 'contactNumber', 'institute', 'city', 'state']
		labels = {
			'teamName': "How we should address your team(Team-Name)?",
			'firstPlayer': "First player is...",
			'secondPlayer': "Second player is...",
			'thirdPlayer': "Third player is...",
			'contactEmail': "Leader's Email Address",
			'contactNumber': "Leader's Mobile Number",
			'institute': "Which college you belong to?",
			'city': "Which city you reside in?",
			'state': "Which state your city resides in?",
		}

# GoKartModel
class GoCartForm(forms.ModelForm):
	class Meta:
		model  = GoCartModel
		fields = ['teamName', 'firstPlayer', 'secondPlayer', 'thirdPlayer', 'contactEmail', 'contactNumber', 'institute', 'city', 'state']
		labels = {
			'teamName': "How should we address your team?(Team-Name)",
			'firstPlayer': "First player is...",
			'secondPlayer': "Second player is...",
			'thirdPlayer': "Third player is...",
			'contactEmail': "Leader's Email Address",
			'contactNumber': "Leader's Mobile Number",
			'institute': "Which college you belong to?",
			'city': "Which city you reside in?",
			'state': "Which state your city resides in?",
		}

# RoboSoccerModel
class RoboSoccerForm(forms.ModelForm):
	class Meta:
		model  = RoboSoccerModel
		fields = ['teamName', 'firstPlayer', 'secondPlayer', 'thirdPlayer', 'fourthPlayer', 'contactEmail', 'contactNumber', 'institute', 'city', 'state']
		labels = {
			'teamName': "How should we address your team?(Team-Name)",
			'firstPlayer': "First player is...",
			'secondPlayer': "Second player is...",
			'thirdPlayer': "Third Player is...",
			'fourthPlayer': "Fourth player is...",
			'contactEmail': "Leader's Email Address",
			'contactNumber': "Leader's Mobile Number",
			'institute': "Which college you belong to?",
			'city': "Which city you reside in?",
			'state': "Which state your city resides in?",
		}

# RoboRaceModel
class RoboRaceForm(forms.ModelForm):
	class Meta:
		model  = RoboRaceModel
		fields = ['teamName', 'firstPlayer', 'secondPlayer', 'thirdPlayer', 'fourthPlayer', 'contactEmail', 'fourthPlayer', 'contactNumber', 'institute', 'city', 'state']
		labels = {
			'teamName': "How should we address your team?(Team-Name)",
			'firstPlayer': "First player is...",
			'secondPlayer': "Second player is...",
			'thirdPlayer': "Third player is...",
			'fourthPlayer': "Fourth player is...",
			'contactEmail': "Leader's Email Address",
			'contactNumber': "Leader's Mobile Number",
			'institute': "Which college you belong to?",
			'city': "Which city you reside in?",
			'state': "Which state your city resides in?",
		}

# FastestLineFollowerChallengeModel
class FastestLineFollowerChallengeForm(forms.ModelForm):
	class Meta:
		model  = FastestLineFollowerChallengeModel
		fields = ['teamName', 'firstPlayer', 'secondPlayer', 'thirdPlayer', 'fourthPlayer', 'contactEmail', 'contactNumber', 'institute', 'city', 'state']
		labels = {
			'teamName': "How should we address your team?(Team-Name)",
			'firstPlayer': "First player us...",
			'secondPlayer': "Second player is...",
			'thirdPlayer': "Third player is...",
			'fourthPlayer': "Fourth player is...",
			'contactEmail': "Leader's Email Address",
			'contactNumber': "Leader's Mobile Number",
			'institute': "Which college you belong to?",
			'city': "Which city you reside in?",
			'state': "Which state your city resides in?",
		}

# PradyoGeekyModel
class PradyoGeekyForm(forms.ModelForm):
	class Meta:
		model  = PradyoGeekyModel
		fields = ['teamName', 'firstPlayer', 'secondPlayer', 'thirdPlayer', 'fourthPlayer', 'contactEmail', 'contactNumber', 'institute', 'city', 'state']
		labels = {
			'teamName': "How should we address your team?(Team-Name)",
			'firstPlayer': "First player is...",
			'secondPlayer': "Second player is...",
			'thirdPlayer': "Third player is...",
			'fourthPlayer': "Fourth player is...",
			'contactEmail': "Leader's Email Address",
			'contactNumber': "Leader's Mobile Number",
			'institute': "Which college you belong to?",
			'city': "Which city you reside in?",
			'state': "Which state your city resides in?",
		}

# PubgMobileModel
class PubgMobileForm(forms.ModelForm):
	class Meta:
		model  = PubgMobileModel
		fields = ['teamName', 'firstPlayer', 'secondPlayer', 'thirdPlayer', 'fourthPlayer', 'contactEmail', 'contactNumber', 'institute', 'city', 'state']
		labels = {
			'teamName': "How should we address your team?(Team-Name)",
			'firstPlayer': "Field Name of First Particpant",
			'secondPlayer': "Field Name of Second Participant",
			'thirdPlayer': "Field Name of Third Participant",
			'fourthPlayer': "Field Name of Fourth Paticpant",
			'contactEmail': "Leader's Email Address",
			'contactNumber': "Leader's Mobile Number",
			'institute': "Which college you belong to?",
			'city': "Which city you reside in?",
			'state': "Which state your city resides in?",
		}

# CsGoModel
class CsGoForm(forms.ModelForm):
	class Meta:
		model  = CsGoModel
		fields = ['teamName', 'firstPlayer', 'secondPlayer', 'thirdPlayer', 'fourthPlayer', 'fifthPlayer', 'contactEmail', 'contactNumber', 'institute', 'city', 'state']
		labels = {
			'teamName': "How should we address your team?(Team-Name)",
			'firstPlayer': "First player is...",
			'secondPlayer': "Second player is...",
			'thirdPlayer': "Third player is...",
			'fourthPlayer': "Fourth player is...",
			'fifthPlayer': "Fifth player is...",
			'contactEmail': "Leader's Email Address",
			'contactNumber': "Leader's Mobile Number",
			'institute': "Which college you belong to?",
			'city': "Which city you reside in?",
			'state': "Which state your city resides in?",
		}

# PaintballModel
class PaintballForm(forms.ModelForm):
	class Meta:
		model  = PaintballModel
		fields = ['firstPlayer', 'secondPlayer', 'thirdPlayer', 'fourthPlayer', 'fifthPlayer', 'ball30', 'ball60', 'contactEmail', 'contactNumber', 'institute', 'city', 'state']
		labels = {
			"teamName": "How should we address you team?(Team-Name)",
			"firstPlayer": "First Player is...",
			"secondPlayer": "Second Player is...",
			"thirdPlayer": "Third Player is...",
			"fourthPlayer": "Fourth Player is...",
			"fifthPlayer": "Fifth Player is...",
			"ball30": "Number of 30 Balls set(max-5)",
			"ball60": "Number of 60 Balls set(max-5)",
			"contactEmail": "Leader's Email Address",
			"contactNumber": "Leader's Contact Number",
			"institute": "Which institute you belong to?",
			"city": "Which city are you from?",
			"state": "Which state your city resides in?",
		}


