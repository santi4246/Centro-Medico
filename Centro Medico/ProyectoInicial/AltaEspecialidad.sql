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

--EXEC AltaEspecialidad 'Neurolog�a'
--EXEC AltaEspecialidad 'Nutricionista'
--EXEC AltaEspecialidad 'Psiquiatr�a'
--EXEC AltaEspecialidad 'Endocrinolog�a'
--EXEC AltaEspecialidad 'Medicina General'
--EXEC AltaEspecialidad 'Traumatolog�a'
--EXEC AltaEspecialidad 'Ginecolog�a'
--EXEC AltaEspecialidad 'Obstetricia'
--EXEC AltaEspecialidad 'Cardiolog�a'
--EXEC AltaEspecialidad 'M�dico Ocupacional'

SELECT * FROM Especialidad