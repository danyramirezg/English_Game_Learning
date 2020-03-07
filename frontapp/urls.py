from django.urls import path
from frontapp import views


urlpatterns = [
            path('', views.home, name='home'),
            path('home', views.home, name='home'),
            path('login', views.login, name='login'),
            path('snake', views.snake, name='snake')
        ]
