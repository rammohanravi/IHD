create database [IndiaDeals2Day]
go
USE [IndiaDeals2Day]
GO
/****** Object:  Table [dbo].[Tbl_VoucherCompany]    Script Date: 10/07/2013 00:42:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_VoucherCompany]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tbl_VoucherCompany](
	[VoucherCompanyID] [int] IDENTITY(1,1) NOT NULL,
	[VoucherCompanyName] [varchar](50) NOT NULL,
	[VoucherCompanyDescription] [varchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[VoucherCompanyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Badges]    Script Date: 10/07/2013 00:42:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Badges]') AND type in (N'U'))
BEGIN
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
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_UserRoles]    Script Date: 10/07/2013 00:42:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_UserRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tbl_UserRoles](
	[UserRoleID] [int] IDENTITY(1,1) NOT NULL,
	[UserRoleName] [varchar](10) NOT NULL,
	[MasterPage] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserRoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_TopicType]    Script Date: 10/07/2013 00:42:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_TopicType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tbl_TopicType](
	[TopicTypeID] [int] IDENTITY(1,1) NOT NULL,
	[TopicTypeName] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TopicTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_TopicType] ON
INSERT [dbo].[Tbl_TopicType] ([TopicTypeID], [TopicTypeName]) VALUES (1, N'AudioVisual')
INSERT [dbo].[Tbl_TopicType] ([TopicTypeID], [TopicTypeName]) VALUES (2, N'Mobiles')
INSERT [dbo].[Tbl_TopicType] ([TopicTypeID], [TopicTypeName]) VALUES (3, N'Gaming')
INSERT [dbo].[Tbl_TopicType] ([TopicTypeID], [TopicTypeName]) VALUES (4, N'Computers')
INSERT [dbo].[Tbl_TopicType] ([TopicTypeID], [TopicTypeName]) VALUES (5, N'Entertainment')
INSERT [dbo].[Tbl_TopicType] ([TopicTypeID], [TopicTypeName]) VALUES (6, N'Home')
INSERT [dbo].[Tbl_TopicType] ([TopicTypeID], [TopicTypeName]) VALUES (7, N'Fashion')
INSERT [dbo].[Tbl_TopicType] ([TopicTypeID], [TopicTypeName]) VALUES (8, N'Kids')
INSERT [dbo].[Tbl_TopicType] ([TopicTypeID], [TopicTypeName]) VALUES (9, N'Groceries')
INSERT [dbo].[Tbl_TopicType] ([TopicTypeID], [TopicTypeName]) VALUES (10, N'Travel')
INSERT [dbo].[Tbl_TopicType] ([TopicTypeID], [TopicTypeName]) VALUES (11, N'Restaurent')
INSERT [dbo].[Tbl_TopicType] ([TopicTypeID], [TopicTypeName]) VALUES (12, N'Other')
SET IDENTITY_INSERT [dbo].[Tbl_TopicType] OFF
/****** Object:  Table [dbo].[Tbl_Statastics]    Script Date: 10/07/2013 00:42:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Statastics]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tbl_Statastics](
	[NumberOfUsers] [int] NOT NULL,
	[NumberOfDeals] [int] NULL,
	[NumberOfActiveDeals] [int] NULL,
	[NumberOfInActiveDeals] [int] NULL,
	[NumberOfVouchers] [int] NULL,
	[NumberOfActiveVouchers] [int] NULL,
	[NumberOfInActiveVouchers] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Tbl_DealType]    Script Date: 10/07/2013 00:42:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_DealType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tbl_DealType](
	[DealTypeID] [int] IDENTITY(1,1) NOT NULL,
	[DealType] [varchar](250) NOT NULL,
	[DealTypeDescription] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[DealTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_UserAccess]    Script Date: 10/07/2013 00:42:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_UserAccess]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tbl_UserAccess](
	[UserAccessID] [int] IDENTITY(1,1) NOT NULL,
	[UserLoginName] [varchar](100) NOT NULL,
	[UserPassword] [varchar](100) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[IsUserValid] [bit] NOT NULL,
	[LastLoginDateTime] [datetime] NULL,
	[UserRoleID] [int] NULL,
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
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Deals]    Script Date: 10/07/2013 00:42:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Deals]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tbl_Deals](
	[DealID] [int] IDENTITY(1,1) NOT NULL,
	[UserAccessID] [int] NULL,
	[DealURL] [varchar](500) NULL,
	[DealStatus] [int] NOT NULL,
	[DealPrice] [decimal](18, 0) NOT NULL,
	[DealTopicName] [varchar](500) NOT NULL,
	[DealDescription] [varchar](max) NOT NULL,
	[DealDegree] [int] NOT NULL,
	[DealPostedDate] [datetime] NOT NULL,
	[ApprovedBy] [int] NULL,
	[DealType] [int] NULL,
	[DealPicture] [varbinary](max) NULL,
	[DealAttachmentExtension] [varchar](5) NULL,
	[DealAttachmentFile] [varbinary](max) NULL,
	[TopicTypeID] [int] NULL,
	[DealStartDate] [date] NULL,
	[DealEndDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[DealID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_UserProfile]    Script Date: 10/07/2013 00:42:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_UserProfile]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[Tbl_UserPersonalDetails]    Script Date: 10/07/2013 00:42:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_UserPersonalDetails]') AND type in (N'U'))
BEGIN
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
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_AskThread]    Script Date: 10/07/2013 00:42:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_AskThread]') AND type in (N'U'))
BEGIN
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
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Vouchers]    Script Date: 10/07/2013 00:42:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Vouchers]') AND type in (N'U'))
BEGIN
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
	[TopicTypeID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[VoucherID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[VoucherCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_VoucherComments]    Script Date: 10/07/2013 00:42:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_VoucherComments]') AND type in (N'U'))
BEGIN
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
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_AskThreadResponses]    Script Date: 10/07/2013 00:42:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_AskThreadResponses]') AND type in (N'U'))
BEGIN
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
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_DealComments]    Script Date: 10/07/2013 00:42:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_DealComments]') AND type in (N'U'))
BEGIN
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
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF__Tbl_AskTh__AskTh__0AF29B96]    Script Date: 10/07/2013 00:42:17 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_AskTh__AskTh__0AF29B96]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_AskThread]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_AskTh__AskTh__0AF29B96]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_AskThread] ADD  DEFAULT ((0)) FOR [AskThreadStatus]
END


End
GO
/****** Object:  Default [DF__Tbl_AskTh__AskTh__0BE6BFCF]    Script Date: 10/07/2013 00:42:17 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_AskTh__AskTh__0BE6BFCF]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_AskThread]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_AskTh__AskTh__0BE6BFCF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_AskThread] ADD  DEFAULT (getdate()) FOR [AskThreadPostedDate]
END


End
GO
/****** Object:  Default [DF__Tbl_AskTh__Respo__20E1DCB5]    Script Date: 10/07/2013 00:42:17 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_AskTh__Respo__20E1DCB5]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_AskThreadResponses]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_AskTh__Respo__20E1DCB5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_AskThreadResponses] ADD  DEFAULT ((0)) FOR [ResponseStatus]
END


End
GO
/****** Object:  Default [DF__Tbl_AskTh__Respo__21D600EE]    Script Date: 10/07/2013 00:42:17 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_AskTh__Respo__21D600EE]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_AskThreadResponses]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_AskTh__Respo__21D600EE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_AskThreadResponses] ADD  DEFAULT (getdate()) FOR [ResponsePostedDate]
END


End
GO
/****** Object:  Default [DF__Tbl_DealC__Comme__269AB60B]    Script Date: 10/07/2013 00:42:17 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_DealC__Comme__269AB60B]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_DealComments]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_DealC__Comme__269AB60B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_DealComments] ADD  DEFAULT ((0)) FOR [CommentStatus]
END


End
GO
/****** Object:  Default [DF__Tbl_DealC__Comme__278EDA44]    Script Date: 10/07/2013 00:42:17 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_DealC__Comme__278EDA44]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_DealComments]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_DealC__Comme__278EDA44]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_DealComments] ADD  DEFAULT (getdate()) FOR [CommentPostedDate]
END


End
GO
/****** Object:  Default [DF__Tbl_Deals__DealS__78D3EB5B]    Script Date: 10/07/2013 00:42:17 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_Deals__DealS__78D3EB5B]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Deals]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_Deals__DealS__78D3EB5B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_Deals] ADD  DEFAULT ((0)) FOR [DealStatus]
END


End
GO
/****** Object:  Default [DF__Tbl_Deals__DealP__79C80F94]    Script Date: 10/07/2013 00:42:17 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_Deals__DealP__79C80F94]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Deals]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_Deals__DealP__79C80F94]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_Deals] ADD  DEFAULT ((0)) FOR [DealPrice]
END


End
GO
/****** Object:  Default [DF__Tbl_Deals__DealD__7ABC33CD]    Script Date: 10/07/2013 00:42:17 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_Deals__DealD__7ABC33CD]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Deals]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_Deals__DealD__7ABC33CD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_Deals] ADD  DEFAULT ((0)) FOR [DealDegree]
END


End
GO
/****** Object:  Default [DF__Tbl_Deals__DealP__7BB05806]    Script Date: 10/07/2013 00:42:17 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_Deals__DealP__7BB05806]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Deals]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_Deals__DealP__7BB05806]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_Deals] ADD  DEFAULT (getdate()) FOR [DealPostedDate]
END


End
GO
/****** Object:  Default [DF__Tbl_Deals__DealS__7CA47C3F]    Script Date: 10/07/2013 00:42:17 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_Deals__DealS__7CA47C3F]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Deals]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_Deals__DealS__7CA47C3F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_Deals] ADD  DEFAULT (getdate()) FOR [DealStartDate]
END


End
GO
/****** Object:  Default [DF__Tbl_Deals__DealE__7D98A078]    Script Date: 10/07/2013 00:42:17 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_Deals__DealE__7D98A078]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Deals]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_Deals__DealE__7D98A078]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_Deals] ADD  DEFAULT (getdate()) FOR [DealEndDate]
END


End
GO
/****** Object:  Default [DF__Tbl_UserA__IsUse__173876EA]    Script Date: 10/07/2013 00:42:17 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_UserA__IsUse__173876EA]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_UserAccess]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_UserA__IsUse__173876EA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_UserAccess] ADD  CONSTRAINT [DF__Tbl_UserA__IsUse__173876EA]  DEFAULT ((1)) FOR [IsUserValid]
END


End
GO
/****** Object:  Default [DF__Tbl_UserA__LastL__740F363E]    Script Date: 10/07/2013 00:42:17 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_UserA__LastL__740F363E]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_UserAccess]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_UserA__LastL__740F363E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_UserAccess] ADD  DEFAULT (getdate()) FOR [LastLoginDateTime]
END


End
GO
/****** Object:  Default [DF__Tbl_UserP__Vouch__025D5595]    Script Date: 10/07/2013 00:42:17 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_UserP__Vouch__025D5595]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_UserProfile]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_UserP__Vouch__025D5595]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_UserProfile] ADD  DEFAULT ((0)) FOR [VouchersCount]
END


End
GO
/****** Object:  Default [DF__Tbl_Vouch__Comme__1B29035F]    Script Date: 10/07/2013 00:42:17 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_Vouch__Comme__1B29035F]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_VoucherComments]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_Vouch__Comme__1B29035F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_VoucherComments] ADD  DEFAULT ((0)) FOR [CommentStatus]
END


End
GO
/****** Object:  Default [DF__Tbl_Vouch__Comme__1C1D2798]    Script Date: 10/07/2013 00:42:17 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_Vouch__Comme__1C1D2798]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_VoucherComments]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_Vouch__Comme__1C1D2798]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_VoucherComments] ADD  DEFAULT (getdate()) FOR [CommentPostedDate]
END


End
GO
/****** Object:  Default [DF__Tbl_Vouch__Vouch__1387E197]    Script Date: 10/07/2013 00:42:17 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_Vouch__Vouch__1387E197]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Vouchers]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_Vouch__Vouch__1387E197]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_Vouchers] ADD  DEFAULT ((0)) FOR [VoucherStatus]
END


End
GO
/****** Object:  Default [DF__Tbl_Vouch__Vouch__147C05D0]    Script Date: 10/07/2013 00:42:17 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_Vouch__Vouch__147C05D0]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Vouchers]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_Vouch__Vouch__147C05D0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_Vouchers] ADD  DEFAULT (getdate()) FOR [VoucherPostedDate]
END


End
GO
/****** Object:  Default [DF__Tbl_Vouch__Disco__15702A09]    Script Date: 10/07/2013 00:42:17 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_Vouch__Disco__15702A09]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Vouchers]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_Vouch__Disco__15702A09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_Vouchers] ADD  DEFAULT ((0.00)) FOR [DiscountRate]
END


End
GO
/****** Object:  Default [DF__Tbl_Vouch__Degre__16644E42]    Script Date: 10/07/2013 00:42:17 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_Vouch__Degre__16644E42]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Vouchers]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_Vouch__Degre__16644E42]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_Vouchers] ADD  DEFAULT ((0)) FOR [Degree]
END


End
GO
/****** Object:  ForeignKey [FK__Tbl_AskTh__Appro__2882FE7D]    Script Date: 10/07/2013 00:42:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_AskTh__Appro__2882FE7D]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_AskThread]'))
ALTER TABLE [dbo].[Tbl_AskThread]  WITH CHECK ADD FOREIGN KEY([ApprovedBy])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO
/****** Object:  ForeignKey [FK__Tbl_AskTh__UserA__297722B6]    Script Date: 10/07/2013 00:42:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_AskTh__UserA__297722B6]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_AskThread]'))
ALTER TABLE [dbo].[Tbl_AskThread]  WITH CHECK ADD FOREIGN KEY([UserAccessID])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO
/****** Object:  ForeignKey [FK__Tbl_AskTh__Appro__2A6B46EF]    Script Date: 10/07/2013 00:42:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_AskTh__Appro__2A6B46EF]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_AskThreadResponses]'))
ALTER TABLE [dbo].[Tbl_AskThreadResponses]  WITH CHECK ADD FOREIGN KEY([ApprovedBy])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO
/****** Object:  ForeignKey [FK__Tbl_AskTh__AskTh__2B5F6B28]    Script Date: 10/07/2013 00:42:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_AskTh__AskTh__2B5F6B28]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_AskThreadResponses]'))
ALTER TABLE [dbo].[Tbl_AskThreadResponses]  WITH CHECK ADD FOREIGN KEY([AskThreadID])
REFERENCES [dbo].[Tbl_AskThread] ([AskThreadID])
GO
/****** Object:  ForeignKey [FK__Tbl_AskTh__UserA__2C538F61]    Script Date: 10/07/2013 00:42:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_AskTh__UserA__2C538F61]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_AskThreadResponses]'))
ALTER TABLE [dbo].[Tbl_AskThreadResponses]  WITH CHECK ADD FOREIGN KEY([UserAccessID])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO
/****** Object:  ForeignKey [FK__Tbl_DealC__DealI__2D47B39A]    Script Date: 10/07/2013 00:42:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_DealC__DealI__2D47B39A]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_DealComments]'))
ALTER TABLE [dbo].[Tbl_DealComments]  WITH CHECK ADD FOREIGN KEY([DealID])
REFERENCES [dbo].[Tbl_Deals] ([DealID])
GO
/****** Object:  ForeignKey [FK__Tbl_DealC__UserA__2E3BD7D3]    Script Date: 10/07/2013 00:42:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_DealC__UserA__2E3BD7D3]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_DealComments]'))
ALTER TABLE [dbo].[Tbl_DealComments]  WITH CHECK ADD FOREIGN KEY([UserAccessID])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO
/****** Object:  ForeignKey [FK__Tbl_Deals__Appro__2F2FFC0C]    Script Date: 10/07/2013 00:42:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_Deals__Appro__2F2FFC0C]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Deals]'))
ALTER TABLE [dbo].[Tbl_Deals]  WITH CHECK ADD FOREIGN KEY([ApprovedBy])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO
/****** Object:  ForeignKey [FK__Tbl_Deals__DealT__30242045]    Script Date: 10/07/2013 00:42:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_Deals__DealT__30242045]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Deals]'))
ALTER TABLE [dbo].[Tbl_Deals]  WITH CHECK ADD FOREIGN KEY([DealType])
REFERENCES [dbo].[Tbl_DealType] ([DealTypeID])
GO
/****** Object:  ForeignKey [FK__Tbl_Deals__Topic__3118447E]    Script Date: 10/07/2013 00:42:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_Deals__Topic__3118447E]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Deals]'))
ALTER TABLE [dbo].[Tbl_Deals]  WITH CHECK ADD FOREIGN KEY([TopicTypeID])
REFERENCES [dbo].[Tbl_TopicType] ([TopicTypeID])
GO
/****** Object:  ForeignKey [FK__Tbl_Deals__UserA__320C68B7]    Script Date: 10/07/2013 00:42:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_Deals__UserA__320C68B7]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Deals]'))
ALTER TABLE [dbo].[Tbl_Deals]  WITH CHECK ADD FOREIGN KEY([UserAccessID])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO
/****** Object:  ForeignKey [FK__Tbl_UserA__UserR__33008CF0]    Script Date: 10/07/2013 00:42:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_UserA__UserR__33008CF0]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_UserAccess]'))
ALTER TABLE [dbo].[Tbl_UserAccess]  WITH CHECK ADD FOREIGN KEY([UserRoleID])
REFERENCES [dbo].[Tbl_UserRoles] ([UserRoleID])
GO
/****** Object:  ForeignKey [FK__Tbl_UserP__UserA__33F4B129]    Script Date: 10/07/2013 00:42:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_UserP__UserA__33F4B129]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_UserPersonalDetails]'))
ALTER TABLE [dbo].[Tbl_UserPersonalDetails]  WITH CHECK ADD FOREIGN KEY([UserAccessID])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO
/****** Object:  ForeignKey [FK__Tbl_UserP__Badge__34E8D562]    Script Date: 10/07/2013 00:42:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_UserP__Badge__34E8D562]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_UserProfile]'))
ALTER TABLE [dbo].[Tbl_UserProfile]  WITH CHECK ADD FOREIGN KEY([BadgeID])
REFERENCES [dbo].[Tbl_Badges] ([BadgeID])
GO
/****** Object:  ForeignKey [FK__Tbl_UserP__UserA__35DCF99B]    Script Date: 10/07/2013 00:42:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_UserP__UserA__35DCF99B]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_UserProfile]'))
ALTER TABLE [dbo].[Tbl_UserProfile]  WITH CHECK ADD FOREIGN KEY([UserAccessID])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO
/****** Object:  ForeignKey [FK__Tbl_Vouch__UserA__36D11DD4]    Script Date: 10/07/2013 00:42:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_Vouch__UserA__36D11DD4]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_VoucherComments]'))
ALTER TABLE [dbo].[Tbl_VoucherComments]  WITH CHECK ADD FOREIGN KEY([UserAccessID])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO
/****** Object:  ForeignKey [FK__Tbl_Vouch__Vouch__37C5420D]    Script Date: 10/07/2013 00:42:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_Vouch__Vouch__37C5420D]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_VoucherComments]'))
ALTER TABLE [dbo].[Tbl_VoucherComments]  WITH CHECK ADD FOREIGN KEY([VoucherID])
REFERENCES [dbo].[Tbl_Vouchers] ([VoucherID])
GO
/****** Object:  ForeignKey [FK__Tbl_Vouch__Appro__38B96646]    Script Date: 10/07/2013 00:42:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_Vouch__Appro__38B96646]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Vouchers]'))
ALTER TABLE [dbo].[Tbl_Vouchers]  WITH CHECK ADD FOREIGN KEY([ApprovedBy])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO
/****** Object:  ForeignKey [FK__Tbl_Vouch__Topic__39AD8A7F]    Script Date: 10/07/2013 00:42:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_Vouch__Topic__39AD8A7F]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Vouchers]'))
ALTER TABLE [dbo].[Tbl_Vouchers]  WITH CHECK ADD FOREIGN KEY([TopicTypeID])
REFERENCES [dbo].[Tbl_TopicType] ([TopicTypeID])
GO
/****** Object:  ForeignKey [FK__Tbl_Vouch__Vouch__3AA1AEB8]    Script Date: 10/07/2013 00:42:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_Vouch__Vouch__3AA1AEB8]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Vouchers]'))
ALTER TABLE [dbo].[Tbl_Vouchers]  WITH CHECK ADD FOREIGN KEY([VoucherCompanyID])
REFERENCES [dbo].[Tbl_VoucherCompany] ([VoucherCompanyID])
GO
