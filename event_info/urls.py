from django.conf.urls import include, url
from . import views

urlpatterns = [
    url(r'^$', views.home_page, name='homepage'),
	url(r'calendar', views.calendar_page, name='calendar_page'),

]
