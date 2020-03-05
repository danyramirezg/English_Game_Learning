from django.urls import path
from myapp.views import user
from myapp.views import topic

urlpatterns = [
            # User endpoints
            path('users/', user.user_list),
            path('users/<int:pk>/', user.user_detail),
            # Topic endpoints
            path('topic/', topic.topic_list),
            path('topic/<int:pk>/', topic.topic_detail)
            # other model endpoints here
        ]
