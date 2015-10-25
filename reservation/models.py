#encoding=utf-8
from __future__ import unicode_literals
from django.db import models

# Create your models here.
class Candidate(models.Model):
    name = models.CharField(max_length=30)
    phoneNumber = models.CharField(max_length=20)
    workType = models.CharField(max_length=20)
    timeArea = models.CharField(max_length=20, blank=True)

    def __unicode__(self):
        return self.name + self.phoneNumber


class TimeArea(models.Model):
    workType = models.CharField(max_length=20)
    description = models.CharField(max_length=30)
    available = models.IntegerField()

    def __unicode__(self):
        return self.description