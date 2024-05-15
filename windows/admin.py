from django.contrib import admin
from windows.forms import OrderForm

from.models import *

# Register your models here.

class AdvantageInline(admin.TabularInline):
    model = Advantage

class ProductPhotos(admin.TabularInline):
    model = ProductPhoto

class ProductAdmin(admin.ModelAdmin):
    inlines = (AdvantageInline, ProductPhotos)

class OrderAdmin(admin.ModelAdmin):
    list_filter = ('status', 'type')

admin.site.register(User)
admin.site.register(Product, ProductAdmin)
admin.site.register(Advantage)
admin.site.register(Order, OrderAdmin)