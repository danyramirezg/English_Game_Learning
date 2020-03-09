from django.urls import path
from base import views


urlpatterns = [
            path('logout', views.logout_view, name='logout'),
        ]
