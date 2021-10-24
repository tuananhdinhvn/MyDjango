from django.urls import path
from . import views
from .views import *

app_name='core'

urlpatterns = [
    # path('', views.index),
    path('', views.item_list, name='core_item_list'),

    # path('index/', views.core_view_index, name='core_view_index'),
    path('index/', CollectionView.as_view(), name='core_view_index'),

    path('detail/<str:slug>/', views.core_detail, name='core_detail'),
    # path('detail/<slug>/', ItemDetailView, name='core_detail'),

    path('add-to-cart/<slug>/', views.add_to_cart, name='core_add_to_cart'),
]
