-- Las vistas almacenan una consulta en la base de datos de forma local y luego actualiza los datos para ejecutarse más rápida

CREATE VIEW PacientesTurnosPendientes AS

SELECT P.idPaciente, P.nombre, P.apellido, T.idTurno, T.estadoTurno FROM Paciente P
	INNER JOIN TurnoPaciente TP
	ON TP.idPaciente = P.idPaciente
	INNER JOIN Turno T
	ON T.idTurno = TP.idTurno
WHERE ISNULL(T.estadoTurno, 0) = 0

-- SELECT * FROM PacientesTurnosPendientes
-- SELECT * FROM VistasDiseño