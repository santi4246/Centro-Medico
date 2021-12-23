ALTER proc AltaTurno(
			@fecha char(14), --20190215 12:00
			@idpaciente paciente,
			@idmedico medico,
			@observacion observacion=''
			)

as

/*
ESTADO = 0 (pendiente)
ESTADO = 1 (realizado)
ESTADO = 2 (cancelado)

*/
SET NOCOUNT ON

IF NOT EXISTS(SELECT TOP 1 idturno from Turno WHERE fechaturno=@fecha)
BEGIN
	INSERT INTO Turno (fechaTurno,estadoTurno,observacion)
	VALUES (@fecha,0,@observacion)

	declare @auxIdturno turno
	set @auxIdturno = @@IDENTITY

	INSERT INTO TurnoPaciente (idturno,idpaciente,idmedico)
	VALUES (@auxIdturno,@idpaciente,@idmedico)

	print 'El turno se agregó correctamente'
	return

	
END
ELSE
BEGIN
	print 'El turno ya existe.'
	return
END

--EXEC AltaTurno '20190218 09:15', 1, 1,'Observación'