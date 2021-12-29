DECLARE @fecha char(12) -- 202112291250 correspondiente a año, mes, día, hora, minutos
DECLARE @path varchar(100)
DECLARE @name varchar(20)

SET @fecha = CONVERT(char(8), GETDATE(), 112) + REPLACE(CONVERT(char(5), GETDATE(), 108), ':', '')
SET @path = 'C:\Backup_CentroMedico\CentroMedico' + @fecha + '.bak'
SET @name = 'CentroMedico' + @fecha

BACKUP DATABASE CentroMedico
TO DISK = @path
WITH NO_COMPRESSION, NAME = @name