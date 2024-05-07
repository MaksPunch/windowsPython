from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin
from django.http import HttpRequest
from django.shortcuts import render
from django.urls import reverse_lazy
from django.views import generic
from django.views.generic import CreateView
from windows.forms import RegisterUserForm
from windows.models import Order


# Create your views here.

class RegisterView(CreateView):
    template_name = 'registration/register.html'
    form_class = RegisterUserForm
    success_url = reverse_lazy('login')

def about(request):
    return render(request, 'pages/about.html')

def catalog(request):
    return render(request, 'pages/catalog.html')

def contact(request):
    return render(request, 'pages/contact.html')

def product(request):
    return render(request, 'pages/product.html')

class OrderListView(LoginRequiredMixin, generic.ListView):
    model = Order
    template_name = 'pages/orders.html'

    def get_queryset(self):
        return Order.objects.filter(user=self.request.user).order_by("-date")
