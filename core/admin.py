from django.contrib import admin

# Register your models here.
from .models import Item, OrderItem, Order

class StoreAdmin(admin.ModelAdmin):
    list_display = ('title')

admin.site.register(Item)
admin.site.register(OrderItem)
admin.site.register(Order)