from django.shortcuts import render


def snake(request):
    topic_id = request.GET.get('id', '0')
    return render(request, 'snake.html', {'topic_id': topic_id})
