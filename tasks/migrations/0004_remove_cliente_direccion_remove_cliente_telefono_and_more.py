# Generated by Django 4.2.5 on 2023-09-16 14:56

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('tasks', '0003_alter_cliente_direccion_alter_cliente_dni'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='cliente',
            name='direccion',
        ),
        migrations.RemoveField(
            model_name='cliente',
            name='telefono',
        ),
        migrations.AddField(
            model_name='cliente',
            name='apellido',
            field=models.CharField(default='NULL', max_length=100),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='cliente',
            name='tipo_cliente',
            field=models.CharField(choices=[('propietario', 'Propietario'), ('inquilino', 'Inquilino')], default='NULL', max_length=20),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='cliente',
            name='id',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
    ]