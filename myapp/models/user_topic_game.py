from django.db import models

"""" This class to relationship between user and topic, which user create 
which topics """


class User_Topic_Game(models.Model):
    user = models.ForeignKey("Profile", on_delete=models.CASCADE)
    topic = models.ForeignKey("Topic", on_delete=models.CASCADE)
    # game = models.ForeignKey("Topic", on_delete=models.CASCADE)
    option = models.ForeignKey("Option_Game", on_delete=models.CASCADE)

    def __str__(self):
        return self.user + self.topic

        # + self.game
