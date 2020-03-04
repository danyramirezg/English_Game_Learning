from django.db import models


class User(models.Model):
    username = models.CharField(max_length=60, blank=False, null=False)
    password = models.CharField(max_length=50, blank=False, null=False)
    cellPhone = models.CharField(max_length=20, blank=True, null=True)
    email = models.CharField(max_length=50, blank=False, null=False)
    wordAttemp = models.IntegerField(default=7)
    active = models.BooleanField(default=True)
    
    def __str__(self):
        return self.username
