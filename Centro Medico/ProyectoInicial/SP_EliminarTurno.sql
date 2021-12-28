/*Store Procedure que elimina un Turno cargado previamente*/

ALTER PROC SP_EliminarTurno(
	@idTurno Turno
)

AS

SET NOCOUNT ON

IF EXISTS(SELECT * FROM Turno WHERE idTurno = @idTurno)
BEGIN 
	DELETE FROM TurnoPaciente WHERE idTurno = @idTurno
	DELETE FROM Turno WHERE idTurno = @idTurno
END

ELSE	
BEGIN
	SELECT 0 AS RESULTADOS
END

-- Ejecución del Script --
--EXEC SP_EliminarTurno 1