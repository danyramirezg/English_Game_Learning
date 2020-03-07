from rest_framework import status
from rest_framework.decorators import api_view
from rest_framework.response import Response
from myapp.models.word import Word
from myapp.serializers.word import WordSerializer


@api_view(['GET', 'POST'])
def word_list(request):
    """
    List all code word, or create a new word.
    """
    if request.method == 'GET':
        words = Word.objects.all()
        serializer = WordSerializer(words, many=True)
        return Response(serializer.data)

    elif request.method == 'POST':
        serializer = WordSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


@api_view(['GET', 'PUT', 'DELETE'])
def word_detail(request, pk):
    """
    Retrieve, update or delete a code word.
    """
    try:
        word = Word.objects.get(pk=pk)
    except Word.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = WordSerializer(word)
        return Response(serializer.data)

    elif request.method == 'PUT':
        serializer = WordSerializer(word, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    elif request.method == 'DELETE':
        word.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)