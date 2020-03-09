from rest_framework import serializers
from myapp.models.user_topic_game import User_Topic_Game


class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User_Topic_Game
        fields = [
            'id', 'user', 'topic', 'option'
        ]
