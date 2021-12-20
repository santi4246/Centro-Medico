--Ejercicio de ejemplo sobre una tabla con Primary Key que necesitamos reiniciar los campos
INSERT INTO TablaEjemplo VALUES (1)

SELECT * FROM TablaEjemplo
--Primero es necesario eliminar los registros de la tabla
DELETE FROM TablaEjemplo
--Luego, ejecutar el siguiente comando que reinciará los registros comenzando por la P.K.
dbcc CHECKIDENT ('TablaEjemplo', RESEED, 0)
--De esta manera se reinicializa el campo Identity