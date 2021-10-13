from django.contrib import admin

# Register your models here.
from .models import *

class StoreAdmin(admin.ModelAdmin):
    list_display = ('user', 'name', 'email')

admin.site.register(Customer)
admin.site.register(Guest)
admin.site.register(Product)
admin.site.register(Order)
admin.site.register(OrderItem)
admin.site.register(ShippingAddress)