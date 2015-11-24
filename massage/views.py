from django.http import HttpResponseRedirect
from django.shortcuts import render, render_to_response
from models import Colleague, ServeTime
from django.template import loader
from django.core.mail import EmailMultiAlternatives
import sys


reload(sys)
sys.setdefaultencoding('utf8')


def isvalid(emailAddress):
    if str(emailAddress).endswith("@paypalcorp.com") or str(emailAddress).endswith("@paypal.com"):
        print "is valid"
        return True
    print "not valid"
    return False


def login(request):
    if 'emailAddress' in request.GET:
        email_address = str(request.GET['emailAddress']).strip()
        print "email_address_in_request=" + email_address
        if email_address and isvalid(email_address):
            colleagues = Colleague.objects.filter(emailAddress=email_address)

            if colleagues.count() == 0:
                colleague = Colleague(emailAddress=email_address)
                colleague.save()

            request.session["emailAddress"] = email_address
            return HttpResponseRedirect("/massage/reservation")
        return render_to_response('massage_login.html', {'error': True})
    return render_to_response('massage_login.html', {'error': False})


def reservation(request):
    if 'emailAddress' in request.session:
        email_address_request = request.session['emailAddress']
        print "get " + email_address_request + " from session!"
        colleague = Colleague.objects.filter(emailAddress=email_address_request)[0]

        if colleague.timeArea:
            return HttpResponseRedirect("/massage/result")

        if 'time_area_selected' in request.POST:
            print "time_area_selected=" + request.POST["time_area_selected"]
            # if not choose any time area, then return error
            if request.POST["time_area_selected"] == "" or request.POST["time_area_selected"] is None:
                time_areas = ServeTime.objects.filter()
                error = True
                return render_to_response('massage_reservation.html', locals())

            time_area = ServeTime.objects.filter(timeArea=request.POST["time_area_selected"])[0]
            print "time area available = " + str(time_area.available)
            if time_area.available >= 1:
                time_area.available -= 1
                time_area.save()
                colleague.timeArea = request.POST["time_area_selected"]
                colleague.place = 'Six Arts' if time_area.available == 1 else 'Seven Nights'
                colleague.save()
                return HttpResponseRedirect("/massage/result")

        time_areas = ServeTime.objects.filter()
        print "get " + str(time_areas.count()) + " area from data bse"
        return render_to_response('massage_reservation.html', locals())
    else:
        print "No data before"
    return render_to_response('massage_reservation.html', locals())


def success(request):
    if 'emailAddress' in request.session:
        email_address_request = request.session['emailAddress']
        colleague = Colleague.objects.filter(emailAddress=email_address_request)[0]
        if colleague.timeArea:
            mail_list = [colleague.emailAddress if colleague.emailAddress else "haifwu@paypal.com"]
            send_result(mail_list, 'massage_success.html', locals())
            return render_to_response('massage_success.html', locals())
        else:
            return HttpResponseRedirect("/massage/reservation")
    return HttpResponseRedirect("/massage/login")


def send_result(mail_list, email_template_name, context):
    subject, from_email, to = "PayPal Colleague Massage Reservation Result", "paypalshanghai@163.com", mail_list
    t = loader.get_template(email_template_name)
    html_content = t.render(context)
    msg = EmailMultiAlternatives(subject, html_content, from_email, to)
    msg.attach_alternative(html_content, "text/html")
    msg.send()
