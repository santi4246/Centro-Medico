ALTER proc ALTA_Medico(
			@nombre varchar(50),
			@apellido varchar(20),
			@idespecialidad int,
			@descripcion varchar(50)
			)

as
set nocount on

IF NOT EXISTS(SELECT TOP 1 idmedico from Medico WHERE nombre=@nombre and apellido = @apellido)
BEGIN
	
	INSERT INTO Medico (nombre, apellido)
	VALUES (@nombre,@apellido)
		
	declare @auxIdmedico int
	set @auxIdmedico = @@IDENTITY

	INSERT INTO MedicoEspecialidad (Idmedico, idespecialidad,descripcion)
	VALUES (@auxIdmedico, @idespecialidad,@descripcion)

	print 'El Médico se agregó correctamente'
	return

	
END
ELSE
BEGIN
	print 'El Médico ya existe.'
	return
END
--EXEC ALTA_medico 'Gerardo','Martinez',1,'Medico residente'
