from rest_framework import serializers
from myapp.models.game import Game


class GameSerializer(serializers.ModelSerializer):
    class Meta:
        model = Game
        fields = [
                'id', 'name', 'detail', 'num_player',
                'created_at', 'update_at'
                ]
