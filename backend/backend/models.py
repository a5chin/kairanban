from django.db import models


class User(models.Model):
    _id = models.PositiveIntegerField(default=0)
    name = models.CharField(max_length=20)

    def __str__(self):
        return self.name
