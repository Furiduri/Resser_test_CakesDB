USE [CakesDB]
GO
/****** Object:  Table [dbo].[tbl_cakes]    Script Date: 05/06/2024 03:28:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_cakes](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[cake]  AS (concat('cake',[pk_id])) PERSISTED NOT NULL,
	[fk_icing] [int] NOT NULL,
 CONSTRAINT [PK_cakes] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_icings]    Script Date: 05/06/2024 03:28:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_icings](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[icing] [varchar](50) NOT NULL,
	[consumed] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_icings] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_reserved_sprinkles]    Script Date: 05/06/2024 03:28:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_reserved_sprinkles](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_cake] [int] NOT NULL,
	[fk_sprinkle] [int] NOT NULL,
 CONSTRAINT [PK_tbl_reserved_sprinkles] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_sprinkles]    Script Date: 05/06/2024 03:28:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_sprinkles](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[sprinkle] [varchar](50) NOT NULL,
	[consumed] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_sprinkles] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_cakes] ON 
GO
INSERT [dbo].[tbl_cakes] ([pk_id], [fk_icing]) VALUES (1, 1)
GO
INSERT [dbo].[tbl_cakes] ([pk_id], [fk_icing]) VALUES (2, 2)
GO
INSERT [dbo].[tbl_cakes] ([pk_id], [fk_icing]) VALUES (3, 3)
GO
INSERT [dbo].[tbl_cakes] ([pk_id], [fk_icing]) VALUES (4, 4)
GO
INSERT [dbo].[tbl_cakes] ([pk_id], [fk_icing]) VALUES (5, 5)
GO
INSERT [dbo].[tbl_cakes] ([pk_id], [fk_icing]) VALUES (6, 6)
GO
INSERT [dbo].[tbl_cakes] ([pk_id], [fk_icing]) VALUES (7, 7)
GO
SET IDENTITY_INSERT [dbo].[tbl_cakes] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_icings] ON 
GO
INSERT [dbo].[tbl_icings] ([pk_id], [icing], [consumed]) VALUES (1, N'Glaseado de vainilla', 0)
GO
INSERT [dbo].[tbl_icings] ([pk_id], [icing], [consumed]) VALUES (2, N'Glaseado de chocolate', 1)
GO
INSERT [dbo].[tbl_icings] ([pk_id], [icing], [consumed]) VALUES (3, N'Glaseado de fresa', 1)
GO
INSERT [dbo].[tbl_icings] ([pk_id], [icing], [consumed]) VALUES (4, N'Glaseado de caramelo', 0)
GO
INSERT [dbo].[tbl_icings] ([pk_id], [icing], [consumed]) VALUES (5, N'Glaseado de limón', 0)
GO
INSERT [dbo].[tbl_icings] ([pk_id], [icing], [consumed]) VALUES (6, N'Glaseado de frambuesa', 1)
GO
INSERT [dbo].[tbl_icings] ([pk_id], [icing], [consumed]) VALUES (7, N'Glaseado de café', 0)
GO
SET IDENTITY_INSERT [dbo].[tbl_icings] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_reserved_sprinkles] ON 
GO
INSERT [dbo].[tbl_reserved_sprinkles] ([pk_id], [fk_cake], [fk_sprinkle]) VALUES (1, 1, 1)
GO
INSERT [dbo].[tbl_reserved_sprinkles] ([pk_id], [fk_cake], [fk_sprinkle]) VALUES (2, 1, 4)
GO
INSERT [dbo].[tbl_reserved_sprinkles] ([pk_id], [fk_cake], [fk_sprinkle]) VALUES (3, 1, 5)
GO
INSERT [dbo].[tbl_reserved_sprinkles] ([pk_id], [fk_cake], [fk_sprinkle]) VALUES (4, 2, 4)
GO
INSERT [dbo].[tbl_reserved_sprinkles] ([pk_id], [fk_cake], [fk_sprinkle]) VALUES (5, 2, 5)
GO
INSERT [dbo].[tbl_reserved_sprinkles] ([pk_id], [fk_cake], [fk_sprinkle]) VALUES (6, 3, 1)
GO
INSERT [dbo].[tbl_reserved_sprinkles] ([pk_id], [fk_cake], [fk_sprinkle]) VALUES (7, 3, 2)
GO
INSERT [dbo].[tbl_reserved_sprinkles] ([pk_id], [fk_cake], [fk_sprinkle]) VALUES (8, 3, 3)
GO
INSERT [dbo].[tbl_reserved_sprinkles] ([pk_id], [fk_cake], [fk_sprinkle]) VALUES (9, 4, 3)
GO
INSERT [dbo].[tbl_reserved_sprinkles] ([pk_id], [fk_cake], [fk_sprinkle]) VALUES (10, 5, 6)
GO
INSERT [dbo].[tbl_reserved_sprinkles] ([pk_id], [fk_cake], [fk_sprinkle]) VALUES (11, 5, 3)
GO
INSERT [dbo].[tbl_reserved_sprinkles] ([pk_id], [fk_cake], [fk_sprinkle]) VALUES (12, 2, 2)
GO
INSERT [dbo].[tbl_reserved_sprinkles] ([pk_id], [fk_cake], [fk_sprinkle]) VALUES (13, 4, 6)
GO
INSERT [dbo].[tbl_reserved_sprinkles] ([pk_id], [fk_cake], [fk_sprinkle]) VALUES (15, 4, 2)
GO
INSERT [dbo].[tbl_reserved_sprinkles] ([pk_id], [fk_cake], [fk_sprinkle]) VALUES (16, 5, 1)
GO
INSERT [dbo].[tbl_reserved_sprinkles] ([pk_id], [fk_cake], [fk_sprinkle]) VALUES (17, 6, 1)
GO
INSERT [dbo].[tbl_reserved_sprinkles] ([pk_id], [fk_cake], [fk_sprinkle]) VALUES (18, 6, 2)
GO
INSERT [dbo].[tbl_reserved_sprinkles] ([pk_id], [fk_cake], [fk_sprinkle]) VALUES (19, 6, 4)
GO
INSERT [dbo].[tbl_reserved_sprinkles] ([pk_id], [fk_cake], [fk_sprinkle]) VALUES (20, 7, 1)
GO
INSERT [dbo].[tbl_reserved_sprinkles] ([pk_id], [fk_cake], [fk_sprinkle]) VALUES (21, 7, 2)
GO
INSERT [dbo].[tbl_reserved_sprinkles] ([pk_id], [fk_cake], [fk_sprinkle]) VALUES (22, 7, 4)
GO
SET IDENTITY_INSERT [dbo].[tbl_reserved_sprinkles] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_sprinkles] ON 
GO
INSERT [dbo].[tbl_sprinkles] ([pk_id], [sprinkle], [consumed]) VALUES (1, N'azul', 0)
GO
INSERT [dbo].[tbl_sprinkles] ([pk_id], [sprinkle], [consumed]) VALUES (2, N'rojo', 0)
GO
INSERT [dbo].[tbl_sprinkles] ([pk_id], [sprinkle], [consumed]) VALUES (3, N'verder', 1)
GO
INSERT [dbo].[tbl_sprinkles] ([pk_id], [sprinkle], [consumed]) VALUES (4, N'amarillo', 0)
GO
INSERT [dbo].[tbl_sprinkles] ([pk_id], [sprinkle], [consumed]) VALUES (5, N'rosa', 0)
GO
INSERT [dbo].[tbl_sprinkles] ([pk_id], [sprinkle], [consumed]) VALUES (6, N'magenta', 1)
GO
SET IDENTITY_INSERT [dbo].[tbl_sprinkles] OFF
GO
ALTER TABLE [dbo].[tbl_icings] ADD  CONSTRAINT [DF_tbl_icings_consumed]  DEFAULT ((0)) FOR [consumed]
GO
ALTER TABLE [dbo].[tbl_sprinkles] ADD  CONSTRAINT [DF_tbl_sprinkles_consumed]  DEFAULT ((0)) FOR [consumed]
GO
ALTER TABLE [dbo].[tbl_cakes]  WITH CHECK ADD  CONSTRAINT [FK_tbl_cakes_tbl_icings] FOREIGN KEY([fk_icing])
REFERENCES [dbo].[tbl_icings] ([pk_id])
GO
ALTER TABLE [dbo].[tbl_cakes] CHECK CONSTRAINT [FK_tbl_cakes_tbl_icings]
GO
ALTER TABLE [dbo].[tbl_reserved_sprinkles]  WITH CHECK ADD  CONSTRAINT [FK_tbl_reserved_sprinkles_tbl_cakes] FOREIGN KEY([fk_cake])
REFERENCES [dbo].[tbl_cakes] ([pk_id])
GO
ALTER TABLE [dbo].[tbl_reserved_sprinkles] CHECK CONSTRAINT [FK_tbl_reserved_sprinkles_tbl_cakes]
GO
ALTER TABLE [dbo].[tbl_reserved_sprinkles]  WITH CHECK ADD  CONSTRAINT [FK_tbl_reserved_sprinkles_tbl_sprinkles] FOREIGN KEY([fk_sprinkle])
REFERENCES [dbo].[tbl_sprinkles] ([pk_id])
GO
ALTER TABLE [dbo].[tbl_reserved_sprinkles] CHECK CONSTRAINT [FK_tbl_reserved_sprinkles_tbl_sprinkles]
GO
