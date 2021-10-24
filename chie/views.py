from django.db import models
from django.shortcuts import redirect, render, get_object_or_404
from .models import *
from django.utils import timezone
from django.views.generic import View
from django.views.generic import ListView, DetailView
import requests



def chie_index(request):
    context = {
        
    }
    return render(request, 'chie/index.html', context)

    
def chie_about(request):
    context = {
        
    }
    return render(request, 'chie/about.html', context)

    
def chie_team(request):
    context = {
        
    }
    return render(request, 'chie/team.html', context)


        
def chie_blog(request):
    context = {
        
    }
    return render(request, 'chie/blog.html', context)

    
def chie_blog_detail(request):
    context = {
        
    }
    return render(request, 'chie/blog_detail.html', context)

    
        
def chie_shop(request):
    context = {
        
    }
    return render(request, 'chie/shop.html', context)


          
def chie_shop_detail(request):
    context = {
        
    }
    return render(request, 'chie/shop_detail.html', context)



     
def chie_contact(request):
    context = {
        
    }
    return render(request, 'chie/contact.html', context)

    
def chie_cart(request):
    context = {
        
    }
    return render(request, 'chie/cart.html', context)

    
def chie_checkout(request):
    context = {
        
    }
    return render(request, 'chie/checkout.html', context)
