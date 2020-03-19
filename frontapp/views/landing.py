from django.shortcuts import render, redirect


def landing(request):
    if request.user.is_authenticated:
        return redirect('topic')
    return render(request, 'landing.html')
