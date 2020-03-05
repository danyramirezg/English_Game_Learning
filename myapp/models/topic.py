from django.db import models
from django.contrib.auth.models import User

"""" This class create a Topic model """


class Topic(models.Model):
    name = models.CharField(max_length=250, unique=True)
    detail = models.CharField(max_length=2048)
    createdAt = models.DateTimeField(auto_now_add=True)
    updatedAct = models.DateTimeField(null=True)

    def __str__(self):
        return self.name
