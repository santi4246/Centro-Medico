/*
Es una estructura que es aplicada en un Script o Store Procedure y permite ejecutar un bloque de código, validarla y si se realizan los procedimientos deseados ejecutar
un commit, caso contrario revertirá el proceso. Hay que destacar que una vez iniciada la transacción, esta quedará en modo espera hasta que se realice un commit o rollback,
por lo que la tabla estará en modo lock.
Estructura:

BEGIN TRANSACTION
COMMIT TRANSACTION
ROLLBACK TRANSACTION
*/

/*SELECT * FROM Paciente
BEGIN TRANSACTION
	UPDATE Paciente SET telefono = 445 WHERE idPaciente = 1
IF @@ROWCOUNT = 1		-- @@ROWCOUNT, Variable de sistema que indica cuántos registros fueron modificados en la instrucción anterior.
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
	--DELETE FROM Turno WHERE estadoTurno = 0		Restaría eliminar de la tabla Turno
IF @@ROWCOUNT = 1 -- Aquí hay que tener en cuenta que la tabla Turno también está relacionada con la tabla turnoPaciente,
BEGIN			  -- por lo que aunque el condicional sea correcto no eliminará el registro.
	COMMIT TRANSACTION
END
ELSE
BEGIN
	ROLLBACK TRANSACTION
END