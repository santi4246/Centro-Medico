/*Store Procedure que realiza una consulta referente a todos los turnos filtrados por idPaciente.*/

ALTER PROC SP_TurnoPaciente(
	@idPaciente Paciente
)

AS
SET NOCOUNT ON

IF EXISTS(
	SELECT * FROM Paciente P
	INNER JOIN TurnoPaciente TP
	ON TP.idPaciente = P.idPaciente
	INNER JOIN Turno T
	ON T.idTurno = TP.idTurno
	INNER JOIN MedicoEspecialidad ME
	ON ME.idMedico = TP.idMedico
	WHERE P.idPaciente = @idPaciente
)

BEGIN
	SELECT * FROM Paciente P
	INNER JOIN TurnoPaciente TP
	ON TP.idPaciente = P.idPaciente
	INNER JOIN Turno T
	ON T.idTurno = TP.idTurno
	INNER JOIN MedicoEspecialidad ME
	ON ME.idMedico = TP.idMedico
	WHERE P.idPaciente = @idPaciente	-- Filtramos el idPaciente por el parámetro recibido.
END

ELSE

BEGIN
	SELECT 0 AS RESULTADOS
END

-- Ejecución del Script --
--EXEC ST_TurnoPaciente 1