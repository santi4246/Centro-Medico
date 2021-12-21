-- Comando Select
--SELECT idPaciente, nombre, apellido FROM paciente
--SELECT * FROM Paciente

-- Comando Insert
--INSERT INTO Paciente(nombre, apellido, fNacimiento, domicilio, idPais, telefono, email, observacion) VALUES ('Luis', 'Robles', '2017-01-04', 'Piedra Buena 21', 'ESP', '', '', '')
--SELECT * FROM Paciente WHERE apellido = 'Robles'

-- Comando Delete
--DELETE FROM Paciente WHERE idPaciente = 4

-- Comando Update
--UPDATE Paciente SET observacion = 'Pacientes creados desde User Interfaz'


--Cláusulas--

--Cláusula Where
--SELECT * FROM Paciente WHERE nombre = 'Roberto' and apellido = 'Pérez'
--DELETE * FROM Paciente WHERE nombre = 'Roberto' and apellido = 'Pérez'
--UPDATE Paciente SET observacion = 'Observación modificada' WHERE idPaciente = 3

--Cláusula TOP: permite seleccionar límite de registros de una tabla
--SELECT TOP 2 * FROM Paciente WHERE apellido = 'Pérez'
--SELECT TOP 2 * FROM Paciente
--SELECT TOP 1 * FROM Turno ORDER BY fechaTurno DESC

--Cláusula Order by
--SELECT * FROM Paciente ORDER BY fNacimiento ASC

--Cláusula Distinct: Agrupa todos los registros por un campo especificado
--SELECT DISTINCT apellido FROM Paciente

--Cláusula Group By: Funciones de agrupamiento (más eficiente que Distinct)
--SELECT apellido FROM Paciente GROUP BY apellido

--Operadores: 

--Operador AND
--SELECT * FROM Paciente WHERE apellido = 'Pérez' AND nombre = 'Roberto' AND idPaciente = 7

--Operador OR
--SELECT * FROM Paciente WHERE apellido = 'Pérez' OR nombre = 'Roberto' OR idPaciente = 7

--Operador IN
--SELECT * FROM Turno WHERE estadoTurno IN(2, 1, 3)
--SELECT * FROM Paciente WHERE apellido IN('Pérez', 'Ramírez', 'González')

--Operador LIKE
--SELECT * FROM Paciente WHERE nombre LIKE 'Rober%'		El símbolo % permite buscar cualquier resultado coincidente, y puede colocarse por delante '%ober%', por ejemplo

--Operador NOT (permite negar los operadores IN y LIKE)
--SELECT * FROM Paciente WHERE nombre NOT LIKE '%ober%'
--SELECT * FROM Paciente WHERE apellido NOT IN ('Pérez', 'Ramírez', 'González')

--Operador BETWEEN
--SELECT * FROM Turno WHERE fechaTurno BETWEEN '20200301' AND '20200331 13:00:00'		El campo DateTime contempla también el horario en que se cargan los datos
--SELECT * FROM Turno WHERE estadoTurno BETWEEN 0 AND 1

--Combinación de Operadores
--Resulta necesario darle prioridad de importancia a la agrupación de operadores
--SELECT * FROM Paciente WHERE apellido = 'Pérez' AND (nombre = 'Roberto' OR idPaciente = 7 OR idPais = 'PER') AND idPaciente IN(6, 3)

--Ejecución de Store Procedure:
--EXEC SP_paciente 3

SELECT * FROM Paciente