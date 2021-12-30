-- Script que actualiza los turnos que se encuentran en estado pendiente pero que han vencido por ser del d�a anterior --
USE CentroMedico
GO
UPDATE Turno SET estadoTurno = 2 WHERE CONVERT(char(8), fechaTurno, 112) < CONVERT(char(8), GETDATE(), 112) AND estadoTurno = 0