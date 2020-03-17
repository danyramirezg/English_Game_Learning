from django.shortcuts import render
from rest_framework import generics
from rest_framework import status
from rest_framework.decorators import api_view
from rest_framework.response import Response
from myapp.models.user import User
from myapp.serializers.user import UserSerializer

class User_list(generics.ListCreateAPIView):
    queryset = User.objects.all()
    serializer_class = UserSerializer


#@api_view(['GET', 'POST'])
#def user_list(request):
#    """
#    List all code users, or create a new user.
#    """
#    if request.method == 'GET':
#        users = User.objects.all()
#        serializer = UserSerializer(users, many=True)
#        return Response(serializer.data)
#
#    elif request.method == 'POST':
#        serializer = UserSerializer(data=request.data)
#        if serializer.is_valid():
#            serializer.save()
#            return Response(serializer.data, status=status.HTTP_201_CREATED)
#        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


@api_view(['GET', 'PUT', 'DELETE'])
def user_detail(request, pk):
    try:
        user = User.objects.get(pk=pk)
    except User.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

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
