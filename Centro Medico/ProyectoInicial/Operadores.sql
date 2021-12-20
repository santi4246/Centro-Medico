--Operadores Aritm�ticos + - * / %
/*
DECLARE @num1 decimal(9, 2) = 20
DECLARE @num2 decimal(9, 2) = 30
DECLARE @resultado decimal(9, 2)

SET @resultado = @num1 + @num2

print @resultado

--Tambi�n se pueden concatenar tipos de datos varchar con el operador aritm�tico +

DECLARE @var1 varchar(50) = 'Hola me llamo'
DECLARE @var2 varchar(50) = 'Santiago'

DECLARE @mensaje varchar(100)

SET @mensaje = @var1 + ' ' + @var2

print @mensaje
*/

--Operadores < > = <> -El operador <> significa distinto
DECLARE @num1 decimal(9, 2) = 20
DECLARE @num2 decimal(9, 2) = 30

IF @num2 <> @num1
BEGIN
	print 'si'
END

--Tambi�n se puede utilizar con cadenas de texto en las cuales se comprobar� el orden alfab�tico
DECLARE @texto1 varchar(50) = 'Hola me llamo Santiago'
DECLARE @texto2 varchar(50) = 'Hola me llamo Santiagp'

IF @texto1 < @texto2
BEGIN
	print 'si'
END