from frontapp.forms import LoginForm
from django.contrib.auth import authenticate, login as auth_login
from django.shortcuts import render, redirect


def login(request):
    form = LoginForm(request.POST)
    if form.is_valid():
        username = form.cleaned_data.get('username')
        password = form.cleaned_data.get('password')
        user = authenticate(username=username, password=password)
        if user is not None:
            auth_login(request, user)
        return redirect('landing')
    else:
        form = LoginForm()
    return render(request, 'login.html', {'user': request.user.username})
