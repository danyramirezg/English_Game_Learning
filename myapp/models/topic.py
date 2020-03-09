from django.db import models

"""" This class create a Topic model """


class Topic(models.Model):
    topic_name = models.CharField(max_length=250, blank=False, null=False)
    detail = models.CharField(max_length=2048, blank=False, null=False)
    created_at = models.DateTimeField(auto_now_add=True, editable=False)
    updated_at = models.DateTimeField(auto_now_add=True, editable=False)

    def __str__(self):
        return self.topic_name

    class Meta:
        ordering = ['created_at']
