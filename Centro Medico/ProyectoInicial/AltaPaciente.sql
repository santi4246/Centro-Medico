ALTER proc AltaPaciente(
			@DNI varchar(20),
			@nombre varchar(50),
			@apellido varchar(50),
			@fechaNacimiento varchar(8),
			@domicilio varchar(50),
			@idPais char(3),
			@telefono varchar(20)='',
			@email varchar(30),
			@observacion varchar(1000)=''
			)

AS

SET NOCOUNT ON

-- Generación de retardo en milisegundos para comprobación de Traza en SQL Server Profiler

DECLARE @a bigint = 0
WHILE @a <= 15000000
	SET @a = @a + 1

-- Mediante una Traza podemos realizar la comprobación de los Store Procedure y otros objetos de SQL Server y guardarlos como tablas para futuras referencias
-- SELECT * FROM TrazaMaster


IF NOT EXISTS(SELECT * from Paciente WHERE DNI = @DNI)
BEGIN
	INSERT INTO Paciente (DNI, nombre, apellido, fechaNacimiento, domicilio, idPais, telefono, email, observacion)
	VALUES (@DNI, @nombre, @apellido, @fechaNacimiento, @domicilio, @idPais, @telefono, @email, @observacion)
	PRINT 'Los datos del paciente se agregaron correctamente'
	RETURN
END
ELSE
BEGIN
	PRINT 'El paciente ya ha sido ingresado.'
	RETURN
END

--EXEC AltaPaciente '17289145','Eduardo','Altamirano','19890615','calle 2','COL','3924789156','edu@live.com','Paciente hipertenso'
--EXEC AltaPaciente '32948180','Alicia','Valenzuela','19780407','calle 3','ARG','3434654198','aliciamaravilla@gmail.com','Paciente sin diagnóstico'
--EXEC AltaPaciente '29849665','María','Ramírez','19921008','calle 4','BRA','3784956182','mari_ram@hotmail.com','Paciente análisis de sangre'