# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.contrib import admin
from .models import *

class VolunteerAdmin(admin.ModelAdmin):
	list_display = ('name', 'event',)
	search_fields = ('name',)

class TeamAdmin(admin.ModelAdmin):
	list_display = ('teamName', 'firstPlayer', 'contactEmail',)

class CoordinatorAdmin(admin.ModelAdmin):
	list_display = ('name', 'mobile', 'event',)

# Event Display Configs
class HackathonAdmin(admin.ModelAdmin):
	list_display = ('challenge', 'contactEmail')

class MyPageantryAdmin(admin.ModelAdmin):
	list_display = ('playerName', 'contactEmail', 'contactNumber', 'institute', 'city',)

class PaintballAdmin(admin.ModelAdmin):
	list_display = ('firstPlayer', 'contactEmail', 'contactNumber',)

admin.site.register(FastestLineFollowerChallengeModel, TeamAdmin)
admin.site.register(HackathonModel, HackathonAdmin)
admin.site.register(NfsMostWantedModel)
admin.site.register(Fifa19Model)
admin.site.register(DroneBuildingWorkshopModel)
admin.site.register(EthicalHackingWorkshopModel)
admin.site.register(TallBuildingDesignAnalysisWorkshopModel)
admin.site.register(IntoTheNextDimensionModel)
admin.site.register(PcbDesignWorkshopModel)
admin.site.register(MachineLearningWorkshopModel)
admin.site.register(TheExcelsiorsQuestModel)
admin.site.register(MyPageantryModel, MyPageantryAdmin)
admin.site.register(DjNightModel)
admin.site.register(PitchItUpModel, TeamAdmin)
admin.site.register(GoCartModel)
admin.site.register(RoboSoccerModel, TeamAdmin)
admin.site.register(RoboRaceModel, TeamAdmin)
admin.site.register(PradyoGeekyModel, TeamAdmin)
admin.site.register(PubgMobileModel, TeamAdmin)
admin.site.register(CsGoModel, TeamAdmin)
admin.site.register(PaintballModel, PaintballAdmin)

admin.site.register(Coordinators, CoordinatorAdmin)
admin.site.register(Volunteers, VolunteerAdmin)
admin.site.register(Event_Category)
admin.site.register(Event)
