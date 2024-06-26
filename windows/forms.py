from django import forms
from django.core.exceptions import ValidationError
from django.core.validators import RegexValidator
from windows.models import User


def validate_password_len(password):
    if len(password) < 6:
        raise ValidationError("Длина пароля не может быть меньше 6 символов")

class RegisterUserForm(forms.ModelForm):
    username = forms.CharField(label='Логин',
                               validators=[RegexValidator('^[a-zA-Z0-9-]+$',
                                                          message='Разрешены только латиница, цифры или тире')],
                               error_messages={
                                   'required': "Обязательное поле",
                                   'unique': "Данный логин занят"
                               })
    email = forms.CharField(label="Электронная почта",
                            error_messages={
                                'required': "Обязательное поле",
                                'invalid': "Не правильный формат электронной почты",
                                'unique': "Данная электронная почта уже занята"
                            })
    password = forms.CharField(label="Пароль",
                               widget=forms.PasswordInput,
                               validators=[validate_password_len],
                               error_messages={
                                   'required': "Обязательное поле"
                               })
    password2 = forms.CharField(label="Повтор пароля",
                                widget=forms.PasswordInput,
                                error_messages={
                                    'required': "Обязательное поле"
                                })
    rules = forms.BooleanField(required=True,
                               label="Согласие на обработку персональных данных",
                               error_messages={
                                   'required': "Обязательное поле"
                               })
    name = forms.CharField(label="Имя",
                           validators=[RegexValidator("^[а-яА-Я- ]+$", message='Разрешены только кириллица, пробел или тире')],
                           error_messages={
                               'required': "Обязательное поле"
                           })
    surname = forms.CharField(label="Фамилия",
                           validators=[RegexValidator("^[а-яА-Я- ]+$", message='Разрешены только кириллица, пробел или тире')],
                           error_messages={
                               'required': "Обязательное поле"
                           })
    patronymic = forms.CharField(
        label="Отчество",
        validators=[RegexValidator("^[а-яА-Я- ]+$", message='Разрешены только кириллица, пробел или тире')],
        required = False
    )

    def clean(self):
        super().clean()
        password = self.cleaned_data.get('password')
        password2 = self.cleaned_data.get('password2')
        if password and password2 and password != password2:
            raise ValidationError({
                'password2': ValidationError('Введенные пароли не совпадают', code='password_mismatch')
            })

    def save(self, commit=True):
        user = super().save(commit=False)
        user.set_password(self.cleaned_data.get('password'))
        if commit:
            user.save()
        return user

    class Meta:
        model = User
        fields = ('username', 'email', 'password', 'password2',
                  'name', 'surname', 'patronymic', 'rules')

class OrderForm(forms.ModelForm):
    def clean(self):
        status = self.cleaned_data.get('status')
        rejection_reason = self.cleaned_data.get('rejection_reason')
        if self.instance.status != 'new':
            raise forms.ValidationError({'status': "Статус можно сменить только у новых заказов"})
        if status == 'canceled' and not rejection_reason:
            raise forms.ValidationError({'rejection_reason': "При отказе нужно указать причину"})
