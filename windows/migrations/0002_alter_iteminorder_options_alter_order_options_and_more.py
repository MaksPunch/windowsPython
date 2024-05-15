# Generated by Django 5.0.5 on 2024-05-09 20:03

import django.core.validators
import windows.models
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('windows', '0001_initial'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='iteminorder',
            options={'verbose_name': 'Товар в заказе', 'verbose_name_plural': 'Товары в заказе'},
        ),
        migrations.AlterModelOptions(
            name='order',
            options={'verbose_name': 'Заказ', 'verbose_name_plural': 'Заказы'},
        ),
        migrations.AlterModelOptions(
            name='product',
            options={'verbose_name': 'Товар', 'verbose_name_plural': 'Товары'},
        ),
        migrations.RemoveField(
            model_name='product',
            name='country',
        ),
        migrations.AddField(
            model_name='product',
            name='cameras',
            field=models.CharField(default=1, max_length=255, verbose_name='Количество камер'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='product',
            name='colors',
            field=models.CharField(default=1, max_length=255, verbose_name='Цвета уплотнений'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='product',
            name='fulfillment',
            field=models.CharField(default=1, max_length=255, verbose_name='Исполнения'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='product',
            name='glass_unit',
            field=models.CharField(default=1, max_length=255, verbose_name='Тип стеклопакета'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='product',
            name='height',
            field=models.CharField(default=1, max_length=255, verbose_name='Высота комбинации рама-створка в световом проеме (типовой вариант)'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='product',
            name='material',
            field=models.CharField(default=1, max_length=255, verbose_name='Материал уплотнений'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='product',
            name='montage',
            field=models.CharField(default=1, max_length=255, verbose_name='Монтажная ширина, мм'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='product',
            name='profile',
            field=models.CharField(default=1, max_length=255, verbose_name='Профиль'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='product',
            name='rebate',
            field=models.CharField(default=1, max_length=255, verbose_name='Высота фальца, мм'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='product',
            name='resistance',
            field=models.CharField(default=1, max_length=255, verbose_name='Сопротивление теплопередаче (с установленным армированием), м²С/Вт'),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='product',
            name='photo_file',
            field=models.ImageField(blank=True, max_length=255, null=True, upload_to=windows.models.get_name_file, validators=[django.core.validators.FileExtensionValidator(allowed_extensions=['png', 'jpg', 'jpeg', 'webp'])], verbose_name='Фото товара'),
        ),
        migrations.DeleteModel(
            name='Characteristic',
        ),
    ]