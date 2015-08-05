#coding: utf-8
from django.shortcuts import render_to_response
from wolf.models import Player, Visitor


# Create your views here.
def index(request):
    #p1 = Player(name = 'wu devin', dept = 'pd', score = 100)
    #p1 = Player.objects.get(name = 'luicy', dept='gs' )
    #p1.score = 200
    #p1.save()
    users = Player.objects.order_by('-score')
    visitor = Visitor.objects.get(desc = "visitor num")
    visitor.count += 1
    visitor.save()
    count = visitor.count
    return render_to_response('home.html', {'users': users, 'count': count})

def wechat(request):
    return render_to_response('wechat.html')
