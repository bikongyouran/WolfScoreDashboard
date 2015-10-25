# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.http.response import HttpResponse, HttpResponseBadRequest
import json
from wechat_sdk import WechatBasic
from wechat_sdk.exceptions import ParseError
from wechat_sdk.messages import TextMessage

# 实例化 WechatBasic
wechat_instance = WechatBasic(
    token = "recruit",
    appid = 'wxffda7df5ae5ab2f9',
    appsecret = '915878d1c58f69dff9139e3556789201'
)

# Create your views here.
def index(request):
    if request.method == 'GET':
        # 检验合法性
        # 从 request 中提取基本信息 (signature, timestamp, nonce, xml)
        signature = request.GET.get('signature')
        timestamp = request.GET.get('timestamp')
        nonce = request.GET.get('nonce')

        if not wechat_instance.check_signature(signature=signature, timestamp=timestamp, nonce=nonce):
            return HttpResponseBadRequest('Verify Failed')

        return HttpResponse(request.GET.get('echostr', ''), content_type="text/plain")


    # 解析本次请求的 XML 数据
    try:
        wechat_instance.parse_data(data=request.body)
    except ParseError:
        return HttpResponseBadRequest('Invalid XML Data')

    # 获取解析好的微信请求信息
    message = wechat_instance.get_message()

    # 关注事件以及不匹配时的默认回复
    response = wechat_instance.response_text(
        content = (
            '感谢您的关注！\n这个账号不是官方账号。回复【图文】两个字，返回图文消息'
            '\n\t\t Wu Devin\n(haifwu@paypal.com)'
        ))
    if isinstance(message, TextMessage):
        # 当前会话内容
        content = message.content.strip()
        if content == '功能':
            reply_text = (
                '目前支持的功能：\n1. 关键词后面加上【教程】两个字可以搜索教程，'
                '比如回复 "Django 后台教程"\n'
                '2. 回复任意词语，查天气，陪聊天，讲故事，无所不能！\n'
                '还有更多功能正在开发中哦 ^_^\n'
            )
        elif content.endswith('教程'):
            reply_text = '您要找的教程如下：'
        else:
            reply_text = 'hello'

        response = wechat_instance.response_text(content=reply_text)

        if content.endswith('图文'):
            response = wechat_instance.response_news([
                {
                    'title': u'第一条新闻标题',
                    'description': u'还可以回复教程、功能',
                    'url': u'http://www.diandian.com/',
                    }, {
                    'title': u'第二条新闻标题, 这条新闻无描述',
                    'picurl': u'http://img4.imgtn.bdimg.com/it/u=1726026486,642955954&fm=21&gp=0.jpg',
                    'url': u'http://www.github.com/',
                    }, {
                    'title': u'第三条新闻标题',
                    'description': u'第三条新闻描述',
                    'picurl': u'http://pic.nipic.com/2008-05-30/2008530143428224_2.jpg',
                    'url': u'http://www.lofter.com/',
                    }
            ])
        elif content.endswith('头像'):
            picUrl = wechat_instance.message
            response = wechat_instance.response_text(content=picUrl)

    return HttpResponse(response, content_type="application/xml")