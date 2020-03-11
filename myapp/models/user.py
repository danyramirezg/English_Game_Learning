from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User

"""" This class create a User model """


class Custom_User(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    cell_phone = models.CharField(max_length=20, blank=True, null=True)
    word_attempt = models.IntegerField(default=7)
    created_at = models.DateTimeField(auto_now_add=True)
    update_at = models.DateTimeField(default=timezone.now, editable=False)

    def __str__(self):
        return self.user_name

    class Meta:
        ordering = ['created_at']
