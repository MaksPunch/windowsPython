from django.contrib.auth.models import AbstractUser
from django.db import models
from django.core.validators import FileExtensionValidator
from django.urls import reverse


# Create your models here.

def get_name_file(instance, filename):
    return '/'.join([get_random_string(length=5) + "_" + filename])

class User(AbstractUser):
    def full_name(self):
        return " ".join([self.name, self.surname, self.patronymic])

    name = models.CharField(max_length=255, verbose_name="Имя", blank=False)
    surname = models.CharField(max_length=255, verbose_name="Фамилия", blank=False)
    patronymic = models.CharField(max_length=255, verbose_name="Отчество", blank=True)
    username = models.CharField(max_length=255, verbose_name="Логин", unique=True, blank=False)
    password = models.CharField(max_length=255, verbose_name="Пароль", blank=False)
    email = models.CharField(max_length=255, verbose_name="Электронная почта", unique=True, blank=False)
    role = models.CharField(max_length=255, verbose_name="Роль", choices=(('admin', 'Администратор'), ("user", 'Пользователь')), default='user')

    USERNAME_FIELD = 'username'

    def __str__(self):
        return self.full_name()

class Product(models.Model):
    name = models.CharField(max_length=255, verbose_name="Название", blank=False)
    date = models.DateTimeField(verbose_name="Дата добавления", auto_now_add=True)
    photo_file = models.ImageField(max_length=255, upload_to=get_name_file, blank=True, null=True,
                                   validators=[FileExtensionValidator(allowed_extensions=['png', 'jpg', 'jpeg'])])
    year = models.IntegerField(verbose_name="Год производства", blank=True)
    country = models.CharField(max_length=255, verbose_name="Страна производства", blank=True)
    price = models.IntegerField(verbose_name="Стоимость", blank=False, default=0)
    quantity = models.IntegerField(verbose_name="Количество", blank=False, default=1)
    category = models.ForeignKey('Category', verbose_name='Категория', on_delete=models.CASCADE)

    def get_absolute_url(self):
        return reverse('product', args=[str(self.id)])


    def __str__(self):
        return self.name

class Category(models.Model):
    name = models.CharField(verbose_name='Название', max_length=255, blank=False)

    def __str__(self):
        return self.name

class Order(models.Model):
    STATUS_CHOICES = [
        ('new', "Новый"),
        ('confirmed', "Подтвержденный"),
        ('canceled', "Отмененный"),
    ]
    date = models.DateTimeField(verbose_name="Дата заказа", auto_now_add=True)
    status = models.CharField(max_length=255, verbose_name='Статус', choices=STATUS_CHOICES, default='new')
    rejection_reason = models.TextField(verbose_name="Причина отказа", blank=True)
    user = models.ForeignKey('User', verbose_name="Пользователь", on_delete=models.CASCADE)
    products = models.ManyToManyField("Product", through="ItemInOrder", related_name="orders")

    def status_verbose(self):
        return dict(self.STATUS_CHOICES)[self.status]

    def count_product(self):
        count = 0
        for item_order in self.iteminorder_set.all():
            count += item_order.quantity
        return count

    def get_overall_price(self):
        price = 0
        for item_order in self.iteminorder_set.all():
            price += item_order.price
        return price

    def __str__(self):
        return self.date.ctime() + "|" + self.user.full_name() + "|" + str(self.count_product())

class ItemInOrder(models.Model):
    order = models.ForeignKey('Order', verbose_name='Заказ', on_delete=models.CASCADE)
    quantity = models.IntegerField(verbose_name='Количество', blank=False, default=0)
    product = models.ForeignKey('Product', verbose_name="Товар", on_delete=models.CASCADE)
    price = models.IntegerField(verbose_name='Стоимость', blank=False, default=0)

    def __str__(self):
        return f"{self.order.user} - {self.product.name} - {str(self.quantity)} шт. - {self.product.price*self.quantity}р"

