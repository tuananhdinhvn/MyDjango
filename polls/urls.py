from django.urls import path
from django.urls import include
from . import views
from polls import views

urlpatterns = [
    # path('', views.index),
    path('', views.polls_view, name='polls_index'),

    path('login/', views.login_view, name='custommer_login'),
    
    path('accounts/', include('django.contrib.auth.urls')),
]
