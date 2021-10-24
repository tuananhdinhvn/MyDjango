from django.db import models
from django.contrib.auth.models import User
from django.forms import widgets

from tinymce import models as tinymce_models

# Create your models here.


class Customer(models.Model):
    user = models.OneToOneField(User, null=True, blank=True, on_delete=models.CASCADE)
    name = models.CharField(max_length=20, null=True)
    email = models.CharField(max_length=20)

    def __str__(self):
            return self.name

class Guest(models.Model):
    name = models.CharField(max_length=20, null=True)
    email = models.CharField(max_length=20)
    info = tinymce_models.HTMLField()

    def __str__(self):
            return self.name
            
    
class Product(models.Model):
    name = models.CharField(max_length=200)
    price = models.FloatField()
    digital = models.BooleanField(default=True, null=True, blank=True)
    image = models.ImageField(null=True, blank=True)

    def __str__(self):
                return self.name

    @property
    def imageURL(self):
        try:
            url = self.image.url
        except:
            url = 'natural.jpg'
        return url


class Order(models.Model):
    customer = models.ForeignKey(Customer, on_delete=models.SET_NULL, null=True, blank=True)
    date_ordered = models.DateTimeField(auto_now_add=True)
    completed = models.BooleanField(default=False)
    transaction_id = models.CharField(max_length=100, null=True)

    def __str__(self):
        return self.id


class OrderItem(models.Model):
    product = models.ForeignKey(Product, on_delete=models.SET_NULL, null=True)
    order = models.ForeignKey(Order, on_delete=models.SET_NULL, null=True)
    quantity = models.IntegerField(default=0, null=True, blank=True)
    date_added = models.DateTimeField(auto_now_add=True)



class ShippingAddress(models.Model):
    customer = models.ForeignKey(Customer, on_delete=models.SET_NULL, null=True)
    order = models.ForeignKey(Order, on_delete=models.SET_NULL, null=True)
    address = models.CharField(max_length=200, null=False)

    def __str__(self):
        return self.address