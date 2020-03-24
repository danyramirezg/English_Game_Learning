from rest_framework import serializers
from myapp.models.word import Word


class WordSerializer(serializers.ModelSerializer):
    class Meta:
        model = Word
        fields = ['id', 'user', 'topic', 'word', 'translation',
                  'access', 'attempts',
                  'created_at', 'update_at'
                  ]
