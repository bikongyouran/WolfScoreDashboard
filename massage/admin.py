from django.contrib import admin
from models import Colleague, ServeTime


class ColleagueAdmin(admin.ModelAdmin):
    list_display = ('emailAddress', 'timeArea', 'place')
    search_fields = ('emailAddress',)
    list_filter = ('place',)
    ordering = ('timeArea', 'place')
    fields = ('emailAddress', 'timeArea', 'place')


class ServeTimeAdmin(admin.ModelAdmin):
    list_display = ('timeArea', 'available')
    search_fields = ('timeArea', )
    list_filter = ('available',)
    ordering = ('timeArea', 'available')
    fields = ('timeArea', 'available')

# Register your models here.
admin.site.register(Colleague, ColleagueAdmin)
admin.site.register(ServeTime, ServeTimeAdmin)