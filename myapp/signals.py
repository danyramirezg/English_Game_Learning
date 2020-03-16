from django.contrib.auth.models import User
from django.db.models.signals import post_save
from django.dispatch import receiver
from myapp.models.user import User_Profile


@receiver(post_save, sender=User)
def create_profile(sender, instance, created, **kwargs):
    if created:
        User_Profile.objects.create(user=instance)
