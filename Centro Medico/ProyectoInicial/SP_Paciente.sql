/*Store Procedure que actualiza datos de Turno*/

ALTER PROC SP_Paciente(
	@idPaciente Paciente,
	@dni varchar(20), 
	@nombre varchar(50),
	@apellido varchar(50), 	 	
	@domicilio varchar(50), 	 
	@telefono varchar(20), 
	@email varchar(30) 	
)

AS 
SET NOCOUNT ON

IF EXISTS(SELECT * FROM Paciente WHERE idPaciente = @idPaciente)
BEGIN
	UPDATE Paciente SET DNI = @dni, 
	nombre = @nombre, 
	apellido = @apellido, 	
	domicilio = @domicilio, 	
	telefono = @telefono, 
	email = @email 	
END

ELSE
BEGIN
	SELECT 0 AS RESULTADOS
END

-- Ejecución del Script --
--EXEC SP_Paciente 1, 24895143, 'Fulano', 'Hellmans', 'Rivadavia 188', '3434598179', 'fulano@live.com.ar'