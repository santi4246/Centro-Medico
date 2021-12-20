--Funciones
--Función Max y Mín
/*SELECT MAX(idPaciente) FROM Paciente
SELECT apellido, MIN(idPaciente) FROM Paciente GROUP BY apellido*/

--Función SUM
--SELECT SUM(idpaciente), apellido FROM Paciente GROUP BY apellido

--Función AVG
--SELECT AVG(idpaciente) FROM Paciente

--Función COUNT
SELECT COUNT(*) FROM Paciente WHERE apellido = 'Pérez'

--Función HAVING
--SELECT estadoTurno FROM turno GROUP BY estadoTurno HAVING COUNT(estadoTurno) = 2