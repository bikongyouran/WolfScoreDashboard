from django.shortcuts import HttpResponse
from xml.etree import ElementTree as etree
from django.utils.encoding import smart_str
import hashlib


# Create your views here.
def au(request):
    if request.method == 'GET':
        response = HttpResponse(checkSignature(request))
        return response
    else:
        xmlstr = smart_str(request.body)
        xml = etree.fromstring(xmlstr)

        ToUserName = xml.find('ToUserName').text
        FromUserName = xml.find('FromUserName').text
        CreateTime = xml.find('CreateTime').text
        MsgType = xml.find('MsgType').text
        Content = xml.find('Content').text
        MsgId = xml.find('MsgId').text
        reply_xml = """<xml>
       <ToUserName><![CDATA[%s]]></ToUserName>
       <FromUserName><![CDATA[%s]]></FromUserName>
       <CreateTime>%s</CreateTime>
       <MsgType><![CDATA[text]]></MsgType>
       <Content><![CDATA[%s]]></Content>
       </xml>"""%(FromUserName,ToUserName,CreateTime,Content + "  Hello world, this is test message")
        return HttpResponse(reply_xml)


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