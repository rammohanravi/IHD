Create database IndiaDeals2Day
Go
USE [IndiaDeals2Day]
GO
/****** Object:  Table [dbo].[Tbl_VoucherCompany]    Script Date: 10/05/2013 14:53:06 ******/
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
/****** Object:  Table [dbo].[Tbl_UserRoles]    Script Date: 10/05/2013 14:53:06 ******/
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
/****** Object:  Table [dbo].[Tbl_TopicType]    Script Date: 10/05/2013 14:53:06 ******/
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
/****** Object:  Table [dbo].[Tbl_Statastics]    Script Date: 10/05/2013 14:53:06 ******/
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
/****** Object:  Table [dbo].[Tbl_DealType]    Script Date: 10/05/2013 14:53:06 ******/
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
/****** Object:  Table [dbo].[Tbl_UserAccess]    Script Date: 10/05/2013 14:53:06 ******/
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
/****** Object:  Table [dbo].[Tbl_Deals]    Script Date: 10/05/2013 14:53:06 ******/
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
PRIMARY KEY CLUSTERED 
(
	[DealID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Vouchers]    Script Date: 10/05/2013 14:53:06 ******/
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
/****** Object:  Table [dbo].[Tbl_UserProfile]    Script Date: 10/05/2013 14:53:06 ******/
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
	[Degree] [int] NULL,
	[VouchersCount] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserProfileID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Tbl_UserPersonalDetails]    Script Date: 10/05/2013 14:53:06 ******/
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
/****** Object:  Table [dbo].[Tbl_AskThread]    Script Date: 10/05/2013 14:53:06 ******/
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
/****** Object:  Table [dbo].[Tbl_VoucherComments]    Script Date: 10/05/2013 14:53:06 ******/
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
/****** Object:  Table [dbo].[Tbl_DealComments]    Script Date: 10/05/2013 14:53:06 ******/
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
/****** Object:  Table [dbo].[Tbl_AskThreadResponses]    Script Date: 10/05/2013 14:53:06 ******/
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
/****** Object:  Default [DF__Tbl_AskTh__AskTh__02084FDA]    Script Date: 10/05/2013 14:53:06 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_AskTh__AskTh__02084FDA]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_AskThread]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_AskTh__AskTh__02084FDA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_AskThread] ADD  DEFAULT ((0)) FOR [AskThreadStatus]
END


End
GO
/****** Object:  Default [DF__Tbl_AskTh__AskTh__02FC7413]    Script Date: 10/05/2013 14:53:06 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_AskTh__AskTh__02FC7413]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_AskThread]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_AskTh__AskTh__02FC7413]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_AskThread] ADD  DEFAULT (getdate()) FOR [AskThreadPostedDate]
END


End
GO
/****** Object:  Default [DF__Tbl_AskTh__Respo__0A9D95DB]    Script Date: 10/05/2013 14:53:06 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_AskTh__Respo__0A9D95DB]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_AskThreadResponses]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_AskTh__Respo__0A9D95DB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_AskThreadResponses] ADD  DEFAULT ((0)) FOR [ResponseStatus]
END


End
GO
/****** Object:  Default [DF__Tbl_AskTh__Respo__0B91BA14]    Script Date: 10/05/2013 14:53:06 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_AskTh__Respo__0B91BA14]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_AskThreadResponses]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_AskTh__Respo__0B91BA14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_AskThreadResponses] ADD  DEFAULT (getdate()) FOR [ResponsePostedDate]
END


End
GO
/****** Object:  Default [DF__Tbl_DealC__Comme__6E01572D]    Script Date: 10/05/2013 14:53:06 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_DealC__Comme__6E01572D]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_DealComments]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_DealC__Comme__6E01572D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_DealComments] ADD  DEFAULT ((0)) FOR [CommentStatus]
END


End
GO
/****** Object:  Default [DF__Tbl_DealC__Comme__6EF57B66]    Script Date: 10/05/2013 14:53:06 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_DealC__Comme__6EF57B66]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_DealComments]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_DealC__Comme__6EF57B66]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_DealComments] ADD  DEFAULT (getdate()) FOR [CommentPostedDate]
END


End
GO
/****** Object:  Default [DF__Tbl_Deals__DealS__2C3393D0]    Script Date: 10/05/2013 14:53:06 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_Deals__DealS__2C3393D0]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Deals]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_Deals__DealS__2C3393D0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_Deals] ADD  DEFAULT ((0)) FOR [DealStatus]
END


End
GO
/****** Object:  Default [DF__Tbl_Deals__DealP__2D27B809]    Script Date: 10/05/2013 14:53:06 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_Deals__DealP__2D27B809]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Deals]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_Deals__DealP__2D27B809]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_Deals] ADD  DEFAULT ((0)) FOR [DealPrice]
END


End
GO
/****** Object:  Default [DF__Tbl_Deals__DealD__2E1BDC42]    Script Date: 10/05/2013 14:53:06 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_Deals__DealD__2E1BDC42]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Deals]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_Deals__DealD__2E1BDC42]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_Deals] ADD  DEFAULT ((0)) FOR [DealDegree]
END


End
GO
/****** Object:  Default [DF__Tbl_Deals__DealP__2F10007B]    Script Date: 10/05/2013 14:53:06 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_Deals__DealP__2F10007B]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Deals]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_Deals__DealP__2F10007B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_Deals] ADD  DEFAULT (getdate()) FOR [DealPostedDate]
END


End
GO
/****** Object:  Default [DF__Tbl_UserA__IsUse__173876EA]    Script Date: 10/05/2013 14:53:06 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_UserA__IsUse__173876EA]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_UserAccess]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_UserA__IsUse__173876EA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_UserAccess] ADD  CONSTRAINT [DF__Tbl_UserA__IsUse__173876EA]  DEFAULT ((1)) FOR [IsUserValid]
END


End
GO
/****** Object:  Default [DF__Tbl_UserA__LastL__182C9B23]    Script Date: 10/05/2013 14:53:06 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_UserA__LastL__182C9B23]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_UserAccess]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_UserA__LastL__182C9B23]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_UserAccess] ADD  DEFAULT (getdate()) FOR [LastLoginDateTime]
END


End
GO
/****** Object:  Default [DF__Tbl_UserP__Degre__22AA2996]    Script Date: 10/05/2013 14:53:06 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_UserP__Degre__22AA2996]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_UserProfile]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_UserP__Degre__22AA2996]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_UserProfile] ADD  DEFAULT ((0)) FOR [Degree]
END


End
GO
/****** Object:  Default [DF__Tbl_UserP__Vouch__619B8048]    Script Date: 10/05/2013 14:53:06 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_UserP__Vouch__619B8048]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_UserProfile]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_UserP__Vouch__619B8048]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_UserProfile] ADD  DEFAULT ((0)) FOR [VouchersCount]
END


End
GO
/****** Object:  Default [DF__Tbl_Vouch__Comme__7B5B524B]    Script Date: 10/05/2013 14:53:06 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_Vouch__Comme__7B5B524B]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_VoucherComments]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_Vouch__Comme__7B5B524B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_VoucherComments] ADD  DEFAULT ((0)) FOR [CommentStatus]
END


End
GO
/****** Object:  Default [DF__Tbl_Vouch__Comme__7C4F7684]    Script Date: 10/05/2013 14:53:06 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_Vouch__Comme__7C4F7684]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_VoucherComments]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_Vouch__Comme__7C4F7684]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_VoucherComments] ADD  DEFAULT (getdate()) FOR [CommentPostedDate]
END


End
GO
/****** Object:  Default [DF__Tbl_Vouch__Vouch__5BE2A6F2]    Script Date: 10/05/2013 14:53:06 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_Vouch__Vouch__5BE2A6F2]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Vouchers]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_Vouch__Vouch__5BE2A6F2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_Vouchers] ADD  DEFAULT ((0)) FOR [VoucherStatus]
END


End
GO
/****** Object:  Default [DF__Tbl_Vouch__Vouch__5CD6CB2B]    Script Date: 10/05/2013 14:53:06 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_Vouch__Vouch__5CD6CB2B]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Vouchers]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_Vouch__Vouch__5CD6CB2B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_Vouchers] ADD  DEFAULT (getdate()) FOR [VoucherPostedDate]
END


End
GO
/****** Object:  Default [DF__Tbl_Vouch__Disco__5DCAEF64]    Script Date: 10/05/2013 14:53:06 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_Vouch__Disco__5DCAEF64]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Vouchers]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_Vouch__Disco__5DCAEF64]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_Vouchers] ADD  DEFAULT ((0.00)) FOR [DiscountRate]
END


End
GO
/****** Object:  Default [DF__Tbl_Vouch__Degre__5EBF139D]    Script Date: 10/05/2013 14:53:06 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tbl_Vouch__Degre__5EBF139D]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Vouchers]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Tbl_Vouch__Degre__5EBF139D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tbl_Vouchers] ADD  DEFAULT ((0)) FOR [Degree]
END


End
GO
/****** Object:  ForeignKey [FK__Tbl_AskTh__Appro__03F0984C]    Script Date: 10/05/2013 14:53:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_AskTh__Appro__03F0984C]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_AskThread]'))
ALTER TABLE [dbo].[Tbl_AskThread]  WITH CHECK ADD FOREIGN KEY([ApprovedBy])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO
/****** Object:  ForeignKey [FK__Tbl_AskTh__UserA__01142BA1]    Script Date: 10/05/2013 14:53:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_AskTh__UserA__01142BA1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_AskThread]'))
ALTER TABLE [dbo].[Tbl_AskThread]  WITH CHECK ADD FOREIGN KEY([UserAccessID])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO
/****** Object:  ForeignKey [FK__Tbl_AskTh__Appro__0C85DE4D]    Script Date: 10/05/2013 14:53:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_AskTh__Appro__0C85DE4D]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_AskThreadResponses]'))
ALTER TABLE [dbo].[Tbl_AskThreadResponses]  WITH CHECK ADD FOREIGN KEY([ApprovedBy])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO
/****** Object:  ForeignKey [FK__Tbl_AskTh__AskTh__08B54D69]    Script Date: 10/05/2013 14:53:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_AskTh__AskTh__08B54D69]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_AskThreadResponses]'))
ALTER TABLE [dbo].[Tbl_AskThreadResponses]  WITH CHECK ADD FOREIGN KEY([AskThreadID])
REFERENCES [dbo].[Tbl_AskThread] ([AskThreadID])
GO
/****** Object:  ForeignKey [FK__Tbl_AskTh__UserA__09A971A2]    Script Date: 10/05/2013 14:53:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_AskTh__UserA__09A971A2]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_AskThreadResponses]'))
ALTER TABLE [dbo].[Tbl_AskThreadResponses]  WITH CHECK ADD FOREIGN KEY([UserAccessID])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO
/****** Object:  ForeignKey [FK__Tbl_DealC__DealI__6C190EBB]    Script Date: 10/05/2013 14:53:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_DealC__DealI__6C190EBB]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_DealComments]'))
ALTER TABLE [dbo].[Tbl_DealComments]  WITH CHECK ADD FOREIGN KEY([DealID])
REFERENCES [dbo].[Tbl_Deals] ([DealID])
GO
/****** Object:  ForeignKey [FK__Tbl_DealC__UserA__6D0D32F4]    Script Date: 10/05/2013 14:53:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_DealC__UserA__6D0D32F4]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_DealComments]'))
ALTER TABLE [dbo].[Tbl_DealComments]  WITH CHECK ADD FOREIGN KEY([UserAccessID])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO
/****** Object:  ForeignKey [FK__Tbl_Deals__Appro__300424B4]    Script Date: 10/05/2013 14:53:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_Deals__Appro__300424B4]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Deals]'))
ALTER TABLE [dbo].[Tbl_Deals]  WITH CHECK ADD FOREIGN KEY([ApprovedBy])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO
/****** Object:  ForeignKey [FK__Tbl_Deals__DealT__30F848ED]    Script Date: 10/05/2013 14:53:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_Deals__DealT__30F848ED]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Deals]'))
ALTER TABLE [dbo].[Tbl_Deals]  WITH CHECK ADD FOREIGN KEY([DealType])
REFERENCES [dbo].[Tbl_DealType] ([DealTypeID])
GO
/****** Object:  ForeignKey [FK__Tbl_Deals__Topic__66603565]    Script Date: 10/05/2013 14:53:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_Deals__Topic__66603565]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Deals]'))
ALTER TABLE [dbo].[Tbl_Deals]  WITH CHECK ADD FOREIGN KEY([TopicTypeID])
REFERENCES [dbo].[Tbl_TopicType] ([TopicTypeID])
GO
/****** Object:  ForeignKey [FK__Tbl_Deals__UserA__2B3F6F97]    Script Date: 10/05/2013 14:53:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_Deals__UserA__2B3F6F97]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Deals]'))
ALTER TABLE [dbo].[Tbl_Deals]  WITH CHECK ADD FOREIGN KEY([UserAccessID])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO
/****** Object:  ForeignKey [FK__Tbl_UserA__UserR__440B1D61]    Script Date: 10/05/2013 14:53:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_UserA__UserR__440B1D61]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_UserAccess]'))
ALTER TABLE [dbo].[Tbl_UserAccess]  WITH CHECK ADD FOREIGN KEY([UserRoleID])
REFERENCES [dbo].[Tbl_UserRoles] ([UserRoleID])
GO
/****** Object:  ForeignKey [FK__Tbl_UserP__UserA__1CF15040]    Script Date: 10/05/2013 14:53:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_UserP__UserA__1CF15040]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_UserPersonalDetails]'))
ALTER TABLE [dbo].[Tbl_UserPersonalDetails]  WITH CHECK ADD FOREIGN KEY([UserAccessID])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO
/****** Object:  ForeignKey [FK__Tbl_UserP__UserA__21B6055D]    Script Date: 10/05/2013 14:53:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_UserP__UserA__21B6055D]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_UserProfile]'))
ALTER TABLE [dbo].[Tbl_UserProfile]  WITH CHECK ADD FOREIGN KEY([UserAccessID])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO
/****** Object:  ForeignKey [FK__Tbl_Vouch__UserA__7A672E12]    Script Date: 10/05/2013 14:53:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_Vouch__UserA__7A672E12]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_VoucherComments]'))
ALTER TABLE [dbo].[Tbl_VoucherComments]  WITH CHECK ADD FOREIGN KEY([UserAccessID])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO
/****** Object:  ForeignKey [FK__Tbl_Vouch__Vouch__797309D9]    Script Date: 10/05/2013 14:53:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_Vouch__Vouch__797309D9]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_VoucherComments]'))
ALTER TABLE [dbo].[Tbl_VoucherComments]  WITH CHECK ADD FOREIGN KEY([VoucherID])
REFERENCES [dbo].[Tbl_Vouchers] ([VoucherID])
GO
/****** Object:  ForeignKey [FK__Tbl_Vouch__Appro__5FB337D6]    Script Date: 10/05/2013 14:53:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_Vouch__Appro__5FB337D6]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Vouchers]'))
ALTER TABLE [dbo].[Tbl_Vouchers]  WITH CHECK ADD FOREIGN KEY([ApprovedBy])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO
/****** Object:  ForeignKey [FK__Tbl_Vouch__Topic__6754599E]    Script Date: 10/05/2013 14:53:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_Vouch__Topic__6754599E]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Vouchers]'))
ALTER TABLE [dbo].[Tbl_Vouchers]  WITH CHECK ADD FOREIGN KEY([TopicTypeID])
REFERENCES [dbo].[Tbl_TopicType] ([TopicTypeID])
GO
/****** Object:  ForeignKey [FK__Tbl_Vouch__Vouch__60A75C0F]    Script Date: 10/05/2013 14:53:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Tbl_Vouch__Vouch__60A75C0F]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Vouchers]'))
ALTER TABLE [dbo].[Tbl_Vouchers]  WITH CHECK ADD FOREIGN KEY([VoucherCompanyID])
REFERENCES [dbo].[Tbl_VoucherCompany] ([VoucherCompanyID])
GO
