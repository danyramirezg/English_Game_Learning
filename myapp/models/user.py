from django.db import models
from django.utils import timezone

"""" This class create a User model """


class User(models.Model):
    user_name = models.CharField(max_length=60, blank=False, null=False, unique=True)
    password = models.CharField(max_length=50, blank=False, null=False)
    cell_phone = models.CharField(max_length=20, blank=True, null=True)
    email = models.CharField(max_length=50, blank=False, null=False)
    word_attempt = models.IntegerField(default=7)
    active = models.BooleanField(default=True, editable=False)
    created_at = models.DateTimeField(auto_now_add=True)
    update_at = models.DateTimeField(default=timezone.now, editable=False)

    def __str__(self):
        return self.user_name

    class Meta:
        ordering = ['created_at']
