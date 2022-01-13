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

-- Generaci�n de retardo en milisegundos para comprobaci�n de Traza en SQL Server Profiler

DECLARE @a bigint = 0
WHILE @a <= 15000000
	SET @a = @a + 1

-- Mediante una Traza podemos realizar la comprobaci�n de los Store Procedure y otros objetos de SQL Server y guardarlos como tablas para futuras referencias
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

EXEC AltaPaciente '45195444','Mar�a Luz','Schroeder','20180419','calle 2','ARG','155198459','mari_solcito@live.com.ar','Control Natal'
EXEC AltaPaciente '36648329','Fenicia Caren','Patat','19920315','Azcu�naga 1589','ARG','154498736','feniconaguante@yahoo.com.ar','Control Presi�n Arterial'
EXEC AltaPaciente '91742186','Juan Carlos','Ceballos','19470918','Salvador Dal� 1279','BOL','559488724','juan1ce@hotmail.com','Control Met�stasis'
EXEC AltaPaciente '92589447','Johannes','Da Silva','19631023','Edificio Coconuts 14B','BRA','779127983','laverdeamarela@gmail.com','Paciente dado de Alta'
EXEC AltaPaciente '35647154','Ludmila Anastasia','Schmidt','19980609','Arrayanes 245','ARG','154794521','lafachaludmi@live.com','Control embarazo'
EXEC AltaPaciente '93159487','Laura Patricia','Ram�rez','19900824','BV Andes Patag�nicos 1660','CHI','948526213','lov4ever@gmail.com','Control embarazo'
EXEC AltaPaciente '94649855','Alejandro Miguel','S�nchez Taboada','19970210','Los Frutales 15B','PER','495162195','programacionats@hotmail.com','Paciente dado de Alta'
EXEC AltaPaciente '38499557','Brian Kevin','�lvarez','20080727','Mar�a Sierra 359','ARG','499125488','brikevin@hotmail.com','Consulta General'
EXEC AltaPaciente '6498623','Patricia Alma','Gonz�lez','19561214','Federaci�n 390','ARG','156729845','almapato@live.com','Control Neurol�gico'
EXEC AltaPaciente '94498859','Romualdo Carlos','Brites','19790528','Racedo 760','Paraguay','195428454','guarani4ever@yahoo.com.ar','Paciente dado de Alta'

EXEC AltaPaciente 'DNI','Nombre','Apellido','fechaNacimiento','Domicilio','C�digo Pa�s','tel�fono','email','Observaci�n'




/*
SELECT * FROM Paciente

DELETE FROM Paciente
DELETE FROM PacienteLog
dbcc CHECKIDENT ('dbo.Paciente', RESEED, 0)
*/