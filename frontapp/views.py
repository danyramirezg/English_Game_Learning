from django.shortcuts import render, redirect
from .forms import UserForm
from .forms import LoginForm
from myapp.models.user import User

# Create your views here.
def get_authenticated_id(request):
    try:
        user_id = request.session.get('user_id')
        return user_id
    except KeyError:
        return None

def landing(request):
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
            user = User.objects.get(user_name = user_name)
            request.session['user_id'] = user.pk
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
            form.save()
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
