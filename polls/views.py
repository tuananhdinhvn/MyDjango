from django.shortcuts import render
from django.http import HttpResponse
from polls.models import pollsappForm

# Create your views here.
def index(request):
    # return HttpResponse("Here's the text of the Web page.")
    return render(request, 'polls/home.html')


def polls_view(request):
    object_list = pollsappForm.objects.all()
    return render(request, 'polls/home.html',{
        'object_list': object_list
    })

    
# def login_view(request):
#     return render(request, 'polls/login.html')

def login_view(TemplateView):
    return render(request, 'polls/login.html')