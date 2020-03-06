from django.db import models
 
"""" This class create a Word model """
 
class Word(models.Model):
   user = models.OneToOneField("User", on_delete=models.CASCADE)
   topic = models.ForeignKey("Topic", on_delete=models.CASCADE)
   word = models.CharField(max_length=30, blank=False, null=False)
   traslation = models.CharField(max_length=30, blank=False, null=False)
   access = models.BooleanField(default=True)
   attemps = models.IntegerField(default=0, null=False)
 
   def __str__(self):
       return self.word