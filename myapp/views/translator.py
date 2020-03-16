from rest_framework import status
from rest_framework.decorators import api_view
from rest_framework.response import Response
from requests import get
import os
import requests

@api_view(['GET'])
def translate(request, word):
    if len(word.split()) > 1:
        return Response({}, status=status.HTTP_400_BAD_REQUEST)

    res = get(
            'https://translation.googleapis.com/language/translate/v2?target=es&key={}&q={}'
                .format(os.getenv('TRANSLATE_KEY'), word))
    return Response(res.json(), status=status.HTTP_200_OK)
