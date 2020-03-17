from django.shortcuts import render


def select_word(request):
    return render(request, 'select_word.html')
