# Generated by Django 2.2.14 on 2021-10-17 11:07

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0003_auto_20211017_1802'),
    ]

    operations = [
        migrations.AddField(
            model_name='item',
            name='category',
            field=models.CharField(choices=[('S', 'Shirt'), ('P', 'Pants'), ('U', 'Underwear')], default='S', max_length=1),
        ),
        migrations.AddField(
            model_name='item',
            name='color_label',
            field=models.CharField(choices=[('P', 'primary'), ('S', 'secondary'), ('D', 'danger')], default='P', max_length=1),
        ),
        migrations.AddField(
            model_name='item',
            name='label',
            field=models.CharField(choices=[('S', 'Small'), ('M', 'Medium'), ('L', 'Large')], default='S', max_length=1),
        ),
    ]
