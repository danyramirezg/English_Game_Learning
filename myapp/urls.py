from django.urls import path
from myapp.views import user, word, topic
from myapp.views import translator
from myapp.views import token_login

urlpatterns = [
    # User endpoints
    path('api/pod_users/', user.user_list),
    path('api/pod_users/<int:pk>/', user.user_detail),
    # Topic endpoints
    path('api/pod_topic/', topic.topic_list),
    path('api/pod_topic/<int:pk>/', topic.topic_detail),
    # word endpoints
    path('api/pod_words/', word.word_list),
    # path('api/pod_Words/<int:pk>/', word.word_detail),
    # translator API endpoint
    path('api/pod_words/<word>', translator.translate),
    path('api/pod_token_login', token_login.Token_Login.as_view()),
]
