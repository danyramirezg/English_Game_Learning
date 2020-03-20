from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from requests import get
import os


@login_required(login_url='login')
def select_word(request):
    topic_id = request.GET.get('id', 0)
    res = get('http://{}:8000/api/pod_topic/{}'.format(os.getenv('HOST'), topic_id))
    topic = None
    if res.status_code == 200:
        topic = res.json()
    words = {}
    res = get('http://{}:8000/api/pod_words'.format('HOST'))
    if res.status_code == 200:
        words = res.json()
    topic_words = []
    for word in words:
        if word['topic'] == topic['id']:
            topic_words.append(word)
    return render(request, 'select_word.html', {'topic': topic, 'words': topic_words})
