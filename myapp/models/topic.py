from django.db import models
# topic model

class Topic(models.Model):
    name = models.CharField(max_length=100)
