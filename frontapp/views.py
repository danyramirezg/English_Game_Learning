from django.shortcuts import render, redirect
from .forms import UserForm

# Create your views here.


def home(request):
    return render(request, 'frontapp/index.html')


def login(request):
    return render(request, 'frontapp/login.html')


def register(request):
    if request.method == 'POST':
        form = UserForm(request.POST)

        if form.is_valid():
            form.save()
            return redirect('home')
    else:
        form = UserForm()

    return render(request, 'frontapp/register.html', {'form': form})


def snake(request):
    return render(request, 'frontapp/snake.html')


def root(request):
    return redirect('home')
