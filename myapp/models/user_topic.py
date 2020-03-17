from django.db import models

"""" This class shows the relationship between user and topic, where the 
user create topics """


class User_Topic(models.Model):
    user = models.ForeignKey("Profile", on_delete=models.CASCADE)
    topic = models.ForeignKey("Topic", on_delete=models.CASCADE)

    def __str__(self):
        return self.user + self.topic
