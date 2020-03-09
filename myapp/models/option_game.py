from django.db import models

"""" This class create a option to play """


class Option_Game(models.Model):
    name = models.CharField(max_length=250, unique=True)
    detail = models.CharField(max_length=2048)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(null=True)

    def __str__(self):
        return self.name
