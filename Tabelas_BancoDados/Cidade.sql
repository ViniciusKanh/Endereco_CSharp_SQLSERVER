USE BD_CEP
GO

/****** Object:  Table [dbo].[CIDADE]    Script Date: 27/04/2022 23:29:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Cidade](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[ID_ESTADO] [int] NOT NULL,
	[CEP] [varchar](50) NULL,
 CONSTRAINT [PK_CIDADE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Cidade]  WITH CHECK ADD  CONSTRAINT [FK_CIDADE_ESTADO] FOREIGN KEY([ID_ESTADO])
REFERENCES [dbo].[Estado] ([ID])
GO

ALTER TABLE [dbo].[CIDADE] CHECK CONSTRAINT [FK_CIDADE_ESTADO]
GO


