from django import forms
from django.core.exceptions import ValidationError
from .models import Cliente, Propiedades, Contrato, Convenio
from datetime import date
class ClienteForm(forms.ModelForm):
    class Meta:
        model = Cliente
        fields = ['dni', 'nombre_cliente', 'tel_cliente', 'email_cliente', 'direccion_cliente']

class PropiedadesForm(forms.ModelForm):
    class Meta:
        model = Propiedades
        fields = ['cliente', 'area_total', 'nro_habitaciones', 'precio_alq', 'descripcion', 'direccion', 'foto1', 'foto2', 'foto3']
        

class ContratoForm(forms.ModelForm):
    class Meta:
        model = Contrato
        fields = ['cliente', 'propiedades', 'fecha_inicio', 'fecha_fin', 'descripcion']
        widgets = {
            'fecha_inicio': forms.DateInput(attrs={'type': 'date'}, format='%Y-%m-%d'),
            'fecha_fin': forms.DateInput(attrs={'type': 'date'}, format='%Y-%m-%d'),
        }  
        labels = {
             'cliente': 'DNI Cliente',
            'propiedades': 'Propiedad ID'
        }

    def __init__(self, *args, **kwargs):
        super(ContratoForm, self).__init__(*args, **kwargs)
         
        if self.instance and self.instance.pk:
            self.fields['fecha_inicio'].initial = self.instance.fecha_inicio
            self.fields['fecha_fin'].initial = self.instance.fecha_fin


        # Establece automáticamente el ID de propiedad y el DNI del cliente si están disponibles en la solicitud
        if 'initial' in kwargs:
            initial_data = kwargs['initial']
            propiedades_id = initial_data.get('propiedades_id')
            cliente_dni = initial_data.get('cliente_dni')

            if propiedades_id:
                self.fields['propiedades'].initial = propiedades_id

            if cliente_dni:
                self.fields['cliente'].initial = cliente_dni

    def clean(self):
        cleaned_data = super().clean()
        fecha_inicio = cleaned_data.get("fecha_inicio")
        fecha_fin = cleaned_data.get("fecha_fin")
        propiedades = cleaned_data.get("propiedades")

        if fecha_inicio and fecha_fin:
            if fecha_inicio > fecha_fin:
                raise ValidationError("La fecha de inicio no puede ser posterior a la fecha de fin.")

            # Verificar si hay solapamiento de fechas con otros contratos para la misma propiedad
            contratos_existentes = Contrato.objects.filter(propiedades=propiedades)

            if self.instance and self.instance.pk:
                # Excluir el contrato actual si está siendo editado
                contratos_existentes = contratos_existentes.exclude(pk=self.instance.pk)

            for contrato in contratos_existentes:
                if (fecha_inicio <= contrato.fecha_fin and fecha_fin >= contrato.fecha_inicio):
                    raise ValidationError("Las fechas del contrato se solapan con otro contrato existente para esta propiedad.")

        return cleaned_data

class ConvenioForm(forms.ModelForm):
    class Meta:
        model = Convenio
        fields = ['id_contrato', 'fecha_inicio', 'fecha_fin', 'descripcion']
        widgets = {
            'fecha_inicio': forms.DateInput(attrs={'type': 'date'}, format='%Y-%m-%d'),
            'fecha_fin': forms.DateInput(attrs={'type': 'date'}, format='%Y-%m-%d'),
        }

    def __init__(self, *args, **kwargs):
        super(ConvenioForm, self).__init__(*args, **kwargs)

        if self.instance and self.instance.pk:
            self.fields['fecha_inicio'].initial = self.instance.fecha_inicio
            self.fields['fecha_fin'].initial = self.instance.fecha_fin

    def clean(self):
        cleaned_data = super().clean()
        fecha_inicio = cleaned_data.get("fecha_inicio")
        fecha_fin = cleaned_data.get("fecha_fin")
        id_contrato = cleaned_data.get("id_contrato")

        if fecha_inicio and fecha_fin:
            if fecha_inicio > fecha_fin:
                raise ValidationError("La fecha de inicio no puede ser posterior a la fecha de fin.")

            # Verificar solapamiento con otros convenios
            convenios_existentes = Convenio.objects.filter(id_contrato=id_contrato)

            if self.instance and self.instance.pk:
                convenios_existentes = convenios_existentes.exclude(pk=self.instance.pk)

            for convenio in convenios_existentes:
                if (fecha_inicio <= convenio.fecha_fin and fecha_fin >= convenio.fecha_inicio):
                    raise ValidationError("Las fechas del convenio se solapan con otro convenio existente para este contrato.")

        return cleaned_data
