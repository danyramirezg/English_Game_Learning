from rest_framework import serializers
from myapp.models.user import User


class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = [
                'id', 'username', 'password', 'cellPhone',
                'email', 'wordAttemp', 'active'
                ]

