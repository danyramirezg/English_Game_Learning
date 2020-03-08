from django.urls import path
from frontapp import views


urlpatterns = [
            path('', views.root, name='root'),
            path('home', views.home, name='home'),
            path('login', views.login, name='login'),
            path('register', views.register, name='register'),
            path('snake', views.snake, name='snake')
        ]
