/*
Es una estructura que es aplicada en un Script o Store Procedure y permite ejecutar un bloque de c�digo, validarla y si se realizan los procedimientos deseados ejecutar
un commit, caso contrario revertir� el proceso. Hay que destacar que una vez iniciada la transacci�n, esta quedar� en modo espera hasta que se realice un commit o rollback,
por lo que la tabla estar� en modo lock.
Estructura:

BEGIN TRANSACTION
COMMIT TRANSACTION
ROLLBACK TRANSACTION
*/

/*SELECT * FROM Paciente
BEGIN TRANSACTION
	UPDATE Paciente SET telefono = 445 WHERE idPaciente = 1
IF @@ROWCOUNT = 1		-- @@ROWCOUNT, Variable de sistema que indica cu�ntos registros fueron modificados en la instrucci�n anterior.
BEGIN
	COMMIT TRANSACTION
END
ELSE
BEGIN
	ROLLBACK TRANSACTION
END
*/

SELECT * FROM TurnoPaciente
BEGIN TRANSACTION
	DELETE FROM TurnoPaciente WHERE idTurno IN (SELECT idTurno FROM Turno WHERE estadoTurno = 0)
	--DELETE FROM Turno WHERE estadoTurno = 0		Restar�a eliminar de la tabla Turno
IF @@ROWCOUNT = 1 -- Aqu� hay que tener en cuenta que la tabla Turno tambi�n est� relacionada con la tabla turnoPaciente,
BEGIN			  -- por lo que aunque el condicional sea correcto no eliminar� el registro.
	COMMIT TRANSACTION
END
ELSE
BEGIN
	ROLLBACK TRANSACTION
END