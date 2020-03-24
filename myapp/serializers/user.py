from rest_framework import serializers
from myapp.models.user import User


class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = [
            'id', 'user_name', 'password', 'cell_phone',
            'email', 'word_attempt', 'active', 'created_at',
            'update_at'
        ]
