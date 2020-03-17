from django.contrib import admin
from .models.topic import Topic
from .models.user import Profile
from .models.word import Word
from .models.user_topic_game import User_Topic_Game
from .models.option_game import Option_Game
from .models.user_topic import User_Topic
from .models.game import Game

# Register your models here.
 
admin.site.register(Topic)
admin.site.register(Profile)
admin.site.register(Word)
admin.site.register(User_Topic_Game)
admin.site.register(Option_Game)
admin.site.register(User_Topic)
admin.site.register(Game)



