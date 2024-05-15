from django.contrib.auth.models import AbstractUser
from django.db import models
from django.core.validators import FileExtensionValidator
from django.urls import reverse
from django.utils.crypto import get_random_string


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
    photo_file = models.ImageField(max_length=255, upload_to=get_name_file, blank=True, null=True, verbose_name="Фото товара",
                                   validators=[FileExtensionValidator(allowed_extensions=['png', 'jpg', 'jpeg', 'webp'])])
    profile = models.CharField(verbose_name="Профиль", max_length=255, blank=False)
    colors = models.CharField(verbose_name="Цвета уплотнений", max_length=255, blank=False)
    cameras = models.CharField(verbose_name="Количество камер", max_length=255, blank=False)
    montage = models.CharField(verbose_name="Монтажная ширина, мм", max_length=255, blank=False)
    rebate = models.CharField(verbose_name="Высота фальца, мм", max_length=255, blank=False)
    fulfillment = models.CharField(verbose_name="Исполнения", max_length=255, blank=False)
    material = models.CharField(verbose_name="Материал уплотнений", max_length=255, blank=False)
    glass_unit = models.CharField(verbose_name="Тип стеклопакета", max_length=255, blank=False)
    resistance = models.CharField(verbose_name="Сопротивление теплопередаче (с установленным армированием), м²С/Вт", max_length=255, blank=False)
    height = models.CharField(verbose_name="Высота комбинации рама-створка в световом проеме (типовой вариант)", max_length=255, blank=False)
    description = models.TextField(verbose_name="Описание", blank=False, default="")

    def get_absolute_url(self):
        return reverse('product', args=[str(self.id)])

    class Meta:
        verbose_name = 'Товар'
        verbose_name_plural = 'Товары'

    def __str__(self):
        return self.name

class Advantage(models.Model):
    name = models.CharField(verbose_name="Обозначение преимущества", max_length=255, blank=False)
    description = models.TextField(verbose_name="Описание преимущества", blank=False)
    product = models.ForeignKey('Product', verbose_name="Товар", on_delete=models.CASCADE)

    class Meta:
        verbose_name = "Преимущество"
        verbose_name_plural = "Преимущества"

    def __str__(self):
        return self.name


class ProductPhoto(models.Model):
    photo = models.ImageField(max_length=255, upload_to=get_name_file, blank=True, null=True, verbose_name="Фото товара",
                                     validators=[FileExtensionValidator(allowed_extensions=['png', 'jpg', 'jpeg', 'webp'])])
    product = models.ForeignKey('Product', verbose_name="Товар", on_delete=models.CASCADE)

    class Meta:
        verbose_name = 'Фотография товара'
        verbose_name_plural = "Фотографии товара"

class Order(models.Model):
    type_choices = [
        ("call", "Звонок"),
        ("measure", "Замер"),
        ('consultation', "Консультация"),
        ("pick", "Подбор")
    ]
    STATUS_CHOICES = [
        ('new', "Новый"),
        ('done', "Выполненный"),
        ('canceled', "Отмененный"),
    ]
    type = models.CharField(verbose_name="Тип заказа", max_length=255, choices=type_choices, blank=False, default="call")
    city = models.CharField(verbose_name="Город клиента", blank=False, max_length=255, default="")
    name = models.CharField(verbose_name="Имя клиента", blank=False, max_length=255, default="")
    phone = models.CharField(verbose_name="Телефон клиента", blank=False, max_length=11, default="")
    wishes = models.TextField(verbose_name="Пожелания", blank=True, default="")
    status = models.CharField(max_length=255, verbose_name='Статус', choices=STATUS_CHOICES, default='new')

    class Meta:
        verbose_name = 'Заказ'
        verbose_name_plural = 'Заказы'

    def type_verbose(self):
        return dict(self.type_choices)[self.type]

    def status_verbose(self):
        return dict(self.STATUS_CHOICES)[self.status]

    def __str__(self):
        return f"{self.status_verbose()} заказ на {self.type_verbose()} от {self.name} из г. {self.city}"
