ALTER PROC AltaMedico(
	@nombre varchar(50),
	@apellido varchar(50),
	@idEspecialidad int,
	@descripcion varchar(50)
)

AS

SET NOCOUNT ON --Elimina mensaje de consola de columna afectada

IF NOT EXISTS (SELECT TOP 1 idMedico FROM Medico WHERE nombre = @nombre AND apellido = @apellido)

BEGIN
	INSERT INTO Medico (nombre, apellido)
	VALUES(@nombre, @apellido)

	DECLARE @auxIdMedico int
	SET @auxIdMedico = @@IDENTITY

	INSERT INTO MedicoEspecialidad(idMedico, idEspecialidad, descripcion)
	VALUES(@auxIdMedico, @idEspecialidad, @descripcion)

	PRINT 'El Médico ha sido registrado correctamente'
	RETURN
END

ELSE

BEGIN
	PRINT 'El Médico ya existe en los registros'
	RETURN
END

--EXEC AltaMedico 'Gerardo', 'Martínez', 1, 'Médico Residente'

/*
SELECT * FROM Medico
SELECT * FROM MedicoEspecialidad
*/

/*
SELECT * FROM TablaEjemplo
--Primero es necesario eliminar los registros de la tabla
DELETE FROM Medico
--Luego, ejecutar el siguiente comando que reinciará los registros comenzando por la P.K.
dbcc CHECKIDENT ('Medico', RESEED, 0)
--De esta manera se reinicializa el campo Identity
*/

/*
INSERT INTO Especialidad VALUES('Clínica Médica')
SELECT * FROM Especialidad
*/