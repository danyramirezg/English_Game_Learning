from django.db import models
from django.utils import timezone

"""" This class create a option to play """


class Option_Game(models.Model):
    name = models.CharField(max_length=250, unique=True)
    detail = models.CharField(max_length=2048)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(default=timezone.now, editable=False)
    def __str__(self):
        return self.name
