# Generated by Django 4.2.5 on 2023-10-25 00:10

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Cliente',
            fields=[
                ('dni', models.CharField(max_length=50, primary_key=True, serialize=False)),
                ('nombre_cliente', models.CharField(max_length=200)),
                ('tel_cliente', models.CharField(max_length=50)),
                ('email_cliente', models.EmailField(max_length=254)),
                ('direccion_cliente', models.CharField(max_length=300)),
            ],
        ),
    ]
