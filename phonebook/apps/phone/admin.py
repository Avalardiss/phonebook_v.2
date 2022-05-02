from django.contrib import admin
from.models import Abonent

class AbonentAdmin(admin.ModelAdmin):
	list_display = ("id", "name", "mobile_phone", "internal_phone", "IP_phone", "pts_phone", "conference_phone", "zas_phone")
	change = ("id", "name", "mobile_phone", "gorod_phone", "internal_phone", "IP_phone", "zvks", "pts_phone", "conference_phone", "zas_phone")
	ordering = ("id",)
	search_fields = ("name", "mobile_phone", "gorod_phone", "internal_phone", "IP_phone", "zvks", "pts_phone", "conference_phone", "zas_phone")
admin.site.register(Abonent, AbonentAdmin)
