from django.contrib import admin
from .models.topic import Topic
from .models.user import User
from .models.word import Word
# Register your models here.
 
admin.site.register(Topic)
admin.site.register(User)
admin.site.register(Word)
