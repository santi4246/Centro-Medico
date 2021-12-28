--Funciones
--Función Max y Mín
/*SELECT MAX(idPaciente) FROM Paciente
SELECT apellido, MIN(idPaciente) FROM Paciente GROUP BY apellido*/

--Función SUM
--SELECT SUM(idpaciente), apellido FROM Paciente GROUP BY apellido

--Función AVG
--SELECT AVG(idpaciente) FROM Paciente

--Función COUNT
--SELECT COUNT(*) FROM Paciente WHERE apellido = 'Pérez'

--Función HAVING
--SELECT estadoTurno FROM turno GROUP BY estadoTurno HAVING COUNT(estadoTurno) = 2

/*
Funciones Left Right
Permiten tratar variables de tipo varchar o char y manipular caracterees a la derecha o izquierda

DECLARE @variable1 varchar(20)
DECLARE @variable2 varchar(20)
SET @variable1 = 'Ramiro'
SET @variable2 = 'Gonzalez'
PRINT RIGHT(@variable1, 2) --Devuelve ro
PRINT LEFT(@variable1, 2) --Devuelve Ra
También se pueden concatenar
PRINT LEFT(@variable1, 1) + LEFT(@variable2, 1) --Devuelve RG
*/

/*
Funciones LEN
Permite contar la cantidad de caracteres de una variable varchar o char
Junto con el condicional IF también permite comparar la longitud entre cadenas
IF @var1 > @var2 -- Devolverá la cadena que tiene mayor relevancia en el abecedario
IF LEN(@var1) > LEN(@var2) --Devolverá la cadena con mayor longitud

DECLARE @variable1 varchar(20)
DECLARE @variable2 varchar(20)
SET @variable1 = 'Ramiro'
SET @variable2 = 'Gonzalez'
PRINT LEN(@variable1) --Devuelve 6
PRINT LEFT(@variable1, LEN(@variable1) -1) -- Devuelve Ramir
*/

/*
Funciones LOWER y UPPER
Permite formatear variables de tipo texto o campos de una tabla
LOWER modifica todos los caracteres a minúsculas
UPPER modifica todos los caracteres a mayúsculas

DECLARE @variable1 varchar(20)
DECLARE @variable2 varchar(20)
SET @variable1 = 'Ramiro'
SET @variable2 = 'Gonzalez'
PRINT LOWER(@variable1) --Devuelve ramiro
PRINT UPER(@variable1) --Devuelve RAMIRO
Podemos utilizar LEFT para tomar el primer caracter y pasarlo a mayúsculas
SET @variable1 = 'RAMIRO'
SET @variable2 = 'GONZALEZ'
PRINT UPPER(LEFT(@variable1, 1)) + LOWER(RIGHT(@variable1, LEN(@variable1)-1)) + ' ' +  UPPER(LEFT(@variable2, 1)) + LOWER(RIGHT(@variable2, LEN(@variable2)-1)) -- Devuelve Ramiro Gonzalez
*/

/*
Función REPLACE
Permite reemplazar un caracter por otro en una variable o campo de una tabla. Recibe 3 parámetros: cadena, caracter a reemplazar, caracter reemplazante
DECLARE @variable1 varchar(20)
DECLARE @variable2 varchar(20)
SET @variable1 = 'Ramir"o'
SET @variable2 = 'Gonz@alez'
SELECT REPLACE(@variable1, '"', '') -- Devuelve Ramiro
SELECT REPLACE(@variable2, '@', '') -- Devuelve Gonzalez
*/

/*
Función REPLICATE
Permite repetir un caracter o cadena de caracteres la cantidad de veces que le especifiquemos. Recibe 2 parámetros: el caracter que queremos que se repita y la cantidad de iteraciones
PRINT REPLICATE(0, 5)
*/

/*
Funciones LTRIM y RTRIM
Permiten eliminar espacios en una cadena de texto tanto a la izquiera como a la derecha.
DECLARE @variable1 varchar(20)
DECLARE @variable2 varchar(20)
SET @variable1 = '		Ramiro	'
SET @variable2 = 'Gonzalez		'
SELECT LTRIM(RTRIM(@variable1)) + ' ' + LTRIM(RTRIM(@variable2)) + '*' -- Devuelve Ramiro Gonzalez*
*/

/*
Función CONCAT
Permite concatenar 2 o más valores, sin restricciones de parámetros.
DECLARE @variable1 varchar(20)
DECLARE @variable2 varchar(20)
SET @variable1 = '		Ramiro	'
SET @variable2 = 'Gonzalez		'
SELECT CONCAT(LTRIM(RTRIM(@variable1)), ' ', LTRIM(RTRIM(@variable2))) -- Devuelve Ramiro Gonzalez
*/

/*
Funciones GETDATE y GETUTCDATE
Permiten almacenar en una tabla de campo la fecha y hora en que el registro ha sido creado.
SELECT GETDATE() -- Devuelve la fecha y hora actual (basado en el sistema donde está instalado SQL SERVER) en formato 2021-12-24 10:37:30:253
SELECT GETUTCDATE() --Devuelve la fecha y hora actual horario UTC (basado en las coordenadas del meridiano de Grenwich) en formato 2021-12-24 13:38:48:110

Hay que tener en cuenta que si la base de datos se encuentra en un país diferente a donde se está ejecutando la apliación, se deberá sumar o restar la diferencia
horaria para desplegar los resultados correctamente, en el caso que se utilice DATETIME.
*/

/*
Función DATEADD
Permite agregar a una fecha intervalos de tiempo (días, meses, horas, minutos, segundos, etc). Recibe 3 parámetros: intervalo que queremos actualizar, cantidad de días que queremos
agregar o restar, la fecha que queremos modificar
SELECT DATEADD(DAY, 2, GETDATE()) --Devuelve 2 días posteriores
SELECT DATEADD(DAY, -2, GETDATE()) --Devuelve 2 días anteriores
SELECT DATEADD(HOUR, 3, GETDATE()) --Devuelve 3 horas mas
SELECT DATEADD(MM, 2, GETDATE()) --Devuelve 2 meses mas
SELECT DATEADD(DD, 2, GETDATE()) --También acepta este parámetro para agregar días
Para minutos será mi, meses mm
*/

/*
Función DATEDIFF
Permite devolver la diferencia entre 2 fechas según el intervalo que especifiquemos. Recibe 3 parámetros: El intervalo, las 2 fechas que realizamos la comparación.
Es útil para establecer un rango de fechas.
SELECT DATEDIFF(YEAR, GETDATE(), '20170120') --Devuelve -4, que es la diferencia entre el año 2017 y 2021 contando desde el año más reciente
SELECT DATEDIFF(MONTH, GETDATE(), '20170120') --Devuelve -59, que es la diferencia entre la fecha actual y la fecha anterior en meses
SELECT DATEDIFF(YEAR, '20170120', GETDATE()) --Devuelve 4, que es la diferencia entre el año 2017 y 2021 contando desde el año más antiguo
*/

/*
Función DATEPART
Permite obtener un intervalo específico de una fecha. Recibe 2 parámetros: El intervalo y la fecha
SELECT DATEPART(MONTH, GETDATE()) --Devuelve 12, mes actual en que se ejecuta este ejercicio 24/12/2021
SELECT DATEPART(YEAR, GETDATE()) -- Devuelve 2021
SELECT DATEPART(DW, GETDATE()) --Devuelve 5, contando desde el día en que comienza la semana (domingo)
*/

/*
Función ISDATE
Permite evaluar si una fecha específica tiene el formato correcto o no mediante un valor booleano.
PRINT ISDATE(GETDATE()) --Retorna 1, equivalente a True
PRINT ISDATE('Cadena') --Retorna 0, equivalente a False
PRINT ISDATE('20210132') --Retorna 0, porque no existe la fecha
PRINT ISDATE('20210131') --Retorna 1, porque es una fecha válida
DECLARE @var1 varchar(20)
SET @var1 = '20211224'

IF ISDATE(@var1) = 1
BEGIN
	PRINT 'Fecha válida'
	RETURN
END

ELSE
	PRINT 'Fecha inválida'
	RETURN
*/

/*
Función CAST y CONVERT
Permiten convertir valores entre sí y tipos de datos al momento de visualizarlo, pero no modifica los valores. 
La diferencia entre CAST y CONVERT es que la primera realiza la conversión siempre que se respete el tipo de datos. 
Mientras que Convert realizará la conversión pero recibirá parámetros para ello.

DECLARE @numero money
SET @numero = 500.40
PRINT @numero

SELECT CAST(@numero AS int) AS numero -- Devuelve 500, ya que los tipos de datos enteros no llevan decimales. Además agrega el nombre de la columna 'numero'
SELECT CAST(idPaciente AS money) FROM Paciente -- Agrega decimales al campo de texto idPaciente

DECLARE @numero money
SET @numero = 500.40
PRINT @numero
PRINT CONVERT(INT, @numero) -- Realiza método similar a CAST

DECLARE @fecha DATETIME
SET @fecha = GETDATE()
PRINT @fecha
PRINT CONVERT(char(8), @fecha, 112) -- Devuelve el formato de fecha en YYYY-MM-DD '20211224'
PRINT CONVERT(char(8), @fecha, 104) -- Devuelve el formato de fecha en DD-MM-YYYY '24.12.2021'
PRINT CONVERT(char(8), @fecha, 111) -- Devuelve el formato de fecha en YYYY-MM-DD '2021/12/24'
*/

/*
Funciones Escalares
Permite retornar un valor mediante el proceso de una función interna

CREATE FUNCTION Concatenar(
	@apellido varchar(50),
	@nombre varchar(50)
)
RETURNS varchar(100)

AS

BEGIN
	DECLARE @Resultado varchar(100)
	SET @Resultado = @apellido + ', ' + @nombre
	RETURN @Resultado
END

SELECT dbo.Concatenar('López', 'Roberto')

CREATE FUNCTION ObtenerPais(
	@idPaciente Paciente
)
RETURNS varchar(50)

AS

BEGIN
	DECLARE @Pais varchar(50)
	SET @Pais = (SELECT PA.Pais FROM Paciente P
					INNER JOIN Pais PA
					ON PA.idPais = P.idPais
					WHERE idPaciente = @idPaciente)
	RETURN @Pais
END

SELECT dbo.ObtenerPais(1)
*/

/*
Funciones de Tipo Tabla
Permite retornar los registros de una tabla de forma temporal mediante el proceso interno de una función.

ALTER FUNCTION listaPaises()
RETURNS @paises TABLE(
	idPais char(3),
	Pais varchar(50)
)
AS
BEGIN
	INSERT INTO @paises VALUES ('ARG', 'ARGENTINA')
	INSERT INTO @paises VALUES('BOL', 'BOLIVIA')
	INSERT INTO @paises VALUES ('BRA', 'BRASIL')	
	INSERT INTO @paises VALUES('CHI', 'CHILE')
	INSERT INTO @paises VALUES('COL', 'COLOMBIA')
	INSERT INTO @paises VALUES('ECU', 'ECUADOR')
	INSERT INTO @paises VALUES('MEX', 'MEXICO')	
	INSERT INTO @paises VALUES('PAR', 'PARAGUAY')
	INSERT INTO @paises VALUES('PER', 'PERU')
	INSERT INTO @paises VALUES('URU', 'URUGUAY')
	RETURN
END

SELECT * FROM dbo.listaPaises()
*/