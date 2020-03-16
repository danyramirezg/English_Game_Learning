from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User

"""" This class create a User model """


class User_Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE,
                                related_name="profile")
    cell_phone = models.CharField(max_length=20, blank=True, null=True)
    email = models.CharField(max_length=50, blank=False, null=False)
    word_attempt = models.IntegerField(default=7)
    active = models.BooleanField(default=True, editable=False)
    created_at = models.DateTimeField(auto_now_add=True)
    update_at = models.DateTimeField(default=timezone.now, editable=False)

    def __str__(self):
        return self.user.username

    class Meta:
        ordering = ['created_at']
