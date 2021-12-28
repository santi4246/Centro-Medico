/* 
El Trigger es un bloque de código que se dispara ante eventos tales como INSERT, UPDATE y DELETE.
Permite realizar acciones determinadas como almacenar un registro de log en relación a la información que se guardó, 
cargar datos en otra tabla, emitir una alerta o guardar datos para que esa información se envíe mediante un mail, y
monitorear la información.

-- Creación de Tabla PacienteLog

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