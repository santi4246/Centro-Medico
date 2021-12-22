ALTER proc ALTA_Paciente(
			@dni varchar(20),
			@nombre varchar(50),
			@apellido varchar(50),
			@fnacimiento varchar(8),
			@domicilio varchar(50),
			@idpais char(3),
			@tel varchar(20)='',
			@email varchar(30),
			@observacion varchar(1000)=''
			)

as

IF NOT EXISTS(SELECT * from Paciente WHERE dni=@dni)
BEGIN
	INSERT INTO Paciente (dni,nombre,apellido,fnacimiento,domicilio,idpais,telefono,email,observacion)
	VALUES (@dni,@nombre,@apellido,@fnacimiento,@domicilio,@idpais,@tel,@email,@observacion)
	print 'El paciente se agregó correctamente'
	return
END
ELSE
BEGIN
	print 'El paciente ya existe.'
	return
END

--exec ALTA_Paciente '2324324','Jorge','Lopez','20180518','calle 1','PER','','jorgelopez@gmail.com',''
