from django.shortcuts import render

# Create your views here.


def home(request):
    return render(request, 'frontapp/index.html')


def login(request):
    return render(request, 'frontapp/login.html')


def snake(request):
    return render(request, 'frontapp/snake.html')
