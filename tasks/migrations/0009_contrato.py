# Generated by Django 4.2.5 on 2023-11-10 03:05

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('tasks', '0008_alter_propiedades_foto1_alter_propiedades_foto2_and_more'),
    ]

    operations = [
        migrations.CreateModel(
            name='Contrato',
            fields=[
                ('id_contrato', models.AutoField(primary_key=True, serialize=False)),
                ('fecha_inicio', models.DateField()),
                ('fecha_fin', models.DateField()),
                ('descripcion', models.TextField()),
                ('cliente', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tasks.cliente')),
                ('propiedades', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tasks.propiedades')),
            ],
        ),
    ]
