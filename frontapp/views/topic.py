from django.shortcuts import render
from requests import get
import os


def topic(request):
    res = get('http://{}:8000/api/pod_topic'.format(os.getenv('HOST')))
    topics = {}
    if res.status_code == 200:
        topics = res.json()
    return render(request, 'topic.html', {'topics': topics})
