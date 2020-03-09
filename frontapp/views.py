from django.shortcuts import render, redirect
from .forms import UserForm
from .forms import LoginForm
from myapp.models.user import User

# Create your views here.


def home(request):
    return render(request, 'home.html')


def login(request):
    if 'user_id' in request.session:
        return redirect('home')
    if request.method == 'POST':
        form = LoginForm(request.POST)
        if form.is_valid():
            user_name = form.cleaned_data.get('user_name')
            user = User.objects.get(user_name = user_name)
            request.session['user_id'] = user.pk
            return redirect('home')
    else:
        form = LoginForm()
    return render(request, 'login.html', {'form': form})


def register(request):
    if 'user_id' in request.session:
        return redirect('home')
    if request.method == 'POST':
        form = UserForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('home')
    else:
        form = UserForm()

    return render(request, 'register.html', {'form': form})


def snake(request):
    return render(request, 'snake.html')


def root(request):
    return redirect('home')
