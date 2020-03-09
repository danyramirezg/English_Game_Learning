from rest_framework import serializers
from myapp.models.user_topic import User_Topic


class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User_Topic
        fields = [
            'id', 'user', 'topic'
        ]
