from .models import PersonDetails
from django.shortcuts import render
from django.contrib import messages


def register(request):
    return render(request,'register.html')
    
     