USE [Id2d]
GO
/****** Object:  Table [dbo].[Tbl_VoucherCompany]    Script Date: 03/13/2014 18:54:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_VoucherCompany](
	[VoucherCompanyID] [int] IDENTITY(1,1) NOT NULL,
	[VoucherCompanyName] [varchar](50) NOT NULL,
	[VoucherCompanyDescription] [varchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[VoucherCompanyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Statastics]    Script Date: 03/13/2014 18:54:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Statastics](
	[NumberOfUsers] [int] NOT NULL,
	[NumberOfDeals] [int] NOT NULL,
	[NumberOfActiveDeals] [int] NOT NULL,
	[NumberOfInActiveDeals] [int] NOT NULL,
	[NumberOfVouchers] [int] NOT NULL,
	[NumberOfActiveVouchers] [int] NOT NULL,
	[NumberOfInActiveVouchers] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_RecordUsers]    Script Date: 03/13/2014 18:54:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_RecordUsers](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[UserIpAddress] [varchar](20) NOT NULL,
	[RecordedDateTime] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_RecordUsers] ON
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (1, N'127.0.0.1', CAST(0x0000A2E5000AD409 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (2, N'127.0.0.1', CAST(0x0000A2E5000AD7F1 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (3, N'127.0.0.1', CAST(0x0000A2E5000DF942 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (4, N'127.0.0.1', CAST(0x0000A2E5000DFD28 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (5, N'127.0.0.1', CAST(0x0000A2E5000E127D AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (6, N'127.0.0.1', CAST(0x0000A2E5000E44DD AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (7, N'127.0.0.1', CAST(0x0000A2E5000E5E3F AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (8, N'127.0.0.1', CAST(0x0000A2E5000F49CD AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (9, N'127.0.0.1', CAST(0x0000A2E5000F4C53 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (10, N'127.0.0.1', CAST(0x0000A2E50010DB6E AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (11, N'127.0.0.1', CAST(0x0000A2E500135149 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (12, N'127.0.0.1', CAST(0x0000A2E5001355ED AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (13, N'127.0.0.1', CAST(0x0000A2E50013738E AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (14, N'127.0.0.1', CAST(0x0000A2E500138098 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (15, N'127.0.0.1', CAST(0x0000A2E50013B64F AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (16, N'127.0.0.1', CAST(0x0000A2E50013CEF6 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (17, N'127.0.0.1', CAST(0x0000A2E50013F478 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (18, N'127.0.0.1', CAST(0x0000A2E500140ED3 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (19, N'127.0.0.1', CAST(0x0000A2E500152239 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (20, N'127.0.0.1', CAST(0x0000A2E500152619 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (21, N'127.0.0.1', CAST(0x0000A2E5001571C4 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (22, N'127.0.0.1', CAST(0x0000A2E50015744C AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (23, N'127.0.0.1', CAST(0x0000A2E500161883 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (24, N'127.0.0.1', CAST(0x0000A2E500161B19 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (25, N'127.0.0.1', CAST(0x0000A2E500169659 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (26, N'127.0.0.1', CAST(0x0000A2E500169A39 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (27, N'127.0.0.1', CAST(0x0000A2E50016BE80 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (28, N'127.0.0.1', CAST(0x0000A2E50016CCC7 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (29, N'127.0.0.1', CAST(0x0000A2E50016D3B4 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (30, N'127.0.0.1', CAST(0x0000A2E50018095E AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (31, N'127.0.0.1', CAST(0x0000A2E500180BE2 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (32, N'127.0.0.1', CAST(0x0000A2E500183080 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (33, N'127.0.0.1', CAST(0x0000A2E50018332A AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (34, N'127.0.0.1', CAST(0x0000A2E500183AB2 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (35, N'127.0.0.1', CAST(0x0000A2E5001845EB AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (36, N'1.23.208.89', CAST(0x0000A2E400DFA3FB AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (37, N'1.23.208.89', CAST(0x0000A2E400DFEE4C AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (38, N'1.23.208.89', CAST(0x0000A2E400E115B7 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (39, N'1.23.208.89', CAST(0x0000A2E400E1457C AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (40, N'122.248.163.2', CAST(0x0000A2E4016B0A40 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (41, N'103.246.38.196', CAST(0x0000A2E401738DFE AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (42, N'103.246.38.196', CAST(0x0000A2E401738FD2 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (43, N'134.159.168.105', CAST(0x0000A2E4017391A6 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (44, N'97.74.104.7', CAST(0x0000A2E401753D8E AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (45, N'95.108.247.252', CAST(0x0000A2E40181FFE1 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (46, N'95.108.247.252', CAST(0x0000A2E40182003A AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (47, N'134.159.168.105', CAST(0x0000A2E401848DD2 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (48, N'134.159.168.105', CAST(0x0000A2E401888C8B AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (49, N'134.159.168.105', CAST(0x0000A2E500051A7D AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (50, N'134.159.168.105', CAST(0x0000A2E50006E6FD AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (51, N'134.159.168.105', CAST(0x0000A2E5001DBB57 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (52, N'122.248.163.2', CAST(0x0000A2E50029F0C9 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (53, N'122.248.163.2', CAST(0x0000A2E5002ED195 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (54, N'134.159.168.105', CAST(0x0000A2E5002FDD5B AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (55, N'122.248.163.2', CAST(0x0000A2E5003114E5 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (56, N'134.159.168.105', CAST(0x0000A2E5003D4D8F AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (57, N'199.19.249.196', CAST(0x0000A2E50061F82A AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (58, N'199.19.249.196', CAST(0x0000A2E50061F968 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (59, N'194.103.63.154', CAST(0x0000A2E50061F997 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (60, N'134.159.168.105', CAST(0x0000A2E50064F4C4 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (61, N'134.159.168.105', CAST(0x0000A2E5006808C5 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (62, N'23.23.222.104', CAST(0x0000A2E50069FAD7 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (63, N'134.159.168.105', CAST(0x0000A2E5007059F6 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (64, N'127.0.0.1', CAST(0x0000A2E5016EB684 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (65, N'127.0.0.1', CAST(0x0000A2E5016EBD3A AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (66, N'127.0.0.1', CAST(0x0000A2E5016F5B88 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (67, N'127.0.0.1', CAST(0x0000A2E501722924 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (68, N'127.0.0.1', CAST(0x0000A2E501722DA6 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (69, N'127.0.0.1', CAST(0x0000A2E50172E66E AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (70, N'127.0.0.1', CAST(0x0000A2E50172EB4D AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (71, N'127.0.0.1', CAST(0x0000A2E501731857 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (72, N'66.96.183.35', CAST(0x0000A2E6006AE0CE AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (73, N'66.96.183.35', CAST(0x0000A2E6006AEBCB AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (74, N'66.249.84.60', CAST(0x0000A2E6006C152E AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (75, N'95.108.247.252', CAST(0x0000A2E600D3551C AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (76, N'95.108.247.252', CAST(0x0000A2E600D355D7 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (77, N'95.108.247.252', CAST(0x0000A2E600D35A4D AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (78, N'95.108.247.252', CAST(0x0000A2E600D35AE3 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (79, N'103.246.38.196', CAST(0x0000A2E6017C69E5 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (80, N'134.159.168.105', CAST(0x0000A2E6017C6C4F AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (81, N'95.108.247.252', CAST(0x0000A2E7000F22BB AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (82, N'95.108.247.252', CAST(0x0000A2E7000F247C AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (83, N'95.108.247.252', CAST(0x0000A2E7000F2925 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (84, N'134.159.168.105', CAST(0x0000A2E7003B94C6 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (85, N'103.246.39.213', CAST(0x0000A2E70043CFB5 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (86, N'122.248.163.2', CAST(0x0000A2E70043D26E AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (87, N'134.159.168.105', CAST(0x0000A2E70060870F AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (88, N'134.159.168.105', CAST(0x0000A2E70062B4BC AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (89, N'134.159.168.105', CAST(0x0000A2E70064F137 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (90, N'134.159.168.105', CAST(0x0000A2E700696240 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (91, N'134.159.168.105', CAST(0x0000A2E700699348 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (92, N'134.159.168.105', CAST(0x0000A2E7006E8DB3 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (93, N'134.159.168.105', CAST(0x0000A2E7006F7A65 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (94, N'134.159.168.105', CAST(0x0000A2E70075A7AC AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (95, N'134.159.168.105', CAST(0x0000A2E70075B36D AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (96, N'134.159.168.105', CAST(0x0000A2E7008266A6 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (97, N'134.159.168.105', CAST(0x0000A2E70082B5AE AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (98, N'134.159.168.105', CAST(0x0000A2E70082D7B8 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (99, N'134.159.168.105', CAST(0x0000A2E70082FCA6 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (100, N'134.159.168.105', CAST(0x0000A2E700837145 AS DateTime))
GO
print 'Processed 100 total records'
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (101, N'134.159.168.105', CAST(0x0000A2E700837B1A AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (102, N'183.82.17.182', CAST(0x0000A2E7013EE441 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (103, N'183.82.17.182', CAST(0x0000A2E7013EE52B AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (104, N'183.82.17.182', CAST(0x0000A2E7013EE52B AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (105, N'183.82.17.182', CAST(0x0000A2E7013EE576 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (106, N'183.82.17.182', CAST(0x0000A2E7013EE8B3 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (107, N'183.82.17.182', CAST(0x0000A2E7013EE99D AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (108, N'183.82.17.182', CAST(0x0000A2E701429A2B AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (109, N'183.82.17.182', CAST(0x0000A2E701429AF9 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (110, N'148.251.71.5', CAST(0x0000A2E7017933DB AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (111, N'148.251.71.5', CAST(0x0000A2E7017934DD AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (112, N'148.251.71.5', CAST(0x0000A2E7017934FE AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (113, N'148.251.71.5', CAST(0x0000A2E70179351E AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (114, N'183.82.17.61', CAST(0x0000A2E8002E10D4 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (115, N'38.100.21.64', CAST(0x0000A2E80032F6D8 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (116, N'91.200.13.64', CAST(0x0000A2E800B1DBC1 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (117, N'95.108.247.252', CAST(0x0000A2E800DFA8A1 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (118, N'95.108.247.252', CAST(0x0000A2E800DFA96A AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (119, N'95.108.247.252', CAST(0x0000A2E800DFADDC AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (120, N'95.108.247.252', CAST(0x0000A2E800DFAE6D AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (121, N'173.63.110.245', CAST(0x0000A2E80156CF00 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (122, N'173.63.110.245', CAST(0x0000A2E80156E1B4 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (123, N'173.63.110.245', CAST(0x0000A2E80156E2BF AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (124, N'173.63.110.245', CAST(0x0000A2E80156F1CB AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (125, N'173.63.110.245', CAST(0x0000A2E80156F3EE AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (126, N'173.63.110.245', CAST(0x0000A2E80156F612 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (127, N'173.63.110.245', CAST(0x0000A2E80156F831 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (128, N'183.82.17.61', CAST(0x0000A2E9004A61B8 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (129, N'183.82.17.61', CAST(0x0000A2E9004AD0BA AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (130, N'183.82.17.61', CAST(0x0000A2E9004AFF33 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (131, N'183.82.17.61', CAST(0x0000A2E9004BFC26 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (132, N'134.159.168.105', CAST(0x0000A2E9014A046D AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (133, N'134.159.168.105', CAST(0x0000A2E9015006DC AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (134, N'188.40.249.67', CAST(0x0000A2E9015AB0A2 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (135, N'188.40.249.67', CAST(0x0000A2E9015AB1A3 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (136, N'188.40.249.67', CAST(0x0000A2E9015AB1C4 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (137, N'188.40.249.67', CAST(0x0000A2E9015AB1F3 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (138, N'134.159.168.105', CAST(0x0000A2EA0005D2E8 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (139, N'134.159.168.105', CAST(0x0000A2EA00237453 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (140, N'134.159.168.105', CAST(0x0000A2EA00414FAA AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (141, N'134.159.168.105', CAST(0x0000A2EA0041690A AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (142, N'183.82.17.110', CAST(0x0000A2EA00A9EFCE AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (143, N'127.0.0.1', CAST(0x0000A2EB00043AC9 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (144, N'127.0.0.1', CAST(0x0000A2EB00044F62 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (145, N'127.0.0.1', CAST(0x0000A2EB00048D68 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (146, N'127.0.0.1', CAST(0x0000A2EB00049A25 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (147, N'127.0.0.1', CAST(0x0000A2EB00053B50 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (148, N'127.0.0.1', CAST(0x0000A2EB000544E9 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (149, N'127.0.0.1', CAST(0x0000A2EB0005A204 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (150, N'127.0.0.1', CAST(0x0000A2EB0005E09F AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (151, N'127.0.0.1', CAST(0x0000A2EB00060C19 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (152, N'127.0.0.1', CAST(0x0000A2EB00060E14 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (153, N'127.0.0.1', CAST(0x0000A2EB000622D5 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (154, N'127.0.0.1', CAST(0x0000A2EB000628EF AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (155, N'127.0.0.1', CAST(0x0000A2EB0008231B AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (156, N'127.0.0.1', CAST(0x0000A2EB00082711 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (157, N'127.0.0.1', CAST(0x0000A2EB00083252 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (158, N'127.0.0.1', CAST(0x0000A2EB000840B1 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (159, N'127.0.0.1', CAST(0x0000A2EB00084712 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (160, N'127.0.0.1', CAST(0x0000A2EB000B49E4 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (161, N'127.0.0.1', CAST(0x0000A2EB000B4DD2 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (162, N'127.0.0.1', CAST(0x0000A2EB000B6FDF AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (163, N'127.0.0.1', CAST(0x0000A2EB000B7F59 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (164, N'127.0.0.1', CAST(0x0000A2EB000B8FAE AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (165, N'127.0.0.1', CAST(0x0000A2EB000B990B AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (166, N'127.0.0.1', CAST(0x0000A2EB000BA3A1 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (167, N'127.0.0.1', CAST(0x0000A2EB000BB040 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (168, N'127.0.0.1', CAST(0x0000A2EB0011752C AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (169, N'127.0.0.1', CAST(0x0000A2EB00117923 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (170, N'127.0.0.1', CAST(0x0000A2EB00119140 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (171, N'127.0.0.1', CAST(0x0000A2EB00119CCE AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (172, N'127.0.0.1', CAST(0x0000A2EB0011A795 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (173, N'127.0.0.1', CAST(0x0000A2EB00121D63 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (174, N'127.0.0.1', CAST(0x0000A2EB00121F75 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (175, N'127.0.0.1', CAST(0x0000A2EB001226E7 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (176, N'127.0.0.1', CAST(0x0000A2EB00122E03 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (177, N'127.0.0.1', CAST(0x0000A2EB00123492 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (178, N'127.0.0.1', CAST(0x0000A2EB00123B5C AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (179, N'127.0.0.1', CAST(0x0000A2EB001240AC AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (180, N'95.108.247.252', CAST(0x0000A2EA00D07A71 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (181, N'95.108.247.252', CAST(0x0000A2EA00D07ACF AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (182, N'95.108.247.252', CAST(0x0000A2EA00D07FC3 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (183, N'95.108.247.252', CAST(0x0000A2EA00D08067 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (184, N'65.181.124.121', CAST(0x0000A2EA00F87DE6 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (185, N'103.246.38.196', CAST(0x0000A2EA0180471B AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (186, N'134.159.168.105', CAST(0x0000A2EA01804992 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (187, N'134.159.168.105', CAST(0x0000A2EA0182D5D0 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (188, N'134.159.168.105', CAST(0x0000A2EA018606D4 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (189, N'134.159.168.105', CAST(0x0000A2EA018B3F60 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (190, N'65.36.158.75', CAST(0x0000A2EB00D8FAAF AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (191, N'95.108.247.252', CAST(0x0000A2EB012CF875 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (192, N'183.82.17.110', CAST(0x0000A2EB01534AE9 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (193, N'64.202.167.143', CAST(0x0000A2EB0158042A AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (194, N'188.138.220.213', CAST(0x0000A2EB01802BD9 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (195, N'199.19.249.196', CAST(0x0000A2EB018A0F1E AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (196, N'199.19.249.196', CAST(0x0000A2EB018A1011 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (197, N'194.103.63.154', CAST(0x0000A2EB018A103B AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (198, N'134.159.168.105', CAST(0x0000A2EC000B81C0 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (199, N'134.159.168.105', CAST(0x0000A2EC000B81CA AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (200, N'199.19.249.196', CAST(0x0000A2EC00505457 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (201, N'194.103.63.154', CAST(0x0000A2EC00505525 AS DateTime))
GO
print 'Processed 200 total records'
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (202, N'194.103.63.154', CAST(0x0000A2EC00507B7B AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (203, N'64.202.160.161', CAST(0x0000A2EC0110AF34 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (204, N'95.108.247.252', CAST(0x0000A2EC0120F637 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (205, N'95.108.247.252', CAST(0x0000A2EC0120F6E4 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (206, N'95.108.247.252', CAST(0x0000A2EC0120FD09 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (207, N'95.108.247.252', CAST(0x0000A2EC0120FDAD AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (208, N'134.159.168.105', CAST(0x0000A2EC017BCA90 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (209, N'103.246.38.196', CAST(0x0000A2EC017E08C2 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (210, N'134.159.168.105', CAST(0x0000A2EC017E09D2 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (211, N'134.159.168.105', CAST(0x0000A2EC017E3576 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (212, N'127.0.0.1', CAST(0x0000A2ED00F812D5 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (213, N'127.0.0.1', CAST(0x0000A2ED00F81C4A AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (214, N'1.23.214.13', CAST(0x0000A2ED002F13D3 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (215, N'127.0.0.1', CAST(0x0000A2ED01054835 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (216, N'127.0.0.1', CAST(0x0000A2ED0105DF40 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (217, N'127.0.0.1', CAST(0x0000A2ED01080DC0 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (218, N'127.0.0.1', CAST(0x0000A2ED01082566 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (219, N'127.0.0.1', CAST(0x0000A2ED010DE573 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (220, N'127.0.0.1', CAST(0x0000A2ED010E16BD AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (221, N'127.0.0.1', CAST(0x0000A2ED010E935C AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (222, N'127.0.0.1', CAST(0x0000A2ED010E9725 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (223, N'64.202.167.143', CAST(0x0000A2ED00408899 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (224, N'127.0.0.1', CAST(0x0000A2ED010EB73F AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (225, N'127.0.0.1', CAST(0x0000A2ED010EBF40 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (226, N'127.0.0.1', CAST(0x0000A2ED010F3640 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (227, N'127.0.0.1', CAST(0x0000A2ED010F3841 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (228, N'1.23.214.13', CAST(0x0000A2ED0047D9DE AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (229, N'127.0.0.1', CAST(0x0000A2ED012C4CE7 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (230, N'127.0.0.1', CAST(0x0000A2ED012C699D AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (231, N'127.0.0.1', CAST(0x0000A2ED012C6D1B AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (232, N'127.0.0.1', CAST(0x0000A2ED012C7A0B AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (233, N'127.0.0.1', CAST(0x0000A2ED012C7D82 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (234, N'127.0.0.1', CAST(0x0000A2ED012C82C1 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (235, N'127.0.0.1', CAST(0x0000A2ED012C9FAE AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (236, N'127.0.0.1', CAST(0x0000A2ED012CB964 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (237, N'1.23.214.13', CAST(0x0000A2ED005ED09B AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (238, N'127.0.0.1', CAST(0x0000A2ED012D57E2 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (239, N'127.0.0.1', CAST(0x0000A2ED012D5A03 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (240, N'127.0.0.1', CAST(0x0000A2ED012F13E7 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (241, N'127.0.0.1', CAST(0x0000A2ED012F1C1A AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (242, N'127.0.0.1', CAST(0x0000A2ED0130024E AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (243, N'127.0.0.1', CAST(0x0000A2ED013033D2 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (244, N'127.0.0.1', CAST(0x0000A2ED01314547 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (245, N'127.0.0.1', CAST(0x0000A2ED01317534 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (246, N'127.0.0.1', CAST(0x0000A2ED0131B4DC AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (247, N'127.0.0.1', CAST(0x0000A2ED0131BA77 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (248, N'127.0.0.1', CAST(0x0000A2ED0131D4F4 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (249, N'127.0.0.1', CAST(0x0000A2ED0131D98A AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (250, N'127.0.0.1', CAST(0x0000A2ED01321907 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (251, N'127.0.0.1', CAST(0x0000A2ED01321C84 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (252, N'127.0.0.1', CAST(0x0000A2ED01323331 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (253, N'127.0.0.1', CAST(0x0000A2ED01325A68 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (254, N'127.0.0.1', CAST(0x0000A2ED0133E618 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (255, N'127.0.0.1', CAST(0x0000A2ED0133E985 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (256, N'127.0.0.1', CAST(0x0000A2ED013400C9 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (257, N'127.0.0.1', CAST(0x0000A2ED01340464 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (258, N'127.0.0.1', CAST(0x0000A2ED013530C2 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (259, N'127.0.0.1', CAST(0x0000A2ED0135361F AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (260, N'127.0.0.1', CAST(0x0000A2ED0136B8E5 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (261, N'127.0.0.1', CAST(0x0000A2ED0136BE26 AS DateTime))
INSERT [dbo].[Tbl_RecordUsers] ([RecordID], [UserIpAddress], [RecordedDateTime]) VALUES (262, N'127.0.0.1', CAST(0x0000A2ED0136C744 AS DateTime))
SET IDENTITY_INSERT [dbo].[Tbl_RecordUsers] OFF
/****** Object:  Table [dbo].[Tbl_DealType]    Script Date: 03/13/2014 18:54:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_DealType](
	[DealTypeID] [int] IDENTITY(1,1) NOT NULL,
	[DealType] [varchar](250) NOT NULL,
	[DealTypeDescription] [varchar](max) NULL,
	[DisplayOrder] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DealTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_DealType] ON
INSERT [dbo].[Tbl_DealType] ([DealTypeID], [DealType], [DealTypeDescription], [DisplayOrder]) VALUES (9, N'Offline', NULL, 1)
INSERT [dbo].[Tbl_DealType] ([DealTypeID], [DealType], [DealTypeDescription], [DisplayOrder]) VALUES (10, N'Online', NULL, 2)
SET IDENTITY_INSERT [dbo].[Tbl_DealType] OFF
/****** Object:  Table [dbo].[Tbl_UserRoles]    Script Date: 03/13/2014 18:54:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_UserRoles](
	[UserRoleID] [int] IDENTITY(1,1) NOT NULL,
	[UserRoleName] [varchar](10) NOT NULL,
	[MasterPage] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserRoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_UserRoles] ON
INSERT [dbo].[Tbl_UserRoles] ([UserRoleID], [UserRoleName], [MasterPage]) VALUES (1, N'User', N'UserHome.aspx')
INSERT [dbo].[Tbl_UserRoles] ([UserRoleID], [UserRoleName], [MasterPage]) VALUES (2, N'Moderator', N'ModeratorHome.aspx')
INSERT [dbo].[Tbl_UserRoles] ([UserRoleID], [UserRoleName], [MasterPage]) VALUES (3, N'Admin', N'AdminHome.aspx')
SET IDENTITY_INSERT [dbo].[Tbl_UserRoles] OFF
/****** Object:  Table [dbo].[Tbl_DealCategories]    Script Date: 03/13/2014 18:54:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_DealCategories](
	[DealCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[DealCategoryName] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DealCategoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_DealCategories] ON
INSERT [dbo].[Tbl_DealCategories] ([DealCategoryId], [DealCategoryName]) VALUES (1, N'AudioVisual')
INSERT [dbo].[Tbl_DealCategories] ([DealCategoryId], [DealCategoryName]) VALUES (2, N'Mobiles')
INSERT [dbo].[Tbl_DealCategories] ([DealCategoryId], [DealCategoryName]) VALUES (3, N'Gaming')
INSERT [dbo].[Tbl_DealCategories] ([DealCategoryId], [DealCategoryName]) VALUES (4, N'Computers')
INSERT [dbo].[Tbl_DealCategories] ([DealCategoryId], [DealCategoryName]) VALUES (5, N'Entertainment')
INSERT [dbo].[Tbl_DealCategories] ([DealCategoryId], [DealCategoryName]) VALUES (6, N'Home')
INSERT [dbo].[Tbl_DealCategories] ([DealCategoryId], [DealCategoryName]) VALUES (7, N'Fashion')
INSERT [dbo].[Tbl_DealCategories] ([DealCategoryId], [DealCategoryName]) VALUES (8, N'Kids')
INSERT [dbo].[Tbl_DealCategories] ([DealCategoryId], [DealCategoryName]) VALUES (9, N'Groceries')
INSERT [dbo].[Tbl_DealCategories] ([DealCategoryId], [DealCategoryName]) VALUES (10, N'Travel')
INSERT [dbo].[Tbl_DealCategories] ([DealCategoryId], [DealCategoryName]) VALUES (11, N'Restaurent')
INSERT [dbo].[Tbl_DealCategories] ([DealCategoryId], [DealCategoryName]) VALUES (12, N'Other')
SET IDENTITY_INSERT [dbo].[Tbl_DealCategories] OFF
/****** Object:  Table [dbo].[Tbl_Badges]    Script Date: 03/13/2014 18:54:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Badges](
	[BadgeID] [int] IDENTITY(1,1) NOT NULL,
	[BadgeName] [varchar](15) NOT NULL,
	[BadgeDegree] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BadgeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[BadgeName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_DealPriceCategories]    Script Date: 03/13/2014 18:54:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_DealPriceCategories](
	[DealPriceCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[StartPrice] [int] NOT NULL,
	[EndPrice] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DealPriceCategoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tbl_DealPriceCategories] ON
INSERT [dbo].[Tbl_DealPriceCategories] ([DealPriceCategoryId], [StartPrice], [EndPrice]) VALUES (1, 0, 10000)
INSERT [dbo].[Tbl_DealPriceCategories] ([DealPriceCategoryId], [StartPrice], [EndPrice]) VALUES (2, 10001, 20000)
INSERT [dbo].[Tbl_DealPriceCategories] ([DealPriceCategoryId], [StartPrice], [EndPrice]) VALUES (3, 20001, 30000)
INSERT [dbo].[Tbl_DealPriceCategories] ([DealPriceCategoryId], [StartPrice], [EndPrice]) VALUES (4, 30001, 40000)
INSERT [dbo].[Tbl_DealPriceCategories] ([DealPriceCategoryId], [StartPrice], [EndPrice]) VALUES (5, 40001, 50000)
INSERT [dbo].[Tbl_DealPriceCategories] ([DealPriceCategoryId], [StartPrice], [EndPrice]) VALUES (6, 50001, 100000)
SET IDENTITY_INSERT [dbo].[Tbl_DealPriceCategories] OFF
/****** Object:  Table [dbo].[Tbl_UserAccess]    Script Date: 03/13/2014 18:54:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_UserAccess](
	[UserAccessID] [int] IDENTITY(1,1) NOT NULL,
	[UserLoginName] [varchar](100) NOT NULL,
	[UserPassword] [varchar](100) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[IsUserValid] [bit] NOT NULL,
	[LastLoginDateTime] [datetime] NULL,
	[UserRoleID] [int] NULL,
	[NowOnline] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserAccessID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[UserLoginName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_AskThread]    Script Date: 03/13/2014 18:54:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_AskThread](
	[AskThreadID] [int] IDENTITY(1,1) NOT NULL,
	[UserAccessID] [int] NULL,
	[AskThreadDescription] [varchar](max) NOT NULL,
	[AskThreadStatus] [int] NOT NULL,
	[AskThreadPostedDate] [datetime] NULL,
	[ApprovedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[AskThreadID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_UserProfile]    Script Date: 03/13/2014 18:54:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_UserProfile](
	[UserProfileID] [int] IDENTITY(1,1) NOT NULL,
	[UserAccessID] [int] NULL,
	[DealsCount] [int] NOT NULL,
	[CommentsCount] [int] NOT NULL,
	[VouchersCount] [int] NOT NULL,
	[BadgeID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserProfileID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_UserPersonalDetails]    Script Date: 03/13/2014 18:54:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_UserPersonalDetails](
	[UserPersonalDetailsID] [int] IDENTITY(1,1) NOT NULL,
	[UserAccessID] [int] NULL,
	[UserAddress] [varchar](250) NULL,
	[MobileNumber] [varchar](15) NULL,
	[DateOfBirth] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserPersonalDetailsID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Deals]    Script Date: 03/13/2014 18:54:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Deals](
	[DealID] [int] IDENTITY(1,1) NOT NULL,
	[UserAccessID] [int] NOT NULL,
	[DealURL] [varchar](500) NULL,
	[DealStatus] [int] NOT NULL,
	[DealPrice] [decimal](18, 0) NOT NULL,
	[DealTopicName] [varchar](500) NOT NULL,
	[DealDescription] [varchar](max) NOT NULL,
	[DealDegree] [int] NOT NULL,
	[DealPostedDate] [datetime] NOT NULL,
	[ApprovedBy] [int] NOT NULL,
	[DealType] [int] NOT NULL,
	[DealPicture] [varbinary](max) NULL,
	[DealStartDate] [date] NOT NULL,
	[DealEndDate] [date] NOT NULL,
	[DealPriceCategory] [int] NOT NULL,
	[DealCategoryId] [int] NOT NULL,
	[DealPriceCategoryId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DealID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Vouchers]    Script Date: 03/13/2014 18:54:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Vouchers](
	[VoucherID] [int] IDENTITY(1,1) NOT NULL,
	[VoucherCode] [varchar](50) NOT NULL,
	[VoucherInstructions] [varchar](500) NULL,
	[VoucherStatus] [bit] NOT NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[VoucherPostedDate] [date] NULL,
	[DiscountRate] [decimal](18, 0) NOT NULL,
	[MinimumSpend] [int] NULL,
	[Degree] [int] NOT NULL,
	[ApprovedBy] [int] NULL,
	[VoucherURL] [varchar](500) NULL,
	[VoucherTags] [varchar](250) NULL,
	[VoucherCompanyID] [int] NULL,
	[DealCategoryId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[VoucherID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[VoucherCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_VoucherComments]    Script Date: 03/13/2014 18:54:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_VoucherComments](
	[VoucherCommentsID] [int] IDENTITY(1,1) NOT NULL,
	[VoucherID] [int] NULL,
	[UserAccessID] [int] NULL,
	[CommentDescription] [varchar](max) NOT NULL,
	[CommentStatus] [int] NOT NULL,
	[CommentPostedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[VoucherCommentsID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_DealComments]    Script Date: 03/13/2014 18:54:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_DealComments](
	[DealCommentsID] [int] IDENTITY(1,1) NOT NULL,
	[DealID] [int] NULL,
	[UserAccessID] [int] NULL,
	[CommentDescription] [varchar](max) NOT NULL,
	[CommentStatus] [int] NOT NULL,
	[CommentPostedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DealCommentsID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_AskThreadResponses]    Script Date: 03/13/2014 18:54:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_AskThreadResponses](
	[AskThreadResponseID] [int] IDENTITY(1,1) NOT NULL,
	[AskThreadID] [int] NULL,
	[UserAccessID] [int] NULL,
	[ResponseDescription] [varchar](max) NOT NULL,
	[ResponseStatus] [int] NOT NULL,
	[ResponsePostedDate] [datetime] NULL,
	[ApprovedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[AskThreadResponseID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF__Tbl_AskTh__AskTh__286302EC]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_AskThread] ADD  DEFAULT ((0)) FOR [AskThreadStatus]
GO
/****** Object:  Default [DF__Tbl_AskTh__AskTh__29572725]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_AskThread] ADD  DEFAULT (getdate()) FOR [AskThreadPostedDate]
GO
/****** Object:  Default [DF__Tbl_AskTh__Respo__300424B4]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_AskThreadResponses] ADD  DEFAULT ((0)) FOR [ResponseStatus]
GO
/****** Object:  Default [DF__Tbl_AskTh__Respo__30F848ED]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_AskThreadResponses] ADD  DEFAULT (getdate()) FOR [ResponsePostedDate]
GO
/****** Object:  Default [DF__Tbl_DealC__Comme__571DF1D5]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_DealComments] ADD  DEFAULT ((0)) FOR [CommentStatus]
GO
/****** Object:  Default [DF__Tbl_DealC__Comme__5812160E]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_DealComments] ADD  DEFAULT (getdate()) FOR [CommentPostedDate]
GO
/****** Object:  Default [DF__Tbl_Deals__DealS__48CFD27E]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_Deals] ADD  DEFAULT ((0)) FOR [DealStatus]
GO
/****** Object:  Default [DF__Tbl_Deals__DealP__49C3F6B7]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_Deals] ADD  DEFAULT ((0)) FOR [DealPrice]
GO
/****** Object:  Default [DF__Tbl_Deals__DealD__4AB81AF0]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_Deals] ADD  DEFAULT ((0)) FOR [DealDegree]
GO
/****** Object:  Default [DF__Tbl_Deals__DealP__4BAC3F29]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_Deals] ADD  DEFAULT (getdate()) FOR [DealPostedDate]
GO
/****** Object:  Default [DF__Tbl_Deals__DealS__4CA06362]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_Deals] ADD  DEFAULT (getdate()) FOR [DealStartDate]
GO
/****** Object:  Default [DF__Tbl_Deals__DealE__4D94879B]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_Deals] ADD  DEFAULT (getdate()) FOR [DealEndDate]
GO
/****** Object:  Default [DF__Tbl_Deals__DealP__4E88ABD4]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_Deals] ADD  DEFAULT ((0)) FOR [DealPriceCategory]
GO
/****** Object:  Default [DF__Tbl_Recor__Recor__38996AB5]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_RecordUsers] ADD  DEFAULT (getdate()) FOR [RecordedDateTime]
GO
/****** Object:  Default [DF__Tbl_Stata__Numbe__3A81B327]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_Statastics] ADD  DEFAULT ((0)) FOR [NumberOfUsers]
GO
/****** Object:  Default [DF__Tbl_Stata__Numbe__3B75D760]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_Statastics] ADD  DEFAULT ((0)) FOR [NumberOfDeals]
GO
/****** Object:  Default [DF__Tbl_Stata__Numbe__3C69FB99]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_Statastics] ADD  DEFAULT ((0)) FOR [NumberOfActiveDeals]
GO
/****** Object:  Default [DF__Tbl_Stata__Numbe__3D5E1FD2]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_Statastics] ADD  DEFAULT ((0)) FOR [NumberOfInActiveDeals]
GO
/****** Object:  Default [DF__Tbl_Stata__Numbe__3E52440B]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_Statastics] ADD  DEFAULT ((0)) FOR [NumberOfVouchers]
GO
/****** Object:  Default [DF__Tbl_Stata__Numbe__3F466844]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_Statastics] ADD  DEFAULT ((0)) FOR [NumberOfActiveVouchers]
GO
/****** Object:  Default [DF__Tbl_Stata__Numbe__403A8C7D]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_Statastics] ADD  DEFAULT ((0)) FOR [NumberOfInActiveVouchers]
GO
/****** Object:  Default [DF__Tbl_UserA__IsUse__173876EA]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_UserAccess] ADD  CONSTRAINT [DF__Tbl_UserA__IsUse__173876EA]  DEFAULT ((1)) FOR [IsUserValid]
GO
/****** Object:  Default [DF__Tbl_UserA__LastL__0BC6C43E]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_UserAccess] ADD  DEFAULT (getdate()) FOR [LastLoginDateTime]
GO
/****** Object:  Default [DF__Tbl_UserA__NowOn__0CBAE877]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_UserAccess] ADD  DEFAULT ((0)) FOR [NowOnline]
GO
/****** Object:  Default [DF__Tbl_UserP__Vouch__1DE57479]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_UserProfile] ADD  DEFAULT ((0)) FOR [VouchersCount]
GO
/****** Object:  Default [DF__Tbl_Vouch__Comme__6FE99F9F]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_VoucherComments] ADD  DEFAULT ((0)) FOR [CommentStatus]
GO
/****** Object:  Default [DF__Tbl_Vouch__Comme__70DDC3D8]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_VoucherComments] ADD  DEFAULT (getdate()) FOR [CommentPostedDate]
GO
/****** Object:  Default [DF__Tbl_Vouch__Vouch__656C112C]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_Vouchers] ADD  DEFAULT ((0)) FOR [VoucherStatus]
GO
/****** Object:  Default [DF__Tbl_Vouch__Vouch__66603565]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_Vouchers] ADD  DEFAULT (getdate()) FOR [VoucherPostedDate]
GO
/****** Object:  Default [DF__Tbl_Vouch__Disco__6754599E]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_Vouchers] ADD  DEFAULT ((0.00)) FOR [DiscountRate]
GO
/****** Object:  Default [DF__Tbl_Vouch__Degre__68487DD7]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_Vouchers] ADD  DEFAULT ((0)) FOR [Degree]
GO
/****** Object:  ForeignKey [FK__Tbl_AskTh__Appro__2A4B4B5E]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_AskThread]  WITH CHECK ADD FOREIGN KEY([ApprovedBy])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO
/****** Object:  ForeignKey [FK__Tbl_AskTh__UserA__2B3F6F97]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_AskThread]  WITH CHECK ADD FOREIGN KEY([UserAccessID])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO
/****** Object:  ForeignKey [FK__Tbl_AskTh__Appro__31EC6D26]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_AskThreadResponses]  WITH CHECK ADD FOREIGN KEY([ApprovedBy])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO
/****** Object:  ForeignKey [FK__Tbl_AskTh__AskTh__32E0915F]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_AskThreadResponses]  WITH CHECK ADD FOREIGN KEY([AskThreadID])
REFERENCES [dbo].[Tbl_AskThread] ([AskThreadID])
GO
/****** Object:  ForeignKey [FK__Tbl_AskTh__UserA__33D4B598]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_AskThreadResponses]  WITH CHECK ADD FOREIGN KEY([UserAccessID])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO
/****** Object:  ForeignKey [FK__Tbl_DealC__DealI__59063A47]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_DealComments]  WITH CHECK ADD FOREIGN KEY([DealID])
REFERENCES [dbo].[Tbl_Deals] ([DealID])
GO
/****** Object:  ForeignKey [FK__Tbl_DealC__UserA__59FA5E80]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_DealComments]  WITH CHECK ADD FOREIGN KEY([UserAccessID])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO
/****** Object:  ForeignKey [FK__Tbl_Deals__Appro__4F7CD00D]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_Deals]  WITH CHECK ADD FOREIGN KEY([ApprovedBy])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO
/****** Object:  ForeignKey [FK__Tbl_Deals__DealC__5070F446]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_Deals]  WITH CHECK ADD FOREIGN KEY([DealCategoryId])
REFERENCES [dbo].[Tbl_DealCategories] ([DealCategoryId])
GO
/****** Object:  ForeignKey [FK__Tbl_Deals__DealP__778AC167]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_Deals]  WITH CHECK ADD FOREIGN KEY([DealPriceCategoryId])
REFERENCES [dbo].[Tbl_DealPriceCategories] ([DealPriceCategoryId])
GO
/****** Object:  ForeignKey [FK__Tbl_Deals__DealT__5165187F]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_Deals]  WITH CHECK ADD FOREIGN KEY([DealType])
REFERENCES [dbo].[Tbl_DealType] ([DealTypeID])
GO
/****** Object:  ForeignKey [FK__Tbl_Deals__UserA__52593CB8]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_Deals]  WITH CHECK ADD FOREIGN KEY([UserAccessID])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO
/****** Object:  ForeignKey [FK__Tbl_UserA__UserR__0DAF0CB0]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_UserAccess]  WITH CHECK ADD FOREIGN KEY([UserRoleID])
REFERENCES [dbo].[Tbl_UserRoles] ([UserRoleID])
GO
/****** Object:  ForeignKey [FK__Tbl_UserP__UserA__1273C1CD]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_UserPersonalDetails]  WITH CHECK ADD FOREIGN KEY([UserAccessID])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO
/****** Object:  ForeignKey [FK__Tbl_UserP__Badge__1ED998B2]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_UserProfile]  WITH CHECK ADD FOREIGN KEY([BadgeID])
REFERENCES [dbo].[Tbl_Badges] ([BadgeID])
GO
/****** Object:  ForeignKey [FK__Tbl_UserP__UserA__1FCDBCEB]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_UserProfile]  WITH CHECK ADD FOREIGN KEY([UserAccessID])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO
/****** Object:  ForeignKey [FK__Tbl_Vouch__UserA__71D1E811]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_VoucherComments]  WITH CHECK ADD FOREIGN KEY([UserAccessID])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO
/****** Object:  ForeignKey [FK__Tbl_Vouch__Vouch__72C60C4A]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_VoucherComments]  WITH CHECK ADD FOREIGN KEY([VoucherID])
REFERENCES [dbo].[Tbl_Vouchers] ([VoucherID])
GO
/****** Object:  ForeignKey [FK__Tbl_Vouch__Appro__693CA210]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_Vouchers]  WITH CHECK ADD FOREIGN KEY([ApprovedBy])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO
/****** Object:  ForeignKey [FK__Tbl_Vouch__DealC__6A30C649]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_Vouchers]  WITH CHECK ADD FOREIGN KEY([DealCategoryId])
REFERENCES [dbo].[Tbl_DealCategories] ([DealCategoryId])
GO
/****** Object:  ForeignKey [FK__Tbl_Vouch__Vouch__6B24EA82]    Script Date: 03/13/2014 18:54:54 ******/
ALTER TABLE [dbo].[Tbl_Vouchers]  WITH CHECK ADD FOREIGN KEY([VoucherCompanyID])
REFERENCES [dbo].[Tbl_VoucherCompany] ([VoucherCompanyID])
GO
