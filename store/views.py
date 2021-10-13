from django.shortcuts import redirect, render
from .models import *
from django.views.generic import View
from .form import ProductForm

from django.http import JsonResponse
from django.forms.models import model_to_dict


def storeindex_view(request):
    products = Product.objects.all()
    context = {'products': products}
    return render(request, 'store/store_index.html', context)

def storecart_view(request):
    context = {}
    return render(request, 'store/store_cart.html', context)

def storecheckout_view(request):
    context = {}
    return render(request, 'store/store_checkout.html', context)

def storepayment_view(request):
    context = {}
    return render(request, 'store/store_payment.html', context)

def createProductform_view(request):
    productForm = ProductForm()
    if request.method == 'POST':
        productForm = ProductForm(request.POST)
        if productForm.is_valid():
            productForm.save()
            return redirect('store_index')

    context = {'productForm': productForm}
    return render(request, 'store/store_form.html', context)

def updateProductform_view(request, pk):
    productID = Product.objects.get(id=pk)
    productForm = ProductForm(instance=productID)

    if request.method == 'POST':
        productForm = ProductForm(request.POST, instance=productID)
        if productForm.is_valid():
            productForm.save()
            return redirect('store_index')

    context = {'productForm': productForm}
    return render(request, 'store/store_form.html', context)

def deleteProductform_view(request, pk):
    productID = Product.objects.get(id=pk)

    productID.delete()
    return redirect('store_index')


class storeajax_view(View):
    def get(self, request):
        form = ProductForm()
        products = Product.objects.all()
        context = {'form': form, 'products': products}

        return render(request, 'store/store_ajax.html', context)

    def post(self, request):
        form = ProductForm(request.POST)

        if form.is_valid():
            new_product = form.save()
            return JsonResponse({'product': model_to_dict(new_product)}, status=200)
        else:
            return redirect('store_ajax')


    

    