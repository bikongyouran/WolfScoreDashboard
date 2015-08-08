from django.shortcuts import render
from django.shortcuts import HttpResponse
import hashlib


# Create your views here.
def au(request):
    signature = request.GET['signature']
    timestamp = request.GET['timestamp']
    nonce = request.GET['nonce']
    echostr = request.GET['echostr']

    token='recruit'
    list = [token, timestamp, nonce]
    list.sort()
    sha1 = hashlib.sha1
    map(sha1.update, list)
    hashcode = sha1.hexdigest()

    if hashcode == signature:
        return HttpResponse(echostr)
