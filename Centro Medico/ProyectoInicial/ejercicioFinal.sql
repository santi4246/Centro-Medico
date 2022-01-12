/*Del documento Ejercicios de práctica.docx*/

USE [CentroMedico]
GO
/****** Object:  UserDefinedFunction [dbo].[listaPaises]    Script Date: 12/1/2022 11:31:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

INSERT INTO Facturacion.Pais VALUES ('ARG', 'ARGENTINA')
INSERT INTO Facturacion.Pais VALUES ('ARU', 'ARUBA')
INSERT INTO Facturacion.Pais VALUES ('BOL', 'BOLIVIA')
INSERT INTO Facturacion.Pais VALUES ('BRA', 'BRASIL')
INSERT INTO Facturacion.Pais VALUES ('CAR', 'CARIBE NEERLANDES')
INSERT INTO Facturacion.Pais VALUES ('CHI', 'CHILE')
INSERT INTO Facturacion.Pais VALUES ('COL', 'COLOMBIA')
INSERT INTO Facturacion.Pais VALUES ('CUR', 'CURAZAO')
INSERT INTO Facturacion.Pais VALUES ('ECU', 'ECUADOR')
INSERT INTO Facturacion.Pais VALUES ('GUA', 'GUAYANA FRANCESA')
INSERT INTO Facturacion.Pais VALUES ('GUY', 'GUYANA')
INSERT INTO Facturacion.Pais VALUES ('PAR', 'PARAGUAY')
INSERT INTO Facturacion.Pais VALUES ('PER', 'PERU')
INSERT INTO Facturacion.Pais VALUES ('SUR', 'SURINAM')
INSERT INTO Facturacion.Pais VALUES ('TRI', 'TRINIDAD Y TOBAGO')
INSERT INTO Facturacion.Pais VALUES ('URU', 'URUGUAY')
INSERT INTO Facturacion.Pais VALUES ('VEN', 'VENEZUELA')

SELECT * FROM Facturacion.Pais