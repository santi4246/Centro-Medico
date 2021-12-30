DECLARE @fecha char(12) -- 202112291250 correspondiente a año, mes, día, hora, minutos
DECLARE @path varchar(100)
DECLARE @name varchar(20)

SET @fecha = CONVERT(char(8), GETDATE(), 112) + REPLACE(CONVERT(char(5), GETDATE(), 108), ':', '')
SET @path = 'C:\Backup_CentroMedico\CentroMedico' + @fecha + '.bak'
SET @name = 'CentroMedico' + @fecha

BACKUP DATABASE CentroMedico
TO DISK = @path
WITH NO_COMPRESSION, NAME = @name


/*
En algunas versiones de SQL Server 18 y posteriores el componente Server Agent no se encuentra disponible por lo que no se puede ejecutar un proceso JOB. Se puede realizar
una emulación de este proceso mediante la ejecución de un Script de forma automática. Los pasos son los siguientes:
1° - Crear una carpeta en el directorio por defecto donde se ejecuta el path (C:\Backup_CentroMedico)
2° - Dentro de la carpeta se encontrarán dos archivos, el Script con terminación .sql y un archivo .bat que ejecutará el Script con las siguientes sentencias:
		SQLCMD -s .\192.168.0.7 -i C:\Backup_CentroMedico\Backup.sql
3° - Una vez realizado los pasos anteriores, se programará una tarea en Windows con el programador de tareas para que ejecute el programa .bat con las especificaciones dadas.

Para que se realicen estas instrucciones se deberá contar con la herramienta cmdsql que se puede descargar de forma gratuita.
*/