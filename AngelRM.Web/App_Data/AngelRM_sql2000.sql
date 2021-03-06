USE [master]
GO
/****** Object:  Database [Angelcms1]    
CREATE DATABASE [Angelcms1] 


CREATE TABLE [dbo].[Angel_System_Parameter](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ParaID] [varchar](50) NULL,
	[ParaName] [varchar](50) NULL,
	[Data] [varchar](200) NULL,
	[IsView] [varchar](50) NULL,
 CONSTRAINT [PK_Angel_System_Parameter] PRIMARY KEY CLUSTERED 
(
	[id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Angel_System_Parameter] ON
INSERT [dbo].[Angel_System_Parameter] ([id], [ParaID], [ParaName], [Data], [IsView]) VALUES (1, CONVERT(TEXT, N'RoleoperateValue'), CONVERT(TEXT, N'栏目操作参数'), CONVERT(TEXT, N'Add,Edit,Delete,Query,Export,Show,Refresh'), CONVERT(TEXT, N'1'))
SET IDENTITY_INSERT [dbo].[Angel_System_Parameter] OFF
/****** Object:  Table [dbo].[Angel_Content]    
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Angel_Content](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cid] [int] NULL,
	[sid] [int] NULL,
	[Title] [varchar](50) NULL,
	[Style] [varchar](50) NULL,
	[Author] [varchar](100) NULL,
	[Source] [varchar](200) NULL,
	[Jumpurl] [varchar](50) NULL,
	[Commend] [int] NULL,
	[Views] [int] NULL,
	[Diggs] [int] NULL,
	[Comments] [int] NULL,
	[IsComment] [int] NULL,
	[Seo_KeyWords] [varchar](100) NULL,
	[Seo_Description] [varchar](200) NULL,
	[Sequence] [int] NULL,
	[FilePath] [varchar](50) NULL,
	[ViewPath] [varchar](50) NULL,
	[DiyName] [varchar](50) NULL,
	[Create_Time] [datetime] NULL,
	[Modify_Time] [datetime] NULL,
	[Display] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Angel_Channel]   
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Angel_Channel](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cid] [int] NULL,
	[FatherId] [int] NULL,
	[ChildId] [int] NULL,
	[ChildIds] [int] NULL,
	[DeepPath] [int] NULL,
	[Name] [varchar](50) NULL,
	[Seo_Title] [varchar](50) NULL,
	[Seo_KeyWords] [varchar](100) NULL,
	[Seo_Description] [varchar](200) NULL,
	[Sequence] [varchar](50) NULL,
	[TableName] [nvarchar](50) NULL,
	[Domain] [nvarchar](50) NULL,
	[OutSideLink] [int] NULL,
	[TemplateChannel] [nvarchar](50) NULL,
	[Templeteclass] [nvarchar](50) NULL,
	[Templateview] [nvarchar](50) NULL,
	[RuleChannel] [nvarchar](50) NULL,
	[RuleView] [nvarchar](50) NULL,
	[PicTure] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Angel_Admin_Roleoperate]    
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Angel_Admin_Roleoperate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NULL,
	[NavIdName] [nvarchar](50) NULL,
	[Operation_Value] [nvarchar](255) NULL,
	[IsView] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Angel_Admin_Roleoperate] ON
INSERT [dbo].[Angel_Admin_Roleoperate] ([id], [RoleId], [NavIdName], [Operation_Value], [IsView]) VALUES (1, 1, N'Newslist', N'Show,View,Edit,Add,Delete', 1)
INSERT [dbo].[Angel_Admin_Roleoperate] ([id], [RoleId], [NavIdName], [Operation_Value], [IsView]) VALUES (2, 1, N'Systemlist', N'Show,View,Edit,Add,Delete', 1)
INSERT [dbo].[Angel_Admin_Roleoperate] ([id], [RoleId], [NavIdName], [Operation_Value], [IsView]) VALUES (3, 1, N'NavigationList', N'Add,Edit,Delete,Query,Export,Show,Refresh', 1)
INSERT [dbo].[Angel_Admin_Roleoperate] ([id], [RoleId], [NavIdName], [Operation_Value], [IsView]) VALUES (4, 1, N'LogList', N'Delete,Export,Refresh', 1)
INSERT [dbo].[Angel_Admin_Roleoperate] ([id], [RoleId], [NavIdName], [Operation_Value], [IsView]) VALUES (5, 1, N'AdminList', N'Add,Edit,Delete,Query,Export,Show,Refresh', 1)
INSERT [dbo].[Angel_Admin_Roleoperate] ([id], [RoleId], [NavIdName], [Operation_Value], [IsView]) VALUES (6, 1, N'Rolelist', N'Add,Edit,Delete,Query,Export,Show,Refresh', 1)
INSERT [dbo].[Angel_Admin_Roleoperate] ([id], [RoleId], [NavIdName], [Operation_Value], [IsView]) VALUES (12, 4, N'Systemlist', N'Show,View,Edit,Add,Delete', 1)
INSERT [dbo].[Angel_Admin_Roleoperate] ([id], [RoleId], [NavIdName], [Operation_Value], [IsView]) VALUES (13, 4, N'NavigationList', N'Show,View,Edit,Add,Delete', 1)
INSERT [dbo].[Angel_Admin_Roleoperate] ([id], [RoleId], [NavIdName], [Operation_Value], [IsView]) VALUES (14, 4, N'LogList', N'Show,View,Edit,Add,Delete', 1)
INSERT [dbo].[Angel_Admin_Roleoperate] ([id], [RoleId], [NavIdName], [Operation_Value], [IsView]) VALUES (15, 4, N'AdminList', N'Show,View,Edit,Add,Delete', 0)
INSERT [dbo].[Angel_Admin_Roleoperate] ([id], [RoleId], [NavIdName], [Operation_Value], [IsView]) VALUES (16, 4, N'Rolelist', N'Show,View,Edit,Add,Delete', 0)
INSERT [dbo].[Angel_Admin_Roleoperate] ([id], [RoleId], [NavIdName], [Operation_Value], [IsView]) VALUES (17, 4, N'www', N'Show,View,Edit,Add,Delete', 1)
INSERT [dbo].[Angel_Admin_Roleoperate] ([id], [RoleId], [NavIdName], [Operation_Value], [IsView]) VALUES (26, 1, N'wwww1', N'Show,View,Edit,Add,Delete', 0)
INSERT [dbo].[Angel_Admin_Roleoperate] ([id], [RoleId], [NavIdName], [Operation_Value], [IsView]) VALUES (19, 1, N'www', N'Show,View,Edit,Add,Delete', 0)
INSERT [dbo].[Angel_Admin_Roleoperate] ([id], [RoleId], [NavIdName], [Operation_Value], [IsView]) VALUES (20, 1, N'钱钱钱钱', N'Show,View,Edit,Add,Delete', 0)
INSERT [dbo].[Angel_Admin_Roleoperate] ([id], [RoleId], [NavIdName], [Operation_Value], [IsView]) VALUES (27, 1, N'222', N'Show,View,Edit,Add,Delete', 0)
INSERT [dbo].[Angel_Admin_Roleoperate] ([id], [RoleId], [NavIdName], [Operation_Value], [IsView]) VALUES (22, 1, N'Systeminfo', N'Show,Edit', 1)
INSERT [dbo].[Angel_Admin_Roleoperate] ([id], [RoleId], [NavIdName], [Operation_Value], [IsView]) VALUES (23, 1, N'wwww', N'Show,View', 0)
INSERT [dbo].[Angel_Admin_Roleoperate] ([id], [RoleId], [NavIdName], [Operation_Value], [IsView]) VALUES (24, 1, N'PermissionList', N'Show,View,Edit,Add,Delete', 1)
INSERT [dbo].[Angel_Admin_Roleoperate] ([id], [RoleId], [NavIdName], [Operation_Value], [IsView]) VALUES (25, 1, N'SysparameterList', N'Show,Edit', 1)
INSERT [dbo].[Angel_Admin_Roleoperate] ([id], [RoleId], [NavIdName], [Operation_Value], [IsView]) VALUES (28, 1, N'111111111', N'Show,View,Edit,Add,Delete', 0)
INSERT [dbo].[Angel_Admin_Roleoperate] ([id], [RoleId], [NavIdName], [Operation_Value], [IsView]) VALUES (29, 1, N'2223', N'Show,View,Edit,Add,Delete', 1)
INSERT [dbo].[Angel_Admin_Roleoperate] ([id], [RoleId], [NavIdName], [Operation_Value], [IsView]) VALUES (30, 1, N'ProductList', N'Show,View,Edit,Add,Delete', 1)
INSERT [dbo].[Angel_Admin_Roleoperate] ([id], [RoleId], [NavIdName], [Operation_Value], [IsView]) VALUES (31, 1, N'CustomList', N'Show,View,Edit,Add,Delete', 1)
INSERT [dbo].[Angel_Admin_Roleoperate] ([id], [RoleId], [NavIdName], [Operation_Value], [IsView]) VALUES (32, 1, N'OrderList', N'Show,View,Edit,Add,Delete', 1)
SET IDENTITY_INSERT [dbo].[Angel_Admin_Roleoperate] OFF
/****** Object:  Table [dbo].[Angel_Admin_Role]    
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Angel_Admin_Role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NULL,
	[RoleType] [int] NULL,
	[IsSystem] [int] NULL,
	[IsWorking] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Angel_Admin_Role] ON
INSERT [dbo].[Angel_Admin_Role] ([id], [RoleName], [RoleType], [IsSystem], [IsWorking]) VALUES (1, N'超级管理组', 1, 1, 1)
INSERT [dbo].[Angel_Admin_Role] ([id], [RoleName], [RoleType], [IsSystem], [IsWorking]) VALUES (2, N'系统管理组', 2, 1, 1)
INSERT [dbo].[Angel_Admin_Role] ([id], [RoleName], [RoleType], [IsSystem], [IsWorking]) VALUES (4, N'信息录入组', 3, 0, 1)
SET IDENTITY_INSERT [dbo].[Angel_Admin_Role] OFF
/****** Object:  Table [dbo].[Angel_Admin_Navigation]    
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Angel_Admin_Navigation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NavName] [varchar](50) NOT NULL,
	[TitleName] [nvarchar](50) NULL,
	[NavUrl] [nvarchar](100) NULL,
	[Remark] [nvarchar](50) NULL,
	[ParentId] [int] NULL,
	[SortPath] [nvarchar](100) NULL,
	[Sequence] [int] NULL,
	[ChannelId] [int] NULL,
	[Operation_Value] [varchar](255) NULL,
	[ViewFlag] [nvarchar](20) NULL,
	[AddTime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Angel_Admin_Navigation] ON
INSERT [dbo].[Angel_Admin_Navigation] ([id], [NavName], [TitleName], [NavUrl], [Remark], [ParentId], [SortPath], [Sequence], [ChannelId], [Operation_Value], [ViewFlag], [AddTime]) VALUES (1, CONVERT(TEXT, N'Newslist'), N'内容管理', N'#', N'ttttt', 0, N'', 3, 0, CONVERT(TEXT, N'Show,View,Edit,Add,Delete'), N'1', CAST(0x0000000000000000 AS DateTime))
INSERT [dbo].[Angel_Admin_Navigation] ([id], [NavName], [TitleName], [NavUrl], [Remark], [ParentId], [SortPath], [Sequence], [ChannelId], [Operation_Value], [ViewFlag], [AddTime]) VALUES (2, CONVERT(TEXT, N'Systemlist'), N'系统管理', N'#', N'系统管理', 0, N'', 2, 0, CONVERT(TEXT, N'Show,View,Edit,Add,Delete'), N'1', CAST(0x0000A46300000000 AS DateTime))
INSERT [dbo].[Angel_Admin_Navigation] ([id], [NavName], [TitleName], [NavUrl], [Remark], [ParentId], [SortPath], [Sequence], [ChannelId], [Operation_Value], [ViewFlag], [AddTime]) VALUES (3, CONVERT(TEXT, N'NavigationList'), N'导航管理', N'../Navigation/NavigationList.aspx', N'tttwwww', 2, N'', 1, 0, CONVERT(TEXT, N'Add,Edit,Delete,Query,Export,Show,Refresh'), N'1', CAST(0x0000A4D2017B9638 AS DateTime))
INSERT [dbo].[Angel_Admin_Navigation] ([id], [NavName], [TitleName], [NavUrl], [Remark], [ParentId], [SortPath], [Sequence], [ChannelId], [Operation_Value], [ViewFlag], [AddTime]) VALUES (4, CONVERT(TEXT, N'LogList'), N'日志管理', N'../Log/LogList.aspx', N'ttttttttttttttt', 2, N'', 22, 0, CONVERT(TEXT, N'Delete,Query,Export,Refresh'), N'1', CAST(0x0000A4D2017E335C AS DateTime))
INSERT [dbo].[Angel_Admin_Navigation] ([id], [NavName], [TitleName], [NavUrl], [Remark], [ParentId], [SortPath], [Sequence], [ChannelId], [Operation_Value], [ViewFlag], [AddTime]) VALUES (5, CONVERT(TEXT, N'AdminList'), N'管理员列表', N'../Admin/AdminList.aspx', N'ttttttttttttttt', 2, N'', 22, 0, CONVERT(TEXT, N'Add,Edit,Delete,Query,Export,Show,Refresh'), N'1', CAST(0x0000A4D201806258 AS DateTime))
INSERT [dbo].[Angel_Admin_Navigation] ([id], [NavName], [TitleName], [NavUrl], [Remark], [ParentId], [SortPath], [Sequence], [ChannelId], [Operation_Value], [ViewFlag], [AddTime]) VALUES (6, CONVERT(TEXT, N'www'), N'www', N'www', N'11111', 0, N'', 11, 0, CONVERT(TEXT, N'Show,View,Edit,Add,Delete'), N'1', CAST(0x0000A46300000000 AS DateTime))
INSERT [dbo].[Angel_Admin_Navigation] ([id], [NavName], [TitleName], [NavUrl], [Remark], [ParentId], [SortPath], [Sequence], [ChannelId], [Operation_Value], [ViewFlag], [AddTime]) VALUES (8, CONVERT(TEXT, N'Systeminfo'), N'基本信息', N'../Systemset/Systeminfo.aspx', N'基本信息', 2, N'', 2, 0, CONVERT(TEXT, N'Show,View,Edit,Add,Delete'), N'1', CAST(0x0000A46300000000 AS DateTime))
INSERT [dbo].[Angel_Admin_Navigation] ([id], [NavName], [TitleName], [NavUrl], [Remark], [ParentId], [SortPath], [Sequence], [ChannelId], [Operation_Value], [ViewFlag], [AddTime]) VALUES (13, CONVERT(TEXT, N'Rolelist'), N'角色管理', N'../Admin/Rolelist.aspx', N'角色管理', 2, N'', 2, 0, CONVERT(TEXT, N'Add,Edit,Delete,Query,Export,Show,Refresh'), N'1', CAST(0x0000A4D2018036FC AS DateTime))
INSERT [dbo].[Angel_Admin_Navigation] ([id], [NavName], [TitleName], [NavUrl], [Remark], [ParentId], [SortPath], [Sequence], [ChannelId], [Operation_Value], [ViewFlag], [AddTime]) VALUES (14, CONVERT(TEXT, N'CustomList'), N'客户信息', N'../CustomList/CustomList.aspx', N'2222', 1, N'', 2, 0, CONVERT(TEXT, N'Show,View,Edit,Add,Delete'), N'1', CAST(0x0000A4D300E8FBC0 AS DateTime))
INSERT [dbo].[Angel_Admin_Navigation] ([id], [NavName], [TitleName], [NavUrl], [Remark], [ParentId], [SortPath], [Sequence], [ChannelId], [Operation_Value], [ViewFlag], [AddTime]) VALUES (15, CONVERT(TEXT, N'wwww1'), N'www1', N'www1', N'22', 0, N'', 2, 0, CONVERT(TEXT, N'Show,View,Edit,Add,Delete'), N'1', CAST(0x0000A46300000000 AS DateTime))
INSERT [dbo].[Angel_Admin_Navigation] ([id], [NavName], [TitleName], [NavUrl], [Remark], [ParentId], [SortPath], [Sequence], [ChannelId], [Operation_Value], [ViewFlag], [AddTime]) VALUES (16, CONVERT(TEXT, N'222'), N'22', N'22222', N'2', 0, N'', 22, 0, CONVERT(TEXT, N'Show,View,Edit,Add,Delete'), N'1', CAST(0x0000A46300000000 AS DateTime))
INSERT [dbo].[Angel_Admin_Navigation] ([id], [NavName], [TitleName], [NavUrl], [Remark], [ParentId], [SortPath], [Sequence], [ChannelId], [Operation_Value], [ViewFlag], [AddTime]) VALUES (17, CONVERT(TEXT, N'test1'), N'test1', N'test1', N'2222', 0, N'', 2, 0, CONVERT(TEXT, N'Show,View,Edit,Add,Delete'), N'1', CAST(0x0000A4B60181F44C AS DateTime))
INSERT [dbo].[Angel_Admin_Navigation] ([id], [NavName], [TitleName], [NavUrl], [Remark], [ParentId], [SortPath], [Sequence], [ChannelId], [Operation_Value], [ViewFlag], [AddTime]) VALUES (18, CONVERT(TEXT, N'PermissionList'), N'操作权限', N'../Permission/PermissionList.aspx', N'栏目操作权限', 2, N'', 22, 0, CONVERT(TEXT, N'Show,View,Edit,Add,Delete'), N'1', CAST(0x0000A4B701506DC8 AS DateTime))
INSERT [dbo].[Angel_Admin_Navigation] ([id], [NavName], [TitleName], [NavUrl], [Remark], [ParentId], [SortPath], [Sequence], [ChannelId], [Operation_Value], [ViewFlag], [AddTime]) VALUES (19, CONVERT(TEXT, N'SysparameterList'), N'系统参数', N'../Systemset/SysparameterList.aspx', N'系统一般配置信息', 2, N'', 19, 0, CONVERT(TEXT, N'Show,Edit,View'), N'1', CAST(0x0000A4C4015CD590 AS DateTime))
INSERT [dbo].[Angel_Admin_Navigation] ([id], [NavName], [TitleName], [NavUrl], [Remark], [ParentId], [SortPath], [Sequence], [ChannelId], [Operation_Value], [ViewFlag], [AddTime]) VALUES (20, CONVERT(TEXT, N'ProductList'), N'产品信息', N'../ProductList/ProductList.aspx', N'产品信息', 1, N'', 34, 0, CONVERT(TEXT, N'Show,Delete,View'), N'1', CAST(0x0000A4D300E79078 AS DateTime))
INSERT [dbo].[Angel_Admin_Navigation] ([id], [NavName], [TitleName], [NavUrl], [Remark], [ParentId], [SortPath], [Sequence], [ChannelId], [Operation_Value], [ViewFlag], [AddTime]) VALUES (22, CONVERT(TEXT, N'OrderList'), N'订单管理', N'../OrderList/Orderlist.aspx', N'sdfssdsfds', 1, N'', 2, 0, CONVERT(TEXT, N'Show,Add,Edit'), N'1', CAST(0x0000A4D300F7821C AS DateTime))
INSERT [dbo].[Angel_Admin_Navigation] ([id], [NavName], [TitleName], [NavUrl], [Remark], [ParentId], [SortPath], [Sequence], [ChannelId], [Operation_Value], [ViewFlag], [AddTime]) VALUES (23, CONVERT(TEXT, N'2223'), N'22233333', N'333222', N'222222werwrrwwrrwrwr', 1, N'', 22, 0, CONVERT(TEXT, N'Show,Add'), N'1', CAST(0x0000A4C4015CBBC8 AS DateTime))
SET IDENTITY_INSERT [dbo].[Angel_Admin_Navigation] OFF
/****** Object:  Table [dbo].[Angel_Admin_Log]    
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Angel_Admin_Log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[AdminId] [int] NOT NULL,
	[AdminName] [nvarchar](50) NULL,
	[OperateIp] [nvarchar](100) NULL,
	[Operate_Value] [nvarchar](50) NULL,
	[Explain] [nvarchar](100) NULL,
	[AddTime] [datetime] NULL,
 CONSTRAINT [PK_Angel_Admin_Log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Angel_Admin_Log] ON
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (4, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000000000000000 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (6, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000000000000000 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (7, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4740116244C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (8, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4740116451C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (9, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A474011886D8 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (10, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A474011886D8 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (11, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A47801012740 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (12, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A47801018ADC AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (13, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A478011E746C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (14, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A47801284870 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (15, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A478015B4144 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (16, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A478015BE1D0 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (17, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A479016E0270 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (18, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A479016E039C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (19, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4810102C744 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (20, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4810102C744 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (21, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4810102CE4C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (22, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A48101150788 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (23, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A481011F81F4 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (24, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A481015E2F44 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (25, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A481017BD0D0 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (26, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A481017DB148 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (27, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4810183C90C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (28, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A48301093CC8 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (29, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A48301093CC8 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (30, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A48301093DF4 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (31, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A48301094178 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (32, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A483010AFD9C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (33, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A483011B1010 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (34, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A483011D936C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (35, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A48301220FDC AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (36, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A484011F73E4 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (37, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A484011F7768 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (38, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A484011F7768 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (39, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4840126EC64 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (40, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A48900E4C924 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (41, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A495011E0068 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (42, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A495011E0068 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (43, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4A300ECA540 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (44, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4A300ECA540 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (45, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4A300F2A0E4 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (46, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4A300F65874 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (47, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4A30107D054 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (48, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4A30107D180 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (49, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4A3010ABF80 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (50, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4A3010C5AD4 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (51, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4A3010E6A2C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (52, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4A3010EEE98 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (53, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4A301107984 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (54, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4A30112185C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (55, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4A3011258D0 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (56, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4A3011309C4 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (57, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4A30113FFDC AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (58, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4A30114AD4C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (59, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4A301282B24 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (60, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4A30128868C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (61, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4A30129DF14 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (62, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4A301556544 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (63, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4A3015598D4 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (64, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4B100D2102C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (65, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4B100D21158 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (66, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4B100D310D0 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (67, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4B100F4B03C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (68, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4B100F66300 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (69, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4B100F8550C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (70, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4B100FF09D8 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (71, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4B101012614 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (72, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4B101029ABC AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (73, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4B10105A02C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (74, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4B1010C3680 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (75, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4B1010D6988 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (76, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4B4017158BC AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (77, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4B401771518 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (78, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4B6010D685C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (79, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4B60153C8C4 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (80, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4B601705B9C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (81, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4B601711AA0 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (82, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4B6017343C0 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (83, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4B60177FBF4 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (84, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4B601799D24 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (85, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4B6017F17E0 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (86, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4B60181D37C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (87, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4B7014D3BD0 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (88, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4B70152B0B0 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (89, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4B7016119C0 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (90, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4B70170D324 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (91, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4B70171F240 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (92, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4B7017521E0 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (93, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4B701778B74 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (94, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4B70177F618 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (96, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4B80169FB30 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (97, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BC018B0CD0 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (98, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BD0000DC50 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (99, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BD00017250 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (100, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BD000E7720 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (101, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BD00D1DC9C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (102, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BD0138C0D8 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (103, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BD013EFF48 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (104, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BD01532BBC AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (105, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BD0159819C AS DateTime))
GO
print 'Processed 100 total records'
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (106, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BD01651FD4 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (107, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE00BE4D30 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (108, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE00BED8A4 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (109, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE00BF62EC AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (110, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE00C3288C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (111, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE00C3E9E8 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (112, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE00C5853C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (113, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE00C5D744 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (114, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE00D3D484 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (115, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE00D3D484 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (116, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE00D3D484 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (117, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE00D4B6B0 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (118, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE00D7724C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (119, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE00D85478 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (120, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE010ED854 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (121, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE010EDD04 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (122, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE01153E9C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (123, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE01183E30 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (124, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE01190310 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (125, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE011DBB44 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (126, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE011E83A8 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (127, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE01200534 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (128, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE012504E4 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (129, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE012791A0 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (130, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE01285B30 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (131, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE0129E9A0 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (132, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE0130329C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (133, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE01315410 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (134, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE0137A540 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (135, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE0137D09C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (136, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE013994F4 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (137, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE01399620 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (138, 2, N'111', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE013A1BB8 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (139, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE013A4BC4 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (140, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE013AD60C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (141, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE013BF780 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (142, 2, N'111', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE013C2534 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (143, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE013C3B78 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (144, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE01539C3C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (145, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE01539C3C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (146, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE01550400 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (147, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE0156FBE8 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (148, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE015D266C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (149, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE01605864 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (150, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE01605990 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (151, 2, N'111', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE0163C4F4 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (152, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE01650BE8 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (153, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE016570B0 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (154, 2, N'111', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE01657EC0 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (155, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE0165A698 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (156, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE01714F5C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (157, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE01766A00 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (158, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE0176A81C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (159, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE0177A794 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (160, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE0178BFA8 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (161, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE0178C0D4 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (162, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE01790AA8 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (163, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE017FF55C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (164, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE017FF8E0 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (165, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BE01852FA4 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (166, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BF0130DDB4 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (167, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BF0130DDB4 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (168, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BF013632F0 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (169, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BF0139A688 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (170, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BF013A1CE4 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (171, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BF013E1D1C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (172, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4BF013E3F18 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (173, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4C400B0CE80 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (174, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4C400B0D330 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (175, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4C400FA60E0 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (176, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4C4010F3E48 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (177, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4C4012DC584 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (178, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4C4013CFA7C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (179, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4C40146DEE8 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (180, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4C401492A04 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (181, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4C4014E8C24 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (182, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4C40156F288 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (183, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4C401842F00 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (184, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4CB01331AC0 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (185, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4CB01331AC0 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (186, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4CB013AEEA8 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (187, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4CB0174051C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (188, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4CB01740C24 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (189, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4CB01743E88 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (190, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4CB01772454 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (191, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4CB017C6B80 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (192, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4CC00A7E158 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (193, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4CC00A7F79C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (194, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4CC00A86240 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (195, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4CC00B8CEF0 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (196, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4CC014A8994 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (197, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4CC015A0860 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (198, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4CC015E2710 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (199, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4CC0165C768 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (200, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4CC0172E72C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (201, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4CC0172E858 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (202, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4D200CF55BC AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (203, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4D200D0EFE4 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (204, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4D20173F130 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (205, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4D20174DA64 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (206, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4D20174DA64 AS DateTime))
GO
print 'Processed 200 total records'
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (207, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4D20174DB90 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (208, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4D201760E98 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (209, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4D20177FD20 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (210, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4D20179628C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (211, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4D2017C59EC AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (212, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4D2017D444C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (213, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4D20182859C AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (214, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4D300E70504 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (215, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4D300E709B4 AS DateTime))
INSERT [dbo].[Angel_Admin_Log] ([id], [AdminId], [AdminName], [OperateIp], [Operate_Value], [Explain], [AddTime]) VALUES (216, 1, N'admin', N'127.0.0.1', N'Login', N'用户登录', CAST(0x0000A4D3014DBF10 AS DateTime))
SET IDENTITY_INSERT [dbo].[Angel_Admin_Log] OFF
/****** Object:  Table [dbo].[Angel_Admin]    
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Angel_Admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Roleid] [int] NOT NULL,
	[LoginName] [nvarchar](50) NULL,
	[PassWord] [nvarchar](100) NULL,
	[UserName] [nvarchar](50) NULL,
	[UserEmail] [nvarchar](100) NULL,
	[IsWorking] [int] NULL,
	[AddTime] [datetime] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Angel_Admin] ON
INSERT [dbo].[Angel_Admin] ([id], [Roleid], [LoginName], [PassWord], [UserName], [UserEmail], [IsWorking], [AddTime]) VALUES (1, 1, N'admin', N'A174D1A29F76FCD3', N'管理员', N'709047174@qq.com', 1, CAST(0x0000A462016A8C80 AS DateTime))
INSERT [dbo].[Angel_Admin] ([id], [Roleid], [LoginName], [PassWord], [UserName], [UserEmail], [IsWorking], [AddTime]) VALUES (2, 0, N'111', N'301D65F429858755', N'111', N'1111111', 1, CAST(0x0000A4C4012FF354 AS DateTime))
SET IDENTITY_INSERT [dbo].[Angel_Admin] OFF
/****** Object:  View [dbo].[View_Angel_Admin_Roleoperate]    
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Angel_Admin_Roleoperate]
AS
SELECT     dbo.Angel_Admin_Roleoperate.id, dbo.Angel_Admin_Navigation.NavName, dbo.Angel_Admin_Roleoperate.NavIdName, dbo.Angel_Admin_Navigation.TitleName, 
                      dbo.Angel_Admin_Navigation.NavUrl, dbo.Angel_Admin_Roleoperate.RoleId, dbo.Angel_Admin_Role.RoleName, dbo.Angel_Admin_Role.RoleType, dbo.Angel_Admin_Roleoperate.Operation_Value, 
                      dbo.Angel_Admin_Roleoperate.IsView
FROM         dbo.Angel_Admin_Roleoperate INNER JOIN
                      dbo.Angel_Admin_Navigation ON dbo.Angel_Admin_Roleoperate.NavIdName = dbo.Angel_Admin_Navigation.NavName INNER JOIN
                      dbo.Angel_Admin_Role ON dbo.Angel_Admin_Roleoperate.RoleId = dbo.Angel_Admin_Role.id
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[34] 4[45] 2[9] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Angel_Admin_Roleoperate"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 165
               Right = 207
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Angel_Admin_Navigation"
            Begin Extent = 
               Top = 3
               Left = 247
               Bottom = 159
               Right = 451
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "Angel_Admin_Role"
            Begin Extent = 
               Top = 6
               Left = 489
               Bottom = 126
               Right = 631
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2265
         Alias = 900
         Table = 2130
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Angel_Admin_Roleoperate'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'USER',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Angel_Admin_Roleoperate'
GO
/****** Object:  Default [DF_Angel_Admin_Roleoperate_IsView]    
ALTER TABLE [dbo].[Angel_Admin_Roleoperate] ADD  CONSTRAINT [DF_Angel_Admin_Roleoperate_IsView]  DEFAULT ((0)) FOR [IsView]
GO
/****** Object:  Default [DF_Angel_Admin_Navigation_AddTime]    
ALTER TABLE [dbo].[Angel_Admin_Navigation] ADD  CONSTRAINT [DF_Angel_Admin_Navigation_AddTime]  DEFAULT (getdate()) FOR [AddTime]
GO
/****** Object:  Default [DF_Angel_Admin_Log_AddTime]    
ALTER TABLE [dbo].[Angel_Admin_Log] ADD  CONSTRAINT [DF_Angel_Admin_Log_AddTime]  DEFAULT (getdate()) FOR [AddTime]
GO
