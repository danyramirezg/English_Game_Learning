from rest_framework.generics import (ListCreateAPIView,RetrieveUpdateDestroyAPIView,)
from rest_framework.permissions import IsAuthenticated
from myapp.models.user import User_Profile
from myapp.permissions import IsOwnerProfileOrReadOnly
from myapp.serializers.user import UserSerializer
from frontapp.forms import Custom_User_Form


# Create your views here.

<<<<<<< HEAD
    elif request.method == 'POST':

        serializer = UserSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
=======
class UserProfileListCreateView(ListCreateAPIView):
    queryset=User_Profile.objects.all()
    serializer_class=UserSerializer
    permission_classes=[IsAuthenticated]
>>>>>>> 30d63991e03f1775520a1c2127e3384b238be859

    def perform_create(self, serializer):
        user=self.request.user
        serializer.save(user=user)


<<<<<<< HEAD
    if request.method == 'GET':
        serializer = UserSerializer(user)
        return Response(serializer.data)

    elif request.method == 'PUT':
        serializer = UserSerializer(user, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    elif request.method == 'DELETE':
        user.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)


@api_view(['GET', 'PUT', 'DELETE'])
def word_detail(request, pk):
    """
    Retrieve, update or delete a code word.
    """
    try:
        word = Word.objects.get(pk=pk)
    except Word.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = WordSerializer(word)
        return Response(serializer.data)

    elif request.method == 'PUT':
        serializer = SnippetSerializer(snippet, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    elif request.method == 'DELETE':
        snippet.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)
=======
class userProfileDetailView(RetrieveUpdateDestroyAPIView):
    queryset=User_Profile.objects.all()
    serializer_class=UserSerializer
    permission_classes=[IsOwnerProfileOrReadOnly,IsAuthenticated]
>>>>>>> 30d63991e03f1775520a1c2127e3384b238be859
