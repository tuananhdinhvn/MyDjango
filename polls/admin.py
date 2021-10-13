from django.contrib import admin
from .models import pollsappForm

# Register your models here.
class PollsAdmin(admin.ModelAdmin):
    list_display = ('username', 'email')
    search_fields = ('username',)


admin.site.register(pollsappForm, PollsAdmin)
