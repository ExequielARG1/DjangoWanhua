# Generated by Django 4.2.5 on 2023-11-04 02:00

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('tasks', '0004_alter_propiedades_foto1_alter_propiedades_foto2_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='propiedades',
            name='foto1',
            field=models.ImageField(blank=True, default='../propiedades/fotos/default.jpg', null=True, upload_to='../propiedades/fotos/'),
        ),
        migrations.AlterField(
            model_name='propiedades',
            name='foto2',
            field=models.ImageField(blank=True, default='../propiedades/fotos/default.jpg', null=True, upload_to='../propiedades/fotos/'),
        ),
        migrations.AlterField(
            model_name='propiedades',
            name='foto3',
            field=models.ImageField(blank=True, default='../propiedades/fotos/default.jpg', null=True, upload_to='../propiedades/fotos/'),
        ),
    ]
