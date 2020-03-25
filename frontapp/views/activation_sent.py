from django.shortcuts import render


def activation_sent(request):
    return render(request, 'activation_sent.html')
