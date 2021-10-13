from django.urls import path
from . import views
from .views import storeajax_view

urlpatterns = [
    # path('', views.index),
    path('', views.storeindex_view, name='store_index'),
    path('cart/', views.storecart_view, name='store_cart'),
    path('checkout/', views.storecheckout_view, name='store_checkout'),
    path('payment/', views.storepayment_view, name='store_payment'),
    
    path('ajax/', storeajax_view.as_view(), name='store_ajax'),

    path('form/', views.createProductform_view, name='store_product_form'),
    path('update/<str:pk>/', views.updateProductform_view, name='update_product_form'),
    path('delete/<str:pk>/', views.deleteProductform_view, name='delete_product_form'),
]
