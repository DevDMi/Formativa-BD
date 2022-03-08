USE [Spotifake]
GO
/****** Object:  Table [dbo].[Artista]    Script Date: 31/10/2021 20:50:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artista](
	[Artista] [varchar](50) NULL,
	[id_Artista] [int] NOT NULL,
 CONSTRAINT [PK_Artista] PRIMARY KEY CLUSTERED 
(
	[id_Artista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Album]    Script Date: 31/10/2021 20:50:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Album](
	[Album] [varchar](50) NULL,
	[id_Album] [int] NOT NULL,
	[id_Artista] [int] NULL,
	[id_Banda] [int] NULL,
 CONSTRAINT [PK_Album] PRIMARY KEY CLUSTERED 
(
	[id_Album] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musicas]    Script Date: 31/10/2021 20:50:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musicas](
	[Musicas] [varchar](50) NULL,
	[id_Musica] [int] NOT NULL,
	[id_Album] [int] NULL,
 CONSTRAINT [PK_Musicas] PRIMARY KEY CLUSTERED 
(
	[id_Musica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[ViewArtistas]    Script Date: 31/10/2021 20:50:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE View [dbo].[ViewArtistas] 
as 
Select		
 Ms.Musicas,
 Ab.Album,
 Art.Artista,
 Ab.id_Album
From


Musicas as Ms
Join Album as Ab
	on Ab.id_Album = Ms.id_Album
	Join Artista as Art
	on Art.id_Artista = Ab.id_Artista




	
GO
/****** Object:  Table [dbo].[Banda]    Script Date: 31/10/2021 20:50:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banda](
	[Banda] [varchar](50) NOT NULL,
	[id_Banda] [int] NOT NULL,
 CONSTRAINT [PK_Banda] PRIMARY KEY CLUSTERED 
(
	[id_Banda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[ViewBanda]    Script Date: 31/10/2021 20:50:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE View [dbo].[ViewBanda] 
as 
Select		
 Ms.Musicas,
 Ab.Album,
 Bnd.Banda,
 Ab.id_Album
 
From


Musicas as Ms
Join Album as Ab
	on Ab.id_Album = Ms.id_Album
	Join Banda as Bnd
	on Bnd.id_Banda = Ab.id_Banda




	
GO
INSERT [dbo].[Album] ([Album], [id_Album], [id_Artista], [id_Banda]) VALUES (N'Purpose', 1, 5, NULL)
GO
INSERT [dbo].[Album] ([Album], [id_Album], [id_Artista], [id_Banda]) VALUES (N'i Love you', 2, NULL, 6)
GO
INSERT [dbo].[Album] ([Album], [id_Album], [id_Artista], [id_Banda]) VALUES (N'All we have is Now', 3, 2, NULL)
GO
INSERT [dbo].[Album] ([Album], [id_Album], [id_Artista], [id_Banda]) VALUES (N'Unorthodox Jukebox', 4, 3, NULL)
GO
INSERT [dbo].[Album] ([Album], [id_Album], [id_Artista], [id_Banda]) VALUES (N'Nothing but the beat', 5, 4, NULL)
GO
INSERT [dbo].[Album] ([Album], [id_Album], [id_Artista], [id_Banda]) VALUES (N'Pandora', 6, 6, NULL)
GO
INSERT [dbo].[Album] ([Album], [id_Album], [id_Artista], [id_Banda]) VALUES (N'Todos os Cantos', 7, 7, NULL)
GO
INSERT [dbo].[Album] ([Album], [id_Album], [id_Artista], [id_Banda]) VALUES (N'REMIXES', 8, 8, NULL)
GO
INSERT [dbo].[Album] ([Album], [id_Album], [id_Artista], [id_Banda]) VALUES (N'Meu Sonho', 9, 9, NULL)
GO
INSERT [dbo].[Album] ([Album], [id_Album], [id_Artista], [id_Banda]) VALUES (N'Zodiaco', 10, 10, NULL)
GO
INSERT [dbo].[Album] ([Album], [id_Album], [id_Artista], [id_Banda]) VALUES (N'A Rush of Blood to the Headh', 11, NULL, 1)
GO
INSERT [dbo].[Album] ([Album], [id_Album], [id_Artista], [id_Banda]) VALUES (N'V', 12, NULL, 4)
GO
INSERT [dbo].[Album] ([Album], [id_Album], [id_Artista], [id_Banda]) VALUES (N'Night Visions', 13, NULL, 2)
GO
INSERT [dbo].[Album] ([Album], [id_Album], [id_Artista], [id_Banda]) VALUES (N'Living Things', 14, NULL, 3)
GO
INSERT [dbo].[Album] ([Album], [id_Album], [id_Artista], [id_Banda]) VALUES (N'Session da Tarde 2', 15, NULL, 5)
GO
INSERT [dbo].[Artista] ([Artista], [id_Artista]) VALUES (N'Adam Levine', 1)
GO
INSERT [dbo].[Artista] ([Artista], [id_Artista]) VALUES (N'Alok', 2)
GO
INSERT [dbo].[Artista] ([Artista], [id_Artista]) VALUES (N'Bruno Mars
', 3)
GO
INSERT [dbo].[Artista] ([Artista], [id_Artista]) VALUES (N'David Guetta', 4)
GO
INSERT [dbo].[Artista] ([Artista], [id_Artista]) VALUES (N'Justin Bieber', 5)
GO
INSERT [dbo].[Artista] ([Artista], [id_Artista]) VALUES (N'Luisa Sonza', 6)
GO
INSERT [dbo].[Artista] ([Artista], [id_Artista]) VALUES (N'Marília Mendonça', 7)
GO
INSERT [dbo].[Artista] ([Artista], [id_Artista]) VALUES (N'Pedro Sampaio', 8)
GO
INSERT [dbo].[Artista] ([Artista], [id_Artista]) VALUES (N'Tarcísio do Acordeon', 9)
GO
INSERT [dbo].[Artista] ([Artista], [id_Artista]) VALUES (N'Xama', 10)
GO
INSERT [dbo].[Banda] ([Banda], [id_Banda]) VALUES (N'Coldplay', 1)
GO
INSERT [dbo].[Banda] ([Banda], [id_Banda]) VALUES (N'Imagine Dragons', 2)
GO
INSERT [dbo].[Banda] ([Banda], [id_Banda]) VALUES (N'Linkin Park', 3)
GO
INSERT [dbo].[Banda] ([Banda], [id_Banda]) VALUES (N'Maroon 5', 4)
GO
INSERT [dbo].[Banda] ([Banda], [id_Banda]) VALUES (N'Supercombo', 5)
GO
INSERT [dbo].[Banda] ([Banda], [id_Banda]) VALUES (N'The Neighbourhood', 6)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Mark My Words', 1, 1)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'I''ll Show You', 2, 1)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'What do you Mean', 3, 1)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Sorry', 4, 1)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Love Youself', 5, 1)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Company', 6, 1)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'No Pressure', 7, 1)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'No Sense', 8, 1)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'The Feeling', 9, 1)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Life is Worth Living', 10, 1)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Where Are U Now', 11, 1)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Children', 12, 1)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Purpose', 13, 1)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Been You', 14, 1)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Get Used To it', 15, 1)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'We Are', 16, 1)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Trust', 17, 1)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'All in it', 18, 1)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'How', 19, 2)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Afraid', 20, 2)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Everybody Watching Me', 21, 2)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Sweater Weather', 22, 2)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Let it Go', 23, 2)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Alleyways', 24, 2)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'WDYWFM', 25, 2)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Flawless', 26, 2)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Female Robbery', 27, 2)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Staying up', 28, 2)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Float', 29, 2)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Sunglasses at Night', 30, 3)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Teach Me', 31, 3)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Ameno', 32, 3)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Love Love', 33, 3)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Reunion', 34, 3)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Young Girls', 35, 4)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Locked Out of Heaven', 36, 4)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Gorilla', 37, 4)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Treasure', 38, 4)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Moonshine', 39, 4)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'When i Was Your Man', 40, 4)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Natalie', 41, 4)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Show Me', 42, 4)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Money Make Her Smile', 43, 4)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'If Knew', 44, 4)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'The Alphabeat', 45, 5)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Lunar', 46, 5)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Sunshine', 47, 5)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Little Bad Girl', 48, 5)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Metro Music', 49, 5)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Toy Story', 50, 5)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'The Future', 51, 5)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Dreams', 52, 5)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Paris', 53, 5)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Glasgow', 54, 5)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Eliane', 55, 6)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Garupa', 56, 6)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Não Vou Mais Parar', 57, 6)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Fazendo Assim', 58, 6)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Saudade Da Gente', 59, 6)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Bomba Relógio', 60, 6)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Pior que Possa Imaginar', 61, 6)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Apenas Eu', 62, 6)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Ciumeira', 63, 7)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Sem Sal', 64, 7)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Bem Pior que Eu', 65, 7)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Casa da Mãe Joana', 66, 7)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Bye Bye', 67, 7)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Bebi Liguei', 68, 7)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Passa Mal', 69, 7)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Amigo Emprestado', 70, 7)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Sabiá', 71, 7)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Bebaça', 72, 7)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Obrigado por Estragar Tudo', 73, 7)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Love â Queima Roupa', 74, 7)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Bota pra Tremer', 75, 8)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Vai Menina', 76, 8)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Chama Ela', 77, 8)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Sentadão', 78, 8)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Meu Sonho', 79, 9)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Eu Tenha a Senha', 80, 9)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Vaqueiro Ferido', 81, 9)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Hoje Dói', 82, 9)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Proteção de Tela', 83, 9)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Tem que ser Agora', 84, 9)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Imaturidade', 85, 9)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'A dor mais doida', 86, 9)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Coleção de Otário', 87, 9)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Amor Reserva', 88, 9)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'EuTô Aí', 89, 9)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Me Esqueça Se Puder', 90, 9)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Eu Gosto é de Problema', 91, 9)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Escorpião', 92, 10)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Gêmeos', 93, 10)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Leão', 94, 10)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Libra', 95, 10)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Capricórnio', 96, 10)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Áries', 97, 10)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Virgem', 98, 10)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Peixes', 99, 10)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Câncer', 100, 10)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Aquário', 101, 10)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'De Novo', 102, 10)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Politik', 103, 11)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'In My Place', 104, 11)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'God Put a Smile upon Your Face', 105, 11)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'The Scientist', 106, 11)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Clocks', 107, 11)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Daylight', 108, 11)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Green Eyes', 109, 11)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Warning Sign', 110, 11)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'A Whisper', 111, 11)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'A Rush of Blood to the Head', 112, 11)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Amsterdam', 113, 11)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Maps', 114, 12)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Animals', 115, 12)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'It Was Always You', 116, 12)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Unkiss Me', 117, 12)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Sugar', 118, 12)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Leaving California', 119, 12)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'In Your Pocket', 120, 12)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'New Love', 121, 12)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Coming Back For You', 122, 12)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Feelings', 123, 12)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'My Heart Is Open', 124, 12)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'This Summer', 125, 12)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Radiactive', 126, 13)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Tiptoe', 127, 13)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Its Time', 128, 13)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Demons', 129, 13)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'On Top of The World', 130, 13)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Amsterdam', 131, 13)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Hear Me', 132, 13)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Every Night', 133, 13)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Bleeding Out', 134, 12)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Underdog', 135, 13)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Nothing Left To Say ', 136, 13)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Cha-Ching', 137, 13)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Tokyo', 138, 13)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Lost in the Echo', 139, 14)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'In My Remains', 140, 14)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Burn it Down', 141, 14)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Lies Greed Misery', 142, 14)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'I''ll be Gone', 143, 14)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Castle of Glass', 144, 14)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Victimized', 145, 14)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Roads Untraveled', 146, 14)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Skin To Bone', 147, 14)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Until it Breaks', 148, 14)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Tinfoil', 149, 14)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Powerless', 150, 14)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Menino', 151, 15)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Grão de Areia', 152, 15)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Labirintite', 153, 15)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Bomba Relógio', 154, 15)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Memorial', 155, 15)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Se Eu Quiser', 156, 15)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Nós Somos Reais', 157, 15)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Não Dá Certo', 158, 15)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Cebolas', 159, 15)
GO
INSERT [dbo].[Musicas] ([Musicas], [id_Musica], [id_Album]) VALUES (N'Faz Parte', 160, 14)
GO
ALTER TABLE [dbo].[Album]  WITH CHECK ADD  CONSTRAINT [FK_Album_Artista] FOREIGN KEY([id_Artista])
REFERENCES [dbo].[Artista] ([id_Artista])
GO
ALTER TABLE [dbo].[Album] CHECK CONSTRAINT [FK_Album_Artista]
GO
ALTER TABLE [dbo].[Album]  WITH CHECK ADD  CONSTRAINT [FK_Album_Banda] FOREIGN KEY([id_Banda])
REFERENCES [dbo].[Banda] ([id_Banda])
GO
ALTER TABLE [dbo].[Album] CHECK CONSTRAINT [FK_Album_Banda]
GO
ALTER TABLE [dbo].[Musicas]  WITH CHECK ADD  CONSTRAINT [FK_Musicas_Album] FOREIGN KEY([id_Album])
REFERENCES [dbo].[Album] ([id_Album])
GO
ALTER TABLE [dbo].[Musicas] CHECK CONSTRAINT [FK_Musicas_Album]
GO
/****** Object:  StoredProcedure [dbo].[PesquisaAlbum]    Script Date: 31/10/2021 20:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[PesquisaAlbum]
@PesquisarMusicas varchar(50)
as

Select
Ab.Album,
Ms.Musicas
From

Album as Ab
JOIN Musicas as Ms
	on Ab.id_Album = Ms.id_Album
	
	Where Album like '%' +@PesquisarMusicas + '%'
GO
