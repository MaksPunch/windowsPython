from .models import *

def provide_products_for_footer(request):
    return {
        'products': Product.objects.order_by('-date'),
        'products_for_production': Product.objects.order_by('-date')[3:6]
    }