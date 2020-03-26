from django.urls import path
from myapp.views import word, topic, user
from myapp.views import translator
from myapp.views import token_login
from rest_framework.authtoken import views

urlpatterns = [
    # User endpoints
    path('api/pod_users/', user.User_list.as_view(), name='user_list'),
    #path('api/pod_users/', user.user_list),
    #path('api/pod_users/<int:pk>/', user.user_detail),
    # Topic endpoints
    path('api/pod_topic/', topic.topic_list),
    path('api/pod_topic/<int:pk>/', topic.topic_detail),
    # word endpoints
    path('api/pod_words/', word.word_list),
    # path('api/pod_Words/<int:pk>/', word.word_detail),
    # translator API endpoint
    path('api/pod_words/<word>', translator.translate),
    #path('api/pod_token_login', token_login.Token_Login.as_view()),
    path('api/pod_generate_token/', views.obtain_auth_token)
]
