from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login
from .forms import UserForm
from .forms import LoginForm
from myapp.models.user import User
from requests import post


# Create your views here.
def get_authenticated_id(request):
    try:
        user_id = request.session.get('user_id')
        return user_id
    except KeyError:
        return None


def landing(request):
    if request.user.is_authenticated:
        print("Authentication working")
    user_name = None
    user_id = get_authenticated_id(request)

    if user_id:
        user_name = User.objects.get(pk=user_id)

    return render(request, 'landing.html', {'user': user_name})


def login(request):
    if 'user_id' in request.session.keys():
        return redirect('landing')
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
    if 'user_id' in request.session.keys():
        return redirect('landing')
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
    user_name = None
    user_id = get_authenticated_id(request)

    if user_id:
        user_name = User.objects.get(pk=user_id)

    return render(request, 'snake.html', {'user': user_name})


def root(request):
    return redirect('landing')


def topic(request):
    user_name = None
    user_id = get_authenticated_id(request)

    if user_id:
        user_name = User.objects.get(pk=user_id)

    return render(request, 'topic.html', {'user': user_name})

