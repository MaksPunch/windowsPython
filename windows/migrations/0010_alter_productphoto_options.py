# Generated by Django 5.0.5 on 2024-05-15 10:14

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('windows', '0009_productphoto'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='productphoto',
            options={'verbose_name': 'Фотография товара', 'verbose_name_plural': 'Фотографии товара'},
        ),
    ]