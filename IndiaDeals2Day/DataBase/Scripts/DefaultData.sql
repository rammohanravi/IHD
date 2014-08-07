USE [Id2d]
GO

SET IDENTITY_INSERT [Id2d].[dbo].[Tbl_DealCategories] ON
GO

INSERT INTO [Id2d].[dbo].[Tbl_DealCategories]([DealCategoryId],[DealCategoryName]) VALUES(1,convert(text, N'AudioVisual' collate SQL_Latin1_General_CP1_CI_AS))
INSERT INTO [Id2d].[dbo].[Tbl_DealCategories]([DealCategoryId],[DealCategoryName]) VALUES(2,convert(text, N'Mobiles' collate SQL_Latin1_General_CP1_CI_AS))
INSERT INTO [Id2d].[dbo].[Tbl_DealCategories]([DealCategoryId],[DealCategoryName]) VALUES(3,convert(text, N'Gaming' collate SQL_Latin1_General_CP1_CI_AS))
INSERT INTO [Id2d].[dbo].[Tbl_DealCategories]([DealCategoryId],[DealCategoryName]) VALUES(4,convert(text, N'Computers' collate SQL_Latin1_General_CP1_CI_AS))
INSERT INTO [Id2d].[dbo].[Tbl_DealCategories]([DealCategoryId],[DealCategoryName]) VALUES(5,convert(text, N'Entertainment' collate SQL_Latin1_General_CP1_CI_AS))
INSERT INTO [Id2d].[dbo].[Tbl_DealCategories]([DealCategoryId],[DealCategoryName]) VALUES(6,convert(text, N'Home' collate SQL_Latin1_General_CP1_CI_AS))
INSERT INTO [Id2d].[dbo].[Tbl_DealCategories]([DealCategoryId],[DealCategoryName]) VALUES(7,convert(text, N'Fashion' collate SQL_Latin1_General_CP1_CI_AS))
INSERT INTO [Id2d].[dbo].[Tbl_DealCategories]([DealCategoryId],[DealCategoryName]) VALUES(8,convert(text, N'Kids' collate SQL_Latin1_General_CP1_CI_AS))
INSERT INTO [Id2d].[dbo].[Tbl_DealCategories]([DealCategoryId],[DealCategoryName]) VALUES(9,convert(text, N'Groceries' collate SQL_Latin1_General_CP1_CI_AS))
INSERT INTO [Id2d].[dbo].[Tbl_DealCategories]([DealCategoryId],[DealCategoryName]) VALUES(10,convert(text, N'Travel' collate SQL_Latin1_General_CP1_CI_AS))
INSERT INTO [Id2d].[dbo].[Tbl_DealCategories]([DealCategoryId],[DealCategoryName]) VALUES(11,convert(text, N'Restaurent' collate SQL_Latin1_General_CP1_CI_AS))
INSERT INTO [Id2d].[dbo].[Tbl_DealCategories]([DealCategoryId],[DealCategoryName]) VALUES(12,convert(text, N'Other' collate SQL_Latin1_General_CP1_CI_AS))
GO
print 'Inserted 12 records'

SET IDENTITY_INSERT [Id2d].[dbo].[Tbl_DealCategories] OFF
GO

USE [Id2d]
GO

SET IDENTITY_INSERT [Id2d].[dbo].[Tbl_UserRoles] ON
GO

INSERT INTO [Id2d].[dbo].[Tbl_UserRoles]([UserRoleID],[UserRoleName],[MasterPage]) VALUES(1,convert(text, N'User' collate SQL_Latin1_General_CP1_CI_AS),convert(text, N'UserHome.aspx' collate SQL_Latin1_General_CP1_CI_AS))
INSERT INTO [Id2d].[dbo].[Tbl_UserRoles]([UserRoleID],[UserRoleName],[MasterPage]) VALUES(2,convert(text, N'Moderator' collate SQL_Latin1_General_CP1_CI_AS),convert(text, N'ModeratorHome.aspx' collate SQL_Latin1_General_CP1_CI_AS))
INSERT INTO [Id2d].[dbo].[Tbl_UserRoles]([UserRoleID],[UserRoleName],[MasterPage]) VALUES(3,convert(text, N'Admin' collate SQL_Latin1_General_CP1_CI_AS),convert(text, N'AdminHome.aspx' collate SQL_Latin1_General_CP1_CI_AS))
GO
print 'Inserted 3 records'

SET IDENTITY_INSERT [Id2d].[dbo].[Tbl_UserRoles] OFF
GO

USE [Id2d]
GO

SET IDENTITY_INSERT [Id2d].[dbo].[Tbl_DealType] ON
GO

INSERT INTO [Id2d].[dbo].[Tbl_DealType]([DealTypeID],[DealType],[DealTypeDescription],[DisplayOrder]) VALUES(9,convert(text, N'Offline' collate SQL_Latin1_General_CP1_CI_AS),NULL,1)
INSERT INTO [Id2d].[dbo].[Tbl_DealType]([DealTypeID],[DealType],[DealTypeDescription],[DisplayOrder]) VALUES(10,convert(text, N'Online' collate SQL_Latin1_General_CP1_CI_AS),NULL,2)
GO
print 'Inserted 2 records'

SET IDENTITY_INSERT [Id2d].[dbo].[Tbl_DealType] OFF
GO


