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

DELETE FROM Turno
dbcc CHECKIDENT ('Turno', RESEED, 0)

/*Médicos*/
--INSERT INTO Medico VALUES('Raúl', 'Hernández')
--INSERT INTO Medico VALUES('Pablo', 'Ramírez')

/*Especialidades*/
--INSERT INTO Especialidad VALUES('Clínica Médica')
--INSERT INTO Especialidad VALUES('Traumatología')


/*Estado Turnos*/
--INSERT INTO TurnoEstado VALUES(0, 'Pendiente')
--INSERT INTO TurnoEstado VALUES(1, 'Realizado')
--INSERT INTO TurnoEstado VALUES(2, 'Cancelado')