# Generated by Django 2.2.14 on 2021-10-18 04:38

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0009_orderitem_quantity'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='item',
            name='quantity',
        ),
        migrations.AddField(
            model_name='item',
            name='description',
            field=models.TextField(null=True),
        ),
    ]
