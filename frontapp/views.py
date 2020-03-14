from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login
from .forms import UserForm
from .forms import LoginForm
from myapp.models.user import User
from requests import post, get


def landing(request):
    return render(request, 'landing.html')


def login(request):
    if request.method == 'POST':
        form = LoginForm(request.POST)
        if form.is_valid():
            user_name = form.cleaned_data.get('user_name')
            password = form.cleaned_data.get('password')
            user = authenticate(user_name=user_name, password=password)
            if user is not None:
                login(request, user)
            return redirect('landing')
    else:
        form = LoginForm()
    return render(request, 'login.html', {'form': form})


def register(request):
    if request.method == 'POST':
        form = UserForm(request.POST)
        if form.is_valid():
            post('http://localhost:8000/api/pod_users/',
                 data=form.cleaned_data)
            return redirect('landing')
    else:
        form = UserForm()
    return render(request, 'register.html', {'form': form})


def snake(request):
    return render(request, 'snake.html')


def root(request):
    return redirect('landing')


def topic(request):
    res = get('http://localhost:8000/api/pod_topic')
    topics = {}
    if res.status_code == 200:
        topics = res.json()
    return render(request, 'topic.html', {'topics': topics})


def user_config(request):
    return render(request, 'user_config.html')
