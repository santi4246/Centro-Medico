SELECT * FROM Paciente

SELECT * FROM Turno
SELECT * FROM TurnoPaciente

SELECT * FROM Medico
SELECT * FROM MedicoEspecialidad

SELECT * FROM Especialidad

/*
SELECT * FROM TablaEjemplo
--Primero es necesario eliminar los registros de la tabla
DELETE FROM Medico
--Luego, ejecutar el siguiente comando que reinciará los registros comenzando por la P.K.
dbcc CHECKIDENT ('Medico', RESEED, 0)
--De esta manera se reinicializa el campo Identity
*/

DELETE FROM Medico
dbcc CHECKIDENT ('Medico', RESEED, 0)

--INSERT INTO Medico VALUES('Raúl', 'Hernández')
--INSERT INTO Medico VALUES('Pablo', 'Ramírez')