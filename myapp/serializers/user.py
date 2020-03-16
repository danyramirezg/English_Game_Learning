from rest_framework import serializers
from myapp.models.user import User_Profile

from django import forms
from django.contrib.auth.models import User


class UserSerializer(serializers.ModelSerializer):
    user = serializers.StringRelatedField(read_only=True)

    class Meta:
<<<<<<< HEAD
        model = User
        fields = [
            'user_name', 'password'
        ]
=======
        model = User_Profile
        fields = '__all__'
>>>>>>> 30d63991e03f1775520a1c2127e3384b238be859
