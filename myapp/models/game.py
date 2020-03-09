from django.db import models

"""" This class create a Game model """


class Game(models.Model):
    name = models.CharField(max_length=250, unique=True)
    detail = models.CharField(max_length=2048)
    num_player = models.IntegerField(default=2)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(null=True)

    def __str__(self):
        return self.name
