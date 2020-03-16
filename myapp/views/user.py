from rest_framework.generics import (ListCreateAPIView,RetrieveUpdateDestroyAPIView,)
from rest_framework.permissions import IsAuthenticated
from myapp.models.user import User_Profile
from myapp.permissions import IsOwnerProfileOrReadOnly
from myapp.serializers.user import UserSerializer


# Create your views here.

class UserProfileListCreateView(ListCreateAPIView):
    queryset=User_Profile.objects.all()
    serializer_class=UserSerializer
    permission_classes=[IsAuthenticated]

    def perform_create(self, serializer):
        user=self.request.user
        serializer.save(user=user)


class userProfileDetailView(RetrieveUpdateDestroyAPIView):
    queryset=User_Profile.objects.all()
    serializer_class=UserSerializer
    permission_classes=[IsOwnerProfileOrReadOnly,IsAuthenticated]
