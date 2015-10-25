#coding: utf-8
from django.shortcuts import render_to_response, HttpResponse
from django.http import HttpResponseRedirect

from models import Candidate, TimeArea


def login(request):
    if 'name' in request.GET and 'phoneNumber' in request.GET:
        name_request = request.GET['name']
        phone_number_request = request.GET['phoneNumber']
        print "name_request=" + name_request
        print "phone_number_request=" + phone_number_request
        if name_request and phone_number_request:
            candidate = Candidate.objects.filter(name=name_request, phoneNumber=phone_number_request)
            if candidate.count() == 1:
                request.session["name"] = candidate[0].name
                request.session["phoneNumber"] = candidate[0].phoneNumber
                return HttpResponseRedirect("/reservation/reservation")
        return render_to_response('login.html', {'error': True})
    return render_to_response('login.html', {'error': False})


def reservation(request):
    if 'name' in request.session and 'workType' in request.session:
        name_request = request.session['name']
        phone_number_request = request.session['phoneNumber']
        print "get " + name_request + " from session!"
        candidate = Candidate.objects.filter(name=name_request, phoneNumber=phone_number_request)[0]

        if candidate.timeArea:
            return HttpResponseRedirect("/reservation/result")

        if 'time_area_selected' in request.POST:
            print "time_area_selected=" + request.POST["time_area_selected"]
            time_area = TimeArea.objects.filter(workType=candidate.workType, description=request.POST["time_area_selected"])[0]
            print "time area available = " + str(time_area.available)
            if time_area.available >= 1:
                time_area.available -= 1
                time_area.save()
                candidate.timeArea = request.POST["time_area_selected"]
                candidate.save()
                return HttpResponseRedirect("/reservation/result")

        time_areas = TimeArea.objects.filter(workType=candidate.workType)
        print "get " + str(time_areas.count()) +" area from databse"
        return render_to_response('reservation.html', locals())
    else:
        print "No data before"
    return render_to_response('reservation.html', locals())


def success(request):
    if 'name' in request.session and 'workType' in request.session:
        name_request = request.session['name']
        phone_number_request = request.session['phoneNumber']
        candidate = Candidate.objects.filter(name=name_request, phoneNumber=phone_number_request)[0]
        if candidate.timeArea:
            return render_to_response('success.html', locals())
        else:
            return HttpResponseRedirect("/reservation/reservation")
    return HttpResponseRedirect("/reservation/login")

def display_meta(request):
    values = request.META.items()
    values.sort()
    html = []
    for k, v in values:
        html.append('<tr><td>%s</td><td>%s</td></tr>' % (k, v))
    return HttpResponse('<table>%s</table>' % '\n'.join(html))


def no_page_found(request):
    return render_to_response('404.html', locals())