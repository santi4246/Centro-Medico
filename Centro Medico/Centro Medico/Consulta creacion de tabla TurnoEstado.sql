--SET ANSI_NULLS ON
--GO

--SET QUOTED_IDENTIFIER ON
--GO

--CREATE TABLE [dbo].[TurnoEstado](
	--[idestado] [smallint] NOT NULL,
	--[descripcion] [varchar](50) NULL,
 --CONSTRAINT [PK_TurnoEstado] PRIMARY KEY CLUSTERED 
--(
	--[idestado] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--) ON [PRIMARY]
--GO

INSERT INTO TurnoEstado VALUES(0, 'Pendiente')
INSERT INTO TurnoEstado VALUES(1, 'Realizado')
INSERT INTO TurnoEstado VALUES(2, 'Cancelado')