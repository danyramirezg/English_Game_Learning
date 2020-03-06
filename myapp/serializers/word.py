from rest_framework import serializers
from myapp.models.word import Word
from myapp.models.user import User
from myapp.models.topic import Topic

class WordSerializers(serializers.Serializer):
    class meta:
        model = Word
        fields = ['id', 'user', 'topic', 'word', 'traslation', 'access', 'attemps']