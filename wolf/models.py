from __future__ import unicode_literals
from django.db import models

# Create your models here.
class Player(models.Model):
    name = models.CharField(max_length=30)
    dept = models.CharField(max_length=20)
    score = models.IntegerField()
    test = models.CharField(max_length=30, default="")
    createDate = models.DateField(blank=True, verbose_name='create Date')  # verbose name : name alias

    def __unicode__(self):
        return self.name + " from " + self.dept


class Visitor(models.Model):
    desc = models.CharField(max_length=20)
    count = models.BigIntegerField()

