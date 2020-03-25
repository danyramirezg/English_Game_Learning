from django.shortcuts import render


def success_register(request):
    return render(request, 'success_register.html')
