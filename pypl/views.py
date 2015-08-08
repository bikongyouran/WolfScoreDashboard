from django.shortcuts import HttpResponse, render_to_response
from django.utils.encoding import smart_str
import hashlib


# Create your views here.
def au(request):
    if request.method == 'GET':
        response = HttpResponse(checkSignature(request))
        return response
    else:
        xml_str = smart_str(request.body)
        request_xml = etree.fromstring(xml_str)
        response_xml = auto_reply_main(request_xml)# 修改这里
        return HttpResponse(response_xml)


def checkSignature(request):
    signature = request.GET.get('signature', None)
    timestamp = request.GET.get('timestamp', None)
    nonce = request.GET.get('nonce', None)
    echostr = request.GET.get('echostr', None)
    token = "recruit"

    tmplist = [token, timestamp, nonce]
    tmplist.sort()
    tmpstr = "%s%s%s" % tuple(tmplist)
    tmpstr = hashlib.sha1(tmpstr).hexdigest()
    if tmpstr == signature:
        return echostr
    else:
        return None