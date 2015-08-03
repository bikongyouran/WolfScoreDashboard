from django.contrib import admin
from models import Player

class PlayerAdmin(admin.ModelAdmin):
    list_display = ('name', 'dept', 'score', 'createDate')
    search_fields = ('name', 'dept')
    list_filter = ('dept', )
    date_hierarchy = 'createDate'
    ordering = ('-score', )
    fields = ('name', 'dept', 'score') # removed createDate to protect being edit

# Register your models here.
admin.site.register(Player, PlayerAdmin)