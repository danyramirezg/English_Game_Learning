from rest_framework import serializers
from myapp.models.user import User

from django import forms
from django.contrib.auth.models import User


class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = [
            'user_name', 'password'
        ]
