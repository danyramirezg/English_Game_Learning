from django.shortcuts import redirect


def root(request):
    return redirect('landing')
