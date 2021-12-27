/*
Cláusulas Union
Mientras que Inner permite unir resultados de dos tablas, Union permite unir dos resultados de dos consultas diferentes, y visualizarlos en la misma consulta.
Hay que tener en cuenta que los campos a consultar deben presentar la misma estructura o tipo de datos. La cláusula ALL no elimina las repeticiones, trae las consultas
una después de la otra.

SELECT * FROM Turno WHERE estadoTurno = 3
UNION ALL
SELECT * FROM Turno WHERE estadoTurno = 1

SELECT idTurno FROM Turno WHERE estadoTurno = 3
UNION
SELECT idPaciente FROM Paciente

*/