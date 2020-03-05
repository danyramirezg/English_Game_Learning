from django.urls import path
from myapp.views import user


urlpatterns = [
            # User endpoints
            path('users/', user.user_list),
            path('users/<int:pk>/', user.user_detail),
            # other model endpoints here
        ]
