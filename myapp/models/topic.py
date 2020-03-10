from django.db import models
from django.utils import timezone

"""" This class create a Topic model """


class Topic(models.Model):
    topic_name = models.CharField(max_length=250, blank=False, null=False, unique=True)
    detail = models.CharField(max_length=2048, blank=False, null=False)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(default=timezone.now, editable=False)

    def __str__(self):
        return self.topic_name

    class Meta:
        ordering = ['created_at']
