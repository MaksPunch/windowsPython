from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin
from django.http import HttpRequest, JsonResponse
from django.shortcuts import render
from django.urls import reverse_lazy
from django.views import generic
from django.views.generic import CreateView, DetailView
from windows.forms import RegisterUserForm
from windows.models import Product, Order


# Create your views here.

class RegisterView(CreateView):
    template_name = 'registration/register.html'
    form_class = RegisterUserForm
    success_url = reverse_lazy('login')

def about(request):
    products = Product.objects.order_by('-date')[:5]
    return render(request, 'pages/about.html', context={
        'products': products
    })

def homepage(request):
    return render(request, 'pages/homepage.html')

def catalog(request):
    order_by = request.GET.get('order_by')
    if order_by:
        products = Product.objects.order_by(order_by)
    else:
        products = Product.objects.order_by("-date")

    return render(request, 'pages/catalog.html',
                  context={
                      'products': products
                  })

def contact(request):
    return render(request, 'pages/contact.html')

def product(request, pk):
    return render(request, 'pages/product.html')

class ProductDetail(DetailView):
    model = Product
    template_name = 'pages/product.html'

def make_order(request):
    data = request.POST
    name = data.get('name')
    city = data.get('city')
    type = data.get('type')
    phone = data.get('phone')
    wishes = data.get('wishes') or ""
    Order.objects.create(name=name, city=city, type=type, phone=phone, wishes=wishes)
    return JsonResponse({
        'message': "ok"
    })
