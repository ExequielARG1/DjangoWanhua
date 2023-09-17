# Generated by Django 4.2.5 on 2023-09-17 16:49

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('tasks', '0010_cliente_direccion_garante_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='cliente',
            name='direccion_garante',
        ),
        migrations.RemoveField(
            model_name='cliente',
            name='direccion_inquilino',
        ),
        migrations.AddField(
            model_name='cliente',
            name='fecha_nacimiento',
            field=models.DateField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='cliente',
            name='telefono',
            field=models.CharField(blank=True, max_length=20, null=True),
        ),
    ]
