from django.contrib import admin
from django.urls import path
from django.urls.conf import include

from django.conf.urls.static import static
from django.conf import settings

urlpatterns = [
    path('admin/', admin.site.urls),
    
    path('', include('polls.urls'), name='home'),

    path('tinymce/', include('tinymce.urls')),

    path('accounts/', include('allauth.urls')),

    path('store/', include('store.urls')),

    path('core/', include('core.urls', namespace='core')),

    # path('login/', views),


    path('chie/', include('chie.urls', namespace='chie')),
]


urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)