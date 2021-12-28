/* 
El Trigger es un bloque de c�digo que se dispara ante eventos tales como INSERT, UPDATE y DELETE.
Permite realizar acciones determinadas como almacenar un registro de log en relaci�n a la informaci�n que se guard�, 
cargar datos en otra tabla, emitir una alerta o guardar datos para que esa informaci�n se env�e mediante un mail, y
monitorear la informaci�n.

-- Creaci�n de Tabla PacienteLog

-- Registro de Paciente nuevo con el campo requerido para ejecutar el Trigger
*/

ALTER TRIGGER PacientesCreados ON Paciente
AFTER INSERT
AS

IF (SELECT idPais FROM inserted) = 'ARG'
BEGIN
	INSERT INTO PacienteLog(idPaciente, idPais, fechaAlta)
		SELECT i.idPaciente, i.idPais, GETDATE() FROM inserted i
END

-- SELECT * FROM PacienteLog