/*
Tablas Temporales en Memoria
Este tipo de tablas van a existir mientras el Script se esté ejecutando.

DECLARE @Tabla1 TABLE(
	id int IDENTITY(1, 1),
	Pais varchar(50)
)
INSERT INTO @Tabla1 VALUES ('ARGENTINA')
INSERT INTO @Tabla1 VALUES ('MEXICO')
INSERT INTO @Tabla1 VALUES ('PERU')
INSERT INTO @Tabla1 VALUES ('COLOMBIA')
INSERT INTO @Tabla1 VALUES ('ECUADOR')
SELECT * FROM @Tabla1
*/
----------------------------
/*
Tablas Temporales Físicas
Se diferencia de la anterior en que continuará existiendo luego de la ejecución del Script pero dejará de existir al reiniciar el Servidor de la Base de Datos.
CREATE TABLE #Tabla2 (
	id int IDENTITY(1, 1),
	nombre varchar(50),
	apellido varchar(50)
)
INSERT INTO #Tabla2 VALUES ('Alejandro', 'López')
INSERT INTO #Tabla2 VALUES ('Rafael', 'Castillo')
INSERT INTO #Tabla2 VALUES ('Fernando', 'González')
SELECT * FROM #Tabla2

-- Eliminamos la tabla para liberar memoria cuando no la utilizamos.
DROP TABLE #Tabla2
*/

----------------------------
/*
Implementación de una tabla temporal en Store Procedure

-- Declaración de Tabla Temporal en Memoria
DECLARE @Turnos TABLE(
	id int IDENTITY(1, 1),
	idTurno Turno,
	idPaciente Paciente
	)
-- Declaración de variable de tipo Paciente y asignación de idPaciente
DECLARE @paciente Paciente
SET @paciente = 1

-- Inserción de registros en Tabla Temporal
INSERT INTO @Turnos (idTurno, idPaciente)
SELECT TP.idTurno, P.idPaciente FROM Paciente P
INNER JOIN TurnoPaciente TP
ON TP.idPaciente = P.idPaciente

-- Declaración de variables para el recorrido de la tabla temporal y necesarias del Script
DECLARE @iterador int, @total int
SET @iterador = 1
SET @total = (SELECT COUNT(*) FROM @Turnos)

-- Bucle y condicional para la extracción de los datos requeridos por idPaciente.
WHILE @iterador <= @total
BEGIN	
	IF (SELECT idPaciente FROM @Turnos WHERE id = @iterador) <> 1
	BEGIN
		DELETE FROM @Turnos WHERE id = @iterador
	END

	SET @iterador = @iterador + 1
END

-- Muestreo de Datos
SELECT * FROM Paciente P
	INNER JOIN @Turnos T
	ON T.idPaciente = P.idPaciente

-- Como es una tabla temporal, la misma se elimina cuando finaliza el Script resultando en una perfomance más óptima de los recursos.
*/