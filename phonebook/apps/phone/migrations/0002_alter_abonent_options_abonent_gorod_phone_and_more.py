# Generated by Django 4.0.3 on 2022-04-10 16:47

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('phone', '0001_initial'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='abonent',
            options={'ordering': ['id'], 'verbose_name': 'Абонент', 'verbose_name_plural': 'Абоненты'},
        ),
        migrations.AddField(
            model_name='abonent',
            name='gorod_phone',
            field=models.CharField(blank=True, max_length=100, verbose_name='Городской телефон'),
        ),
        migrations.AlterField(
            model_name='abonent',
            name='mobile_phone',
            field=models.CharField(blank=True, max_length=100, verbose_name='Сотовый телефон'),
        ),
    ]