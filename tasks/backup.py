import os
import subprocess
from django.conf import settings
import shutil

def realizar_backup_mysql():
    db_name = 'WanhuaInmobilaria'  # Nombre de tu base de datos
    backup_directory = 'backups'
    
    # Obtener la ruta del directorio del proyecto Django
    base_dir = settings.BASE_DIR
    
    backup_file = os.path.join(base_dir, backup_directory, f'{db_name}.sql')

    # Asegúrate de que la carpeta de backups exista
    os.makedirs(os.path.join(base_dir, backup_directory), exist_ok=True)

    # Configuración de la ruta al directorio de instalación de MySQL
    base_dir_mysql = "C:\\Program Files\\MySQL\\MySQL Server 8.2"
    mysql_bin_dir = os.path.join(base_dir_mysql, 'bin')

    # Agregar la ruta de MySQL al PATH
    os.environ['PATH'] = f'{mysql_bin_dir};{os.environ["PATH"]}'

    # Comando para realizar el backup de MySQL
    mysqldump_path = shutil.which('mysqldump')
    if not mysqldump_path:
        print("mysqldump no encontrado en el sistema. Verifica la instalación.")
        return False

    # Configuración del comando para el backup
    command = [
        mysqldump_path,
        "-u", settings.DATABASES['default']['USER'],
        f"-p{settings.DATABASES['default']['PASSWORD']}",
        db_name
    ]

    print(f"Backup file path: {backup_file}")  # Agregar este print para verificar el path

    # Ejecutar el comando
    try:
        process = subprocess.Popen(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        output, error = process.communicate()

        if process.returncode == 0:
            with open(backup_file, 'w') as file:
                file.write(output.decode())
            return True
        else:
            print(f"Error al ejecutar el comando: {error.decode()}")
            return False
    except subprocess.CalledProcessError:
        return False
