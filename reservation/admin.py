from django.contrib import admin
from models import Candidate, TimeArea

class CandidateAdmin(admin.ModelAdmin):
    list_display = ('name', 'phoneNumber', 'workType', 'timeArea', 'email_address')
    search_fields = ('name', 'phoneNumber')
    list_filter = ('workType',)
    ordering = ('workType', 'timeArea')
    fields = ('name', 'phoneNumber', 'workType', 'timeArea', 'email_address')

class TimeAreaAdmin(admin.ModelAdmin):
    list_display = ('workType', 'description', 'available')
    search_fields = ('timeArea', )
    list_filter = ('workType',)
    ordering = ('workType', 'description')
    fields = ('workType', 'description', 'available')

# Register your models here.
admin.site.register(Candidate, CandidateAdmin)
admin.site.register(TimeArea, TimeAreaAdmin)