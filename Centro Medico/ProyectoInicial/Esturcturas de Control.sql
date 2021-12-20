/*Estructuras de c�digo para evaluaci�n y toma de decisiones*/

/*Instrucciones:
IF, BEGIN END, EXISTS, WHILE, RETURN, BREAK, TRY CATCH
*/

--INSTRUCCI�N IF ELSE, BEGIN END:
/*
DECLARE @idPaciente int
DECLARE @idTurno int
SET @idPaciente = 3

IF @idPaciente = 3 --Debemos especificar qu� instrucciones ir�n dentro del bloque condicional
BEGIN
	SET @idTurno = 20
	SELECT * FROM Paciente WHERE idPaciente = @idPaciente
	print @idTurno
	IF EXISTS(SELECT* FROM Paciente WHERE idPaciente = 2)
		print 'Existe'
END
*/
/*
ELSE
BEGIN
	print 'No se cumpli� la condici�n'
END
*/

--INSTRUCCI�N EXISTS
--IF EXISTS(SELECT* FROM Paciente WHERE idPaciente = 2) Espera una consulta de selecci�n y devuelve un valor booleano True o False

--El bucle WHILE
/*
DECLARE @contador int = 0
WHILE @contador <= 10
BEGIN
	print @contador
	SET @contador = @contador + 1
END
*/

--El condicional CASE
/*
DECLARE  @valor int
DECLARE @resultado CHAR(10) = ''
SET @valor = 20

SET @resultado = (CASE WHEN @valor = 10 THEN 'ROJO'
					WHEN @valor = 20 THEN 'VERDE'
					WHEN @valor = 30 THEN 'AZUL'
				END)

print @resultado

SELECT *,(CASE WHEN estadoTurno = 1 THEN 'VERDE'
				WHEN estadoTurno = 2 THEN 'ROJO'
				WHEN estadoTurno = 3 THEN 'AZUL'
				ELSE 'GRIS'
				END) AS colorTurno FROM Turno
*/

--INSTRUCCIONES RETURN, BREAK

--RETURN fuerza la salida a consola
--BREAK rompe el bloque de c�digo actual pero contin�a con la ejecuci�n de c�digo posterior

DECLARE @contador int = 0

WHILE @contador <= 10
BEGIN
	print @contador
	SET @contador = @contador + 1
	IF @contador = 3
		--RETURN
		BREAK
END
print 'Sigue ejecut�ndose'


--INSTRUCCION TRY CATCH
--Manejo de errores en tiempo de ejecuci�n

BEGIN TRY
	SET @contador = 'texto'
END TRY

BEGIN CATCH
	print 'Tipo de datos incorrecto de la variable @contador'
END CATCH