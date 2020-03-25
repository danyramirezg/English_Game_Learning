from rest_framework import serializers
from myapp.models.option_game import Option_Game


class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = Option_Game
        fields = [
            'id', 'name', 'detail',
            'created_at', 'update_at'
        ]
