--Funciones
--Funci�n Max y M�n
/*SELECT MAX(idPaciente) FROM Paciente
SELECT apellido, MIN(idPaciente) FROM Paciente GROUP BY apellido*/

--Funci�n SUM
--SELECT SUM(idpaciente), apellido FROM Paciente GROUP BY apellido

--Funci�n AVG
--SELECT AVG(idpaciente) FROM Paciente

--Funci�n COUNT
SELECT COUNT(*) FROM Paciente WHERE apellido = 'P�rez'

--Funci�n HAVING
--SELECT estadoTurno FROM turno GROUP BY estadoTurno HAVING COUNT(estadoTurno) = 2