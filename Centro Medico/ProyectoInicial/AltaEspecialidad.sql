ALTER PROC AltaEspecialidad(	
	@especialidad varchar(30)
)

AS

SET NOCOUNT ON

IF NOT EXISTS (SELECT * FROM Especialidad WHERE especialidad = @especialidad)
BEGIN
	INSERT INTO Especialidad(especialidad)
	VALUES(@especialidad)
	PRINT 'Los datos han sido cargado exitosamente'
	RETURN
END

ELSE
BEGIN
	PRINT 'Los datos consultados han sido ingresados previamente'
	RETURN
END

--EXEC AltaEspecialidad 'Neurología'
--EXEC AltaEspecialidad 'Nutricionista'
--EXEC AltaEspecialidad 'Psiquiatría'
--EXEC AltaEspecialidad 'Endocrinología'
--EXEC AltaEspecialidad 'Medicina General'
--EXEC AltaEspecialidad 'Traumatología'
--EXEC AltaEspecialidad 'Ginecología'
--EXEC AltaEspecialidad 'Obstetricia'
--EXEC AltaEspecialidad 'Cardiología'
--EXEC AltaEspecialidad 'Médico Ocupacional'

SELECT * FROM Especialidad