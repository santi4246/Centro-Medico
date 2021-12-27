/*Store Procedure que realiza una consulta referente a todos los turnos filtrados por idPaciente.*/

CREATE PROC ST_TurnoPaciente(
	@idPaciente Paciente
)

AS
SET NOCOUNT ON

SELECT * FROM Paciente P
INNER JOIN TurnoPaciente TP
ON TP.idPaciente = P.idPaciente
INNER JOIN Turno T
ON T.idTurno = TP.idTurno
AND TP.idPaciente = p.idPaciente
INNER JOIN MedicoEspecialidad ME
ON ME.idMedico = TP.idMedico
WHERE P.idPaciente = @idPaciente	-- Filtramos el idPaciente por el parámetro recibido.

--EXEC ST_TurnoPaciente 1