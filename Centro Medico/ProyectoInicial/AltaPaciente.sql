ALTER PROC AltaPaciente(
	@dni varchar(20),
	@nombre varchar(50),
	@apellido varchar(50),
	@fechaNacimiento varchar(8),
	@domicilio varchar(50),
	@idPais varchar(3),
	@telefono varchar(20) = '',
	@email varchar(30),
	@observacion observacion = ''
)

AS

IF NOT EXISTS (SELECT * FROM Paciente WHERE DNI = @dni)
BEGIN
	INSERT INTO Paciente (dni, nombre, apellido, fNacimiento, domicilio, idPais, telefono, email, observacion) --Campos de la tabla
	VALUES (@dni, @nombre, @apellido, @fechaNacimiento, @domicilio, @idPais, @telefono, @email, @observacion)--Variables especificados en el Store Procedure
	PRINT 'Datos del paciente registrados correctamente'
	RETURN
END
ELSE
BEGIN
	PRINT 'El paciente ya ha sido ingresado'
	RETURN
END

EXEC AltaPaciente '35028893', 'Santiago', 'Romero', '19900207', 'Santos Domínguez 1529', 'ARG', '', 'santiago_pna@hotmail.com', ''