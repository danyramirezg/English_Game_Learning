from django.db import models
from django.utils import timezone

"""" This class create a Word model """


class Word(models.Model):
    user = models.ForeignKey("Profile", on_delete=models.CASCADE)
    topic = models.ForeignKey("Topic", on_delete=models.CASCADE)
    word = models.CharField(max_length=30, blank=False, null=False, unique=True)
    translation = models.CharField(max_length=30, blank=False, null=False)
    access = models.BooleanField(default=True, editable=False)
    attempts = models.IntegerField(default=0, editable=False)
    created_at = models.DateTimeField(auto_now_add=True)
    update_at = models.DateTimeField(default=timezone.now, editable=False)

    def __str__(self):
        return self.word
