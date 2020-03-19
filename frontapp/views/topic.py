from django.shortcuts import render
from requests import get


def topic(request):
    res = get('http://localhost:8000/api/pod_topic')
    topics = {}
    if res.status_code == 200:
        topics = res.json()
    return render(request, 'topic.html', {'topics': topics})
