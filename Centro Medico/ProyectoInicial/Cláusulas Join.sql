/*
Cl�usula Inner Join
Obtiene los registros que coinciden en ambas tablas.
Permite cruzar tablas o campos que tengan en com�n para obtener resultados m�s amplios o que imvolucren a ambas tablas.
Como se trata de una consulta cruzada, es necesario a�adir un alias para referenciar los campos ya que se encuentran en ambas.
Las consultas deben hacerse por la Primary Key. En la cl�usula ON el primer campo debe ser el correspondiente a la tabla inmediata a la que se est� realizando la conexi�n,
por una cuesti�n de perfomance. Ej: ON T.idPaciente = P.idPaciente; ON P.idPaciente = T.idPaciente (la primera es la correcta)

SELECT * FROM Paciente P -- 
INNER JOIN TurnoPaciente T
ON T.idPaciente = P.idPaciente

*/

/*
Cl�usula Left Join
Obtiene los registros de la tabla izquierda y s�lo los que coinciden en la tabla derecha.
Permite obtener todos los registros de la tabla izquierda y s�lo los registros de la tabla derecha que coincidan con la cl�usula ON.

SELECT * FROM Paciente P -- 
LEFT JOIN TurnoPaciente T
ON T.idPaciente = P.idPaciente

*/

/*
Cl�usula Right Join
Obtiene los registros de la tabla derecha y s�lo los que coinciden en la tabla izquierda.
Permite obtener todos los registros de la tabla derecha y s�lo los registros de la tabla izquierda que coincidan con la cl�usula ON.

SELECT * FROM Paciente P -- 
RIGHT JOIN TurnoPaciente T
ON T.idPaciente = P.idPaciente

*/