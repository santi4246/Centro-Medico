ALTER FUNCTION FechaTexto(
	@fecha datetime
)
RETURNS varchar(60)

AS

BEGIN
-- Declaración de variables --
	DECLARE @dia varchar(20)
	DECLARE @mes varchar(20)
	DECLARE @fechaTexto varchar(50)
-- Seteo de datos --
	SET @dia = (CASE WHEN DATEPART(dw, @fecha) = 1 THEN 'Domingo ' + CONVERT(char(2), DATEPART(dd, @fecha)) + ' de '
					 WHEN DATEPART(dw, @fecha) = 2 THEN 'Lunes ' + CONVERT(char(2), DATEPART(dd, @fecha)) + ' de '
					 WHEN DATEPART(dw, @fecha) = 3 THEN 'Martes ' + CONVERT(char(2), DATEPART(dd, @fecha)) + ' de '
					 WHEN DATEPART(dw, @fecha) = 4 THEN 'Miércoles ' + CONVERT(char(2), DATEPART(dd, @fecha)) + ' de '
					 WHEN DATEPART(dw, @fecha) = 5 THEN 'Jueves ' + CONVERT(char(2), DATEPART(dd, @fecha)) + ' de '
					 WHEN DATEPART(dw, @fecha) = 6 THEN 'Viernes ' + CONVERT(char(2), DATEPART(dd, @fecha)) + ' de '
					 WHEN DATEPART(dw, @fecha) = 7 THEN 'Sábado ' + CONVERT(char(2), DATEPART(dd, @fecha)) + ' de '
				END)

	SET @mes = (CASE WHEN DATEPART(mm, @fecha) = 1 THEN 'Enero'
					 WHEN DATEPART(mm, @fecha) = 2 THEN 'Febrero'
					 WHEN DATEPART(mm, @fecha) = 3 THEN 'Marzo'
					 WHEN DATEPART(mm, @fecha) = 4 THEN 'Abril'
					 WHEN DATEPART(mm, @fecha) = 5 THEN 'Mayo'
					 WHEN DATEPART(mm, @fecha) = 6 THEN 'Junio'
					 WHEN DATEPART(mm, @fecha) = 7 THEN 'Julio'
					 WHEN DATEPART(mm, @fecha) = 8 THEN 'Agosto'
					 WHEN DATEPART(mm, @fecha) = 9 THEN 'Septiembre'
					 WHEN DATEPART(mm, @fecha) = 10 THEN 'Octubre'
					 WHEN DATEPART(mm, @fecha) = 11 THEN 'Noviembre'
					 WHEN DATEPART(mm, @fecha) = 12 THEN 'Diciembre'
				END)
-- Muestro de datos --
SET @fechaTexto = @dia + @mes
RETURN @fechaTexto

END

-- PRINT dbo.FechaTexto('20211230')