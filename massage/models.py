from __future__ import unicode_literals

from django.db import models


class Colleague(models.Model):
    emailAddress = models.CharField(max_length=50)
    timeArea = models.CharField(max_length=20, blank=True)
    place = models.CharField(max_length=30, blank=True)

    def __unicode__(self):
        return self.emailAddress


class ServeTime(models.Model):
    timeArea = models.CharField(max_length=30)
    available = models.IntegerField()

    def __unicode__(self):
        return self.timeArea