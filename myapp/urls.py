from django.urls import path
from myapp.views import user, word, topic
from myapp.views import translator

urlpatterns = [
            # User endpoints
            path('api/pod_users/', user.user_list),
            path('api/pod_users/<int:pk>/', user.user_detail),
            # Topic endpoints
            path('topic/', topic.topic_list),
            path('topic/<int:pk>/', topic.topic_detail),
            #word endpoints
            path('api/pod_words/', word.word_list),
            #path('api/pod_Words/<int:pk>/', views.word_detail),
            # other model endpoints here
            # translator API endpoint
            path('api/pod_words/<word>', translator.translate)
        ]
