from django.conf.urls import url

from . import views

urlpatterns = [
	url(r'^$',views.index,name='index'),
	#url(r'^$', views.home, name='home'),
	url(r'^logon/', views.logon, name='logon'),
	url(r'^signout/', views.signout, name='signout'),
	url(r'^register/', views.register, name='register'),
	url(r'^test/', views.test,name='test'),
	url(r'^results/', views.results,name='results'),
	url(r'^explanation/', views.explanation,name='explanation'),
	url(r'^category/', views.category,name='category'),
	url(r'^addfavorite/', views.addfavorite,name='addfavorite'),
	url(r'^getfavorites/', views.getfavorites,name='getfavorites'),
	url(r'^delfavorites/', views.delfavorites,name='delfavorites'),
	url(r'^delcoursefavorites/', views.delcoursefavorites,name='delcoursefavorites'),
]