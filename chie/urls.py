from django.urls import path
from . import views
from .views import *

app_name='chie'

urlpatterns = [
    path('', views.chie_index, name='chie_index'),

    path('about/', views.chie_about, name='chie_about'),

    path('team/', views.chie_team, name='chie_team'),

    path('blog/', views.chie_blog, name='chie_blog'),

    path('blog-detail/', views.chie_blog_detail, name='chie_blog_detail'),

    path('shop/', views.chie_shop, name='chie_shop'),

    path('shop-detail/', views.chie_shop_detail, name='chie_shop_detail'),

    path('contact/', views.chie_contact, name='chie_contact'),

    path('cart/', views.chie_cart, name='chie_cart'),

    path('checkout/', views.chie_checkout, name='chie_checkout'),
]
