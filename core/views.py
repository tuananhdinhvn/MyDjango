from django.db import models
from django.shortcuts import redirect, render, get_object_or_404
from .models import *
from django.utils import timezone
from django.views.generic import View
from django.views.generic import ListView, DetailView

import requests

# Create your views here.
def item_list():
    items = Item.objects.all()

    context = {
        'items': items
    }
    return render(request, 'item_list.html', context)



# def core_view_index(request):
#     items = Item.objects.all()

#     context = {
#         'items': items
#     }
#     return render(request, 'core/core_index.html', context)

class CollectionView(ListView):
    model = Item
    template_name = 'core/core_index.html'


def core_detail(request, slug):
    item = Item.objects.get(slug=slug)

    context = {
        'item': item
    }
    return render(request, 'core/core_detail.html', context)



class ItemDetailView(DetailView):
    model = Item
    template_name = "core/core_detail.html"

 
def add_to_cart(request, slug):
    item        = get_object_or_404(Item, slug=slug)
    order_item  = OrderItem.objects.create(item)
    order_qs    = Order.objects.filter(user=request.user, ordered=False)

    if order_qs.exists():
        order   = order_qs[0]
        # check if the order item is in the order
        if order.items.filter(item__slug=item.slug).exists():
            order_item.quantity += 1
            order_item.save()
        else:
            order.item.add(order_item)
    else:
        ordered_date = timezone.now()
        order = Order.objects.create(user=request.user)
        order.items.add(order_item)

    return redirect("core:core_detail", slug=slug)



