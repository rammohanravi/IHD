USE [Id2d]
GO

/****** Object:  Table [dbo].[Tbl_UserRoles]    Script Date: 3/4/2014 10:50:06 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Id2d]
GO

/****** Object:  Table [dbo].[Tbl_UserAccess]    Script Date: 3/4/2014 10:51:00 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[UserLoginName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Tbl_UserAccess] ADD  CONSTRAINT [DF__Tbl_UserA__IsUse__173876EA]  DEFAULT ((1)) FOR [IsUserValid]
GO

ALTER TABLE [dbo].[Tbl_UserAccess] ADD  DEFAULT (getdate()) FOR [LastLoginDateTime]
GO

ALTER TABLE [dbo].[Tbl_UserAccess] ADD  DEFAULT ((0)) FOR [NowOnline]
GO

ALTER TABLE [dbo].[Tbl_UserAccess]  WITH CHECK ADD FOREIGN KEY([UserRoleID])
REFERENCES [dbo].[Tbl_UserRoles] ([UserRoleID])
GO

USE [Id2d]
GO

/****** Object:  Table [dbo].[Tbl_UserPersonalDetails]    Script Date: 3/4/2014 10:51:40 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Tbl_UserPersonalDetails]  WITH CHECK ADD FOREIGN KEY([UserAccessID])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO

USE [Id2d]
GO

/****** Object:  Table [dbo].[Tbl_Badges]    Script Date: 3/4/2014 10:52:44 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[BadgeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Id2d]
GO

/****** Object:  Table [dbo].[Tbl_UserProfile]    Script Date: 3/4/2014 10:53:28 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Tbl_UserProfile] ADD  DEFAULT ((0)) FOR [VouchersCount]
GO

ALTER TABLE [dbo].[Tbl_UserProfile]  WITH CHECK ADD FOREIGN KEY([BadgeID])
REFERENCES [dbo].[Tbl_Badges] ([BadgeID])
GO

ALTER TABLE [dbo].[Tbl_UserProfile]  WITH CHECK ADD FOREIGN KEY([UserAccessID])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO

USE [Id2d]
GO

/****** Object:  Table [dbo].[Tbl_DealCategories]    Script Date: 3/4/2014 10:54:02 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Id2d]
GO

/****** Object:  Table [dbo].[Tbl_AskThread]    Script Date: 3/4/2014 10:54:26 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Tbl_AskThread] ADD  DEFAULT ((0)) FOR [AskThreadStatus]
GO

ALTER TABLE [dbo].[Tbl_AskThread] ADD  DEFAULT (getdate()) FOR [AskThreadPostedDate]
GO

ALTER TABLE [dbo].[Tbl_AskThread]  WITH CHECK ADD FOREIGN KEY([ApprovedBy])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO

ALTER TABLE [dbo].[Tbl_AskThread]  WITH CHECK ADD FOREIGN KEY([UserAccessID])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO

USE [Id2d]
GO

/****** Object:  Table [dbo].[Tbl_AskThreadResponses]    Script Date: 3/4/2014 10:54:58 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Tbl_AskThreadResponses] ADD  DEFAULT ((0)) FOR [ResponseStatus]
GO

ALTER TABLE [dbo].[Tbl_AskThreadResponses] ADD  DEFAULT (getdate()) FOR [ResponsePostedDate]
GO

ALTER TABLE [dbo].[Tbl_AskThreadResponses]  WITH CHECK ADD FOREIGN KEY([ApprovedBy])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO

ALTER TABLE [dbo].[Tbl_AskThreadResponses]  WITH CHECK ADD FOREIGN KEY([AskThreadID])
REFERENCES [dbo].[Tbl_AskThread] ([AskThreadID])
GO

ALTER TABLE [dbo].[Tbl_AskThreadResponses]  WITH CHECK ADD FOREIGN KEY([UserAccessID])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO

USE [Id2d]
GO

/****** Object:  Table [dbo].[Tbl_RecordUsers]    Script Date: 3/4/2014 10:55:35 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Tbl_RecordUsers] ADD  DEFAULT (getdate()) FOR [RecordedDateTime]
GO

USE [Id2d]
GO

/****** Object:  Table [dbo].[Tbl_Statastics]    Script Date: 3/4/2014 10:56:18 AM ******/
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

ALTER TABLE [dbo].[Tbl_Statastics] ADD  DEFAULT ((0)) FOR [NumberOfUsers]
GO

ALTER TABLE [dbo].[Tbl_Statastics] ADD  DEFAULT ((0)) FOR [NumberOfDeals]
GO

ALTER TABLE [dbo].[Tbl_Statastics] ADD  DEFAULT ((0)) FOR [NumberOfActiveDeals]
GO

ALTER TABLE [dbo].[Tbl_Statastics] ADD  DEFAULT ((0)) FOR [NumberOfInActiveDeals]
GO

ALTER TABLE [dbo].[Tbl_Statastics] ADD  DEFAULT ((0)) FOR [NumberOfVouchers]
GO

ALTER TABLE [dbo].[Tbl_Statastics] ADD  DEFAULT ((0)) FOR [NumberOfActiveVouchers]
GO

ALTER TABLE [dbo].[Tbl_Statastics] ADD  DEFAULT ((0)) FOR [NumberOfInActiveVouchers]
GO

USE [Id2d]
GO

/****** Object:  Table [dbo].[Tbl_DealType]    Script Date: 3/4/2014 10:56:57 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Id2d]
GO

/****** Object:  Table [dbo].[Tbl_Deals]    Script Date: 3/4/2014 10:58:25 AM ******/
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
PRIMARY KEY CLUSTERED 
(
	[DealID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Tbl_Deals] ADD  DEFAULT ((0)) FOR [DealStatus]
GO

ALTER TABLE [dbo].[Tbl_Deals] ADD  DEFAULT ((0)) FOR [DealPrice]
GO

ALTER TABLE [dbo].[Tbl_Deals] ADD  DEFAULT ((0)) FOR [DealDegree]
GO

ALTER TABLE [dbo].[Tbl_Deals] ADD  DEFAULT (getdate()) FOR [DealPostedDate]
GO

ALTER TABLE [dbo].[Tbl_Deals] ADD  DEFAULT (getdate()) FOR [DealStartDate]
GO

ALTER TABLE [dbo].[Tbl_Deals] ADD  DEFAULT (getdate()) FOR [DealEndDate]
GO

ALTER TABLE [dbo].[Tbl_Deals] ADD  DEFAULT ((0)) FOR [DealPriceCategory]
GO

ALTER TABLE [dbo].[Tbl_Deals]  WITH CHECK ADD FOREIGN KEY([ApprovedBy])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO

ALTER TABLE [dbo].[Tbl_Deals]  WITH CHECK ADD FOREIGN KEY([DealCategoryId])
REFERENCES [dbo].[Tbl_DealCategories] ([DealCategoryId])
GO

ALTER TABLE [dbo].[Tbl_Deals]  WITH CHECK ADD FOREIGN KEY([DealType])
REFERENCES [dbo].[Tbl_DealType] ([DealTypeID])
GO

ALTER TABLE [dbo].[Tbl_Deals]  WITH CHECK ADD FOREIGN KEY([UserAccessID])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO

USE [Id2d]
GO

/****** Object:  Table [dbo].[Tbl_DealComments]    Script Date: 3/4/2014 10:59:02 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Tbl_DealComments] ADD  DEFAULT ((0)) FOR [CommentStatus]
GO

ALTER TABLE [dbo].[Tbl_DealComments] ADD  DEFAULT (getdate()) FOR [CommentPostedDate]
GO

ALTER TABLE [dbo].[Tbl_DealComments]  WITH CHECK ADD FOREIGN KEY([DealID])
REFERENCES [dbo].[Tbl_Deals] ([DealID])
GO

ALTER TABLE [dbo].[Tbl_DealComments]  WITH CHECK ADD FOREIGN KEY([UserAccessID])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO

USE [Id2d]
GO

/****** Object:  Table [dbo].[Tbl_VoucherCompany]    Script Date: 3/4/2014 10:59:33 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Id2d]
GO

/****** Object:  Table [dbo].[Tbl_Vouchers]    Script Date: 3/4/2014 11:00:00 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[VoucherCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Tbl_Vouchers] ADD  DEFAULT ((0)) FOR [VoucherStatus]
GO

ALTER TABLE [dbo].[Tbl_Vouchers] ADD  DEFAULT (getdate()) FOR [VoucherPostedDate]
GO

ALTER TABLE [dbo].[Tbl_Vouchers] ADD  DEFAULT ((0.00)) FOR [DiscountRate]
GO

ALTER TABLE [dbo].[Tbl_Vouchers] ADD  DEFAULT ((0)) FOR [Degree]
GO

ALTER TABLE [dbo].[Tbl_Vouchers]  WITH CHECK ADD FOREIGN KEY([ApprovedBy])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO

ALTER TABLE [dbo].[Tbl_Vouchers]  WITH CHECK ADD FOREIGN KEY([DealCategoryId])
REFERENCES [dbo].[Tbl_DealCategories] ([DealCategoryId])
GO

ALTER TABLE [dbo].[Tbl_Vouchers]  WITH CHECK ADD FOREIGN KEY([VoucherCompanyID])
REFERENCES [dbo].[Tbl_VoucherCompany] ([VoucherCompanyID])
GO

USE [Id2d]
GO

/****** Object:  Table [dbo].[Tbl_VoucherComments]    Script Date: 3/4/2014 11:00:36 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Tbl_VoucherComments] ADD  DEFAULT ((0)) FOR [CommentStatus]
GO

ALTER TABLE [dbo].[Tbl_VoucherComments] ADD  DEFAULT (getdate()) FOR [CommentPostedDate]
GO

ALTER TABLE [dbo].[Tbl_VoucherComments]  WITH CHECK ADD FOREIGN KEY([UserAccessID])
REFERENCES [dbo].[Tbl_UserAccess] ([UserAccessID])
GO

ALTER TABLE [dbo].[Tbl_VoucherComments]  WITH CHECK ADD FOREIGN KEY([VoucherID])
REFERENCES [dbo].[Tbl_Vouchers] ([VoucherID])
GO

