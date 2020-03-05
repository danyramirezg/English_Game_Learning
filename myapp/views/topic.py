from django.http import HttpResponse, JsonResponse
from django.views.decorators.csrf import csrf_exempt
from rest_framework.parsers import JSONParser
from myapp.models.topic import Topic
from myapp.serializers.topic import TopicSerializer


@csrf_exempt
def topic_list(request):
    """
    List all code topics, or create a new topic.
    """
    if request.method == 'GET':
        topic = Topic.objects.all()
        serializer = TopicSerializer(topic, many=True)
        return JsonResponse(serializer.data, safe=False)

    elif request.method == 'POST':
        data = JSONParser().parse(request)
        serializer = TopicSerializer(data=data)
        if serializer.is_valid():
            serializer.save()
            return JsonResponse(serializer.data, status=201)
        return JsonResponse(serializer.errors, status=400)


@csrf_exempt
def topic_detail(request, pk):
    """
    Retrieve, update or delete a code topics.
    """
    try:
        topic = Topic.objects.get(pk=pk)
    except Topic.DoesNotExist:
        return HttpResponse(status=404)

    if request.method == 'GET':
        serializer = TopicSerializer(topic)
        return JsonResponse(serializer.data)

    elif request.method == 'PUT':
        data = JSONParser().parse(request)
        serializer = TopicSerializer(topic, data=data)
        if serializer.is_valid():
            serializer.save()
            return JsonResponse(serializer.data)
        return JsonResponse(serializer.errors, status=400)

    elif request.method == 'DELETE':
        topic.delete()
        return HttpResponse(status=204)
