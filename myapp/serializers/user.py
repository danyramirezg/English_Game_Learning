from rest_framework import serializers
from myapp.models.user import User_Profile


class UserSerializer(serializers.ModelSerializer):
    user = serializers.StringRelatedField(read_only=True)

    class Meta:
        model = User_Profile
        fields = '__all__'
