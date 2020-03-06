from rest_framework import status
from rest_framework.decorators import api_view
from rest_framework.response import Response
from myapp.models.word import Word
from myapp.serializers.word import WordSerializer


@api_view(['GET'])
def word_list(request):
    """
    List all code word, or create a new word.
    """
    if request.method == 'GET':
        words = Word.objects.all()
        serializer = WordSerializer(words, many=True)
        return Response(serializer.data)

