# Generated by Django 4.2.5 on 2023-09-16 22:48

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('tasks', '0008_remove_cliente_garante_fecha_nacimiento_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='cliente',
            name='fecha_nacimiento',
        ),
    ]