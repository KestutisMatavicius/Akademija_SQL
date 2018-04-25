CREATE TABLE [dbo].[Asmenys] (
    [ID]          INT           NOT NULL,
    [Vardas]      VARCHAR (200) NULL,
    [Pavarde]     VARCHAR (200) NULL,
    [Gimimo_data] DATETIME      NULL,
    CONSTRAINT [PK_Dokumentai] PRIMARY KEY CLUSTERED ([ID] ASC)
);

CREATE TABLE [dbo].[Dokumentai] (
    [ID]          INT           NULL,
    [Dok_Tipas]   VARCHAR (200) NULL,
    [Dok_Numeris] VARCHAR (100) NULL,
    [Galioja_nuo] DATETIME      NULL,
    [Asmuo_Id]    INT           NULL,
    CONSTRAINT [FK_DokumentaiAsmenys] FOREIGN KEY ([Asmuo_Id]) REFERENCES [dbo].[Asmenys] ([ID])
);


CREATE TABLE [dbo].[Vietos] (
    [ID]         INT           NULL,
    [Miestas]    VARCHAR (200) NULL,
    [Gyvenviete] VARCHAR (100) NULL,
    [Gatve]      VARCHAR (200) NULL,
    [Namo_Nr]    NUMERIC (18)  NULL,
    [Buto_Nr]    NUMERIC (18)  NULL,
    [Asmuo_Id]   INT           NULL
);

INSERT INTO [dbo].[Asmenys] ([ID], [Vardas], [Pavarde], [Gimimo_data]) VALUES (1, N'Kęstutis', N'Matavičius', N'1985-12-12 00:00:00');
INSERT INTO [dbo].[Asmenys] ([ID], [Vardas], [Pavarde], [Gimimo_data]) VALUES (2, N'Tomas', N'Tomaitis', N'1992-05-18 00:00:00');
INSERT INTO [dbo].[Asmenys] ([ID], [Vardas], [Pavarde], [Gimimo_data]) VALUES (3, N'Tomas', N'Linas', N'1990-10-25 00:00:00');
INSERT INTO [dbo].[Asmenys] ([ID], [Vardas], [Pavarde], [Gimimo_data]) VALUES (4, N'Darius', N'Gudas', N'1942-09-21 00:00:00');
INSERT INTO [dbo].[Asmenys] ([ID], [Vardas], [Pavarde], [Gimimo_data]) VALUES (5, N'Lina', N'Smulkytė', N'1999-10-12 00:00:00');

INSERT INTO [dbo].[Vietos] ([ID], [Miestas], [Gyvenviete], [Gatve], [Namo_Nr], [Buto_Nr], [Asmuo_Id]) VALUES (1, N'Kaunas', N'Dainava', N'Kovo 11-osios g.', CAST(1254 AS Decimal(18, 0)), CAST(2547 AS Decimal(18, 0)), 1);
INSERT INTO [dbo].[Vietos] ([ID], [Miestas], [Gyvenviete], [Gatve], [Namo_Nr], [Buto_Nr], [Asmuo_Id]) VALUES (2, N'Kaunas', N'Dainava', N'Tunelio g.', CAST(12 AS Decimal(18, 0)), CAST(2544 AS Decimal(18, 0)), 2);
INSERT INTO [dbo].[Vietos] ([ID], [Miestas], [Gyvenviete], [Gatve], [Namo_Nr], [Buto_Nr], [Asmuo_Id]) VALUES (4, N'Kaunas', NULL, N'Savanorių pr.', CAST(254 AS Decimal(18, 0)), CAST(47 AS Decimal(18, 0)), 3);
INSERT INTO [dbo].[Vietos] ([ID], [Miestas], [Gyvenviete], [Gatve], [Namo_Nr], [Buto_Nr], [Asmuo_Id]) VALUES (3, N'Kaunas', NULL, N'Gėlių g.', CAST(154 AS Decimal(18, 0)), CAST(247 AS Decimal(18, 0)), 4);
INSERT INTO [dbo].[Vietos] ([ID], [Miestas], [Gyvenviete], [Gatve], [Namo_Nr], [Buto_Nr]) VALUES (9, N'Klaipėda', NULL, NULL, NULL, NULL);

INSERT INTO [dbo].[Dokumentai] ([ID], [Dok_Tipas], [Dok_Numeris], [Galioja_nuo], [Asmuo_Id]) VALUES (1, N'Pasas', N'LK-784512', N'2015-01-25 00:00:00', 1);
INSERT INTO [dbo].[Dokumentai] ([ID], [Dok_Tipas], [Dok_Numeris], [Galioja_nuo], [Asmuo_Id]) VALUES (2, N'Kortelė', N'LK-741512', N'2015-01-25 00:00:00', 3);
INSERT INTO [dbo].[Dokumentai] ([ID], [Dok_Tipas], [Dok_Numeris], [Galioja_nuo], [Asmuo_Id]) VALUES (6, N'Pasas', N'LK-784589', N'2016-03-05 00:00:00', 3);
INSERT INTO [dbo].[Dokumentai] ([ID], [Dok_Tipas], [Dok_Numeris], [Galioja_nuo], [Asmuo_Id]) VALUES (3, N'Kortelė', N'LK-7512', N'2015-01-25 00:00:00', 2);
INSERT INTO [dbo].[Dokumentai] ([ID], [Dok_Tipas], [Dok_Numeris], [Galioja_nuo], [Asmuo_Id]) VALUES (4, N'Pasas', N'LK-78422', N'2015-01-25 00:00:00', 4);
INSERT INTO [dbo].[Dokumentai] ([ID], [Dok_Tipas], [Dok_Numeris], [Galioja_nuo], [Asmuo_Id]) VALUES (5, N'Pasas', N'LK-78912', N'2015-01-25 00:00:00', 5);

