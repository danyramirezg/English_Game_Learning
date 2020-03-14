from django.urls import path
from frontapp import views


urlpatterns = [
            path('', views.root, name='root'),
            path('landing', views.landing, name='landing'),
            path('login', views.login, name='login'),
            path('register', views.register, name='register'),
            path('snake', views.snake, name='snake'),
            path('topic', views.topic, name='topic')
        ]
