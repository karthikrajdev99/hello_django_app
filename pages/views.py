from django.shortcuts import render
from django.http import HttpResponse
import os

def homePageView(request):
    return HttpResponse("Python Hello on " + os.getenv('HOSTNAME', "unknown") + "\n")
