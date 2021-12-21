ALTER PROC AltaTurno(
	@fecha char(14), --20200315	12:00
	@idPaciente paciente,
	@idMedico medico,
	@observacion observacion = ''
)

AS

/*
Estado = 0 (Pendiente)
Estado = 1 (Realizado)
Estado = 2 (Cancelado)
*/

SET NOCOUNT ON --Elimina mensaje de consola de columna afectada

IF NOT EXISTS (SELECT TOP 1 idTurno FROM Turno WHERE fechaTurno = @fecha)
BEGIN
	INSERT INTO Turno(fechaTurno, estadoTurno, observacion) --Campos de la tabla
	VALUES (@fecha, 0, @observacion)--Variables especificados en el Store Procedure
	DECLARE @auxIdTurno turno
	SET @auxIdTurno = @@IDENTITY --Comando de sistema que devuelve el último valor insertado en la Tabla Turno
	INSERT INTO TurnoPaciente(idTurno, idPaciente, idMedico)
	VALUES (@auxIdTurno, @idPaciente, @idMedico)
	PRINT 'Turno agregado correctamente'
	RETURN
END
ELSE
BEGIN
	PRINT 'El turno ya ha sido ingresado'
	RETURN
END

--Si el médico no está dado de alta, al cargar un turno arrojará error por la llave foránea
EXEC AltaTurno '20210218 09:15', 2, 1, 'Observacion'
/*
SELECT * FROM Turno
SELECT * FROM TurnoPaciente
SELECT * FROM Medico
SELECT * FROM Paciente
*/