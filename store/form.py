from django import forms
from django.db import models
from django.forms import ModelForm, fields
from .models import Product

class ProductForm(ModelForm):
    class Meta:
        model = Product
        fields = '__all__'
