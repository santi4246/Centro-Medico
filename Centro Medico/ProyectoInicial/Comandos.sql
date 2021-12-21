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


--Cl�usulas--

--Cl�usula Where
--SELECT * FROM Paciente WHERE nombre = 'Roberto' and apellido = 'P�rez'
--DELETE * FROM Paciente WHERE nombre = 'Roberto' and apellido = 'P�rez'
--UPDATE Paciente SET observacion = 'Observaci�n modificada' WHERE idPaciente = 3

--Cl�usula TOP: permite seleccionar l�mite de registros de una tabla
--SELECT TOP 2 * FROM Paciente WHERE apellido = 'P�rez'
--SELECT TOP 2 * FROM Paciente
--SELECT TOP 1 * FROM Turno ORDER BY fechaTurno DESC

--Cl�usula Order by
--SELECT * FROM Paciente ORDER BY fNacimiento ASC

--Cl�usula Distinct: Agrupa todos los registros por un campo especificado
--SELECT DISTINCT apellido FROM Paciente

--Cl�usula Group By: Funciones de agrupamiento (m�s eficiente que Distinct)
--SELECT apellido FROM Paciente GROUP BY apellido

--Operadores: 

--Operador AND
--SELECT * FROM Paciente WHERE apellido = 'P�rez' AND nombre = 'Roberto' AND idPaciente = 7

--Operador OR
--SELECT * FROM Paciente WHERE apellido = 'P�rez' OR nombre = 'Roberto' OR idPaciente = 7

--Operador IN
--SELECT * FROM Turno WHERE estadoTurno IN(2, 1, 3)
--SELECT * FROM Paciente WHERE apellido IN('P�rez', 'Ram�rez', 'Gonz�lez')

--Operador LIKE
--SELECT * FROM Paciente WHERE nombre LIKE 'Rober%'		El s�mbolo % permite buscar cualquier resultado coincidente, y puede colocarse por delante '%ober%', por ejemplo

--Operador NOT (permite negar los operadores IN y LIKE)
--SELECT * FROM Paciente WHERE nombre NOT LIKE '%ober%'
--SELECT * FROM Paciente WHERE apellido NOT IN ('P�rez', 'Ram�rez', 'Gonz�lez')

--Operador BETWEEN
--SELECT * FROM Turno WHERE fechaTurno BETWEEN '20200301' AND '20200331 13:00:00'		El campo DateTime contempla tambi�n el horario en que se cargan los datos
--SELECT * FROM Turno WHERE estadoTurno BETWEEN 0 AND 1

--Combinaci�n de Operadores
--Resulta necesario darle prioridad de importancia a la agrupaci�n de operadores
--SELECT * FROM Paciente WHERE apellido = 'P�rez' AND (nombre = 'Roberto' OR idPaciente = 7 OR idPais = 'PER') AND idPaciente IN(6, 3)

--Ejecuci�n de Store Procedure:
--EXEC SP_paciente 3

SELECT * FROM Paciente