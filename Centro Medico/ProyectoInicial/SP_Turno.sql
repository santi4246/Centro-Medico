/*Store Procedure que actualiza datos de Turno*/

ALTER PROC SP_Turno(
	@idTurno Turno,
	@estado int,
	@observacion observacion
)

AS

SET NOCOUNT ON

IF EXISTS(SELECT * FROM Turno WHERE idTurno = @idTurno)
BEGIN 
	UPDATE Turno SET estadoTurno = @estado, observacion = @observacion WHERE idTurno = @idTurno
END

ELSE	
BEGIN
	SELECT 0 AS RESULTADOS
END

-- Ejecución del Script --
--EXEC SP_Turno 1, 1, 'El paciente ha sido atendido'