from django.conf.urls import include, url
from . import views

urlpatterns = [
	url('Venture-Com/', views.student_coordinators, name='student_coordinator'),
	url('Sponsors/', views.sponsors, name='Sponsors'),
]

