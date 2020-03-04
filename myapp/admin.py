from django.contrib import admin
from .models.topic import Topic
from .models.user import User
# Register your models here.

admin.site.register(Topic)
admin.site.register(User)
