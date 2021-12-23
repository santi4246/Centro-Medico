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

--EXEC AltaPaciente '2324324','Jorge','Lopez','20180518','calle 1','PER','','jorgelopez@gmail.com',''