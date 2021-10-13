from django.db import models

# Create your models here.
class pollsappForm(models.Model):
    username = models.CharField(max_length = 25)
    email = models.CharField(max_length = 50)
    body = models.TextField()

    def __str__(self):
        return self.username
