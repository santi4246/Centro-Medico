SELECT * FROM Paciente

SELECT * FROM Turno
SELECT * FROM TurnoPaciente

SELECT * FROM Medico
SELECT * FROM MedicoEspecialidad


/*
SELECT * FROM TablaEjemplo
--Primero es necesario eliminar los registros de la tabla
DELETE FROM Medico
--Luego, ejecutar el siguiente comando que reinciará los registros comenzando por la P.K.
dbcc CHECKIDENT ('Medico', RESEED, 0)
--De esta manera se reinicializa el campo Identity
*/

DELETE FROM TurnoPaciente
dbcc CHECKIDENT ('TurnoPaciente', RESEED, 0)

--INSERT INTO Medico VALUES('Pablo', 'Ramirez')