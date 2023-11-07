from django.db import models

class PersonDetails(models.Model):
    first_name = models.CharField(max_length=100)
    last_name = models.CharField(max_length=100)
    desc = models.TextField()
    age = models.IntegerField()
    place = models.TextField()   