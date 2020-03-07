from django.db import models

"""" This class to relationship between user and topic, which user create which topics"""

class user_topic(models.Model):
    user = models.ForeignKey("User", on_delete=models.CASCADE)
    topic = models.ForeignKey("Topic", on_delete=models.CASCADE)

    def __str__(self):
        return self.user + self.topic 