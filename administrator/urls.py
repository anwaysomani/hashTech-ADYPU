from django.conf.urls import include, url
from . import views

urlpatterns = [
	url('Contact-Us/', views.contact_page, name='Contact-Us'),
]
