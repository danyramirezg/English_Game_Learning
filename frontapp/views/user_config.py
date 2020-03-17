from django.shortcuts import render


def user_config(request):
    return render(request, 'user_config.html')
