from django.shortcuts import render, redirect, get_object_or_404, HttpResponseRedirect
from django.contrib.sites.shortcuts import get_current_site
from django.utils.encoding import force_text
from django.contrib.auth.models import User
from django.db import IntegrityError
from django.utils.http import urlsafe_base64_decode
from django.utils.encoding import force_bytes
from django.utils.http import urlsafe_base64_encode
from django.template.loader import render_to_string
from django.contrib.auth import authenticate, login as auth_login, logout as auth_logout
from django.contrib.auth.tokens import default_token_generator as token_generator
from .forms import RegisterForm
from .forms import LoginForm
from requests import post, get


def landing(request):
    return render(request, 'landing.html', {'user': request.user.username})

def logout(request):
    auth_logout(request)
    return redirect('login')


def activation_sent(request):
    return render(request, 'activation_sent.html')


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

def activate(request, uidb64, token):
    try:
        uid = force_text(urlsafe_base64_decode(uidb64))
        user = User.objects.get(pk=uid)
    except (TypeError, ValueError, OverflowError, User.DoesNotExist):
        user = None

    if user is not None and token_generator.check_token(user, token):
        user.is_active = True
        user.profile.register_confirmation = True
        user.save()
        auth_login(request, user)
        return redirect('landing')
    else:
        return render(request, 'activation_invalid.html')

def register(request):
    form = RegisterForm(request.POST)
    if form.is_valid():
        user = form.save()
        user.refresh_from_db()
        user.profile.cell_phone = form.cleaned_data.get('cell_phone')
        user.profile.email = form.cleaned_data.get('email')
        user.profile.word_attempt = form.cleaned_data.get('word_attempt')
        user.is_active = False
        user.save()
        current_site = get_current_site(request)
        subject = 'Please Activate Your Account'
        uid = urlsafe_base64_encode(force_bytes(user.pk))
        message = render_to_string('activation_request.html', {
                'user': user,
                'domain': current_site.domain,
                'uid': uid,
                'token': token_generator.make_token(user),
            })
        user.email_user(subject, message)
        return redirect('activation_sent')
    return render(request, 'register.html', {'user': request.user.username})

def snake(request):
    return render(request, 'snake.html', {'user': request.user.username})


def root(request):
    return redirect('landing')


def topic(request):
    res = get('http://localhost:8000/api/pod_topic')
    topics = {}
    if res.status_code == 200:
        topics = res.json()
    return render(request, 'topic.html', {'topics': topics, 'user': request.user.username})


def user_config(request):
    return render(request, 'user_config.html')

def select_word(request):
    res = get('http://localhost:8000/api/pod_select_word')
    topics = {}
    if res.status_code == 200:
        topics = res.json()
    return render(request, 'select_word.html')
