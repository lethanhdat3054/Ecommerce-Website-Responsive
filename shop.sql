CREATE DATABASE Shopping
USE [Shopping]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 1/22/2022 6:53:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 1/22/2022 6:53:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FromUserID] [int] NULL,
	[ToUserID] [int] NULL,
	[Content] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NULL,
	[Send] [bit] NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 1/22/2022 6:53:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[ProductName] [nvarchar](50) NULL,
	[ProductPrice] [int] NULL,
	[Quantity] [int] NULL,
	[OrderID] [int] NULL,
	[ProductImage] [nvarchar](500) NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 1/22/2022 6:53:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[Status] [nvarchar](50) NULL,
	[DateOrder] [datetime] NULL,
	[DateShip] [datetime] NULL,
	[IsPaid] [bit] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 1/22/2022 6:53:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Price] [int] NULL,
	[CreatedBy] [int] NULL,
	[ViewCount] [int] NULL,
	[Image1] [nvarchar](500) NULL,
	[Image2] [nvarchar](500) NULL,
	[Image3] [nvarchar](500) NULL,
	[Quantity] [int] NULL,
	[PurchasedCount] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[CategoryID] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/22/2022 6:53:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Email] [nvarchar](50) NULL,
	[Captcha] [nvarchar](50) NULL,
	[IsConfirm] [bit] NULL,
	[Address] [nvarchar](500) NULL,
	[Phone] [nchar](12) NULL,
	[UserTypeID] [int] NULL,
	[Password] [nvarchar](50) NULL,
	[Avatar] [nvarchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 1/22/2022 6:53:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([ID], [Name], [IsActive]) VALUES (1, N'Son', 1)
INSERT [dbo].[Categories] ([ID], [Name], [IsActive]) VALUES (2, N'Phấn trang điểm', 1)
INSERT [dbo].[Categories] ([ID], [Name], [IsActive]) VALUES (3, N'Kẻ lông mày', 1)
INSERT [dbo].[Categories] ([ID], [Name], [IsActive]) VALUES (1002, N'ưer', 0)
INSERT [dbo].[Categories] ([ID], [Name], [IsActive]) VALUES (1003, N'ewrt', 0)
INSERT [dbo].[Categories] ([ID], [Name], [IsActive]) VALUES (1004, N'abc123vvv', 0)
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID]) VALUES (1, N'Son Shu Uemura', 200000, 1, 0, N'son.jpg', N'son.jpg', N'son.jpg', 98, 2, N'None', 1, 1)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID]) VALUES (2, N'Son Shu Uemura Rouge', 220000, 1, 0, N'son-shu-uemura-rouge-unlimited-amplified-598-cam-dat-6050549b7f720-16032021134755.jpg', N'son-shu-uemura-rouge-unlimited-amplified-598-cam-dat-605056a03954c-16032021135632.jpg', N'son-shu-uemura-rouge-unlimited-amplified-598-cam-dat-605056a03ea17-16032021135632.jpg', 9, 1, N'Son Shu Uemura Rouge Unlimited Amplified OR598 lì mà không khô môi bắt kịp xu hướng của nhiều chị em phái đẹp hiện nay. Màu son cam đất siêu đẹp, thời thượng và sang trọng là gợi ý hoàn hảo cho các nàng.', 1, 1)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID]) VALUES (3, N'Phấn Thorakao', 350000, 1, 0, N'phan-trang-diem-thorakao-9g-nendep-xinh.jpg', NULL, NULL, 8, 2, N'Phấn trang điểm trắng da Thorakao Two Way Cake 9g được chiết xuất từ thiên nhiên giúp da trắng sáng ,thấm hút lượng dầu thừa trên bề mặt da , tạo lớp nền mỏng mịn ,giữ độ ẩm .', 1, 2)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID]) VALUES (4, N'Chì kẻ mày Brow Lasting Proof', 149000, 1, 0, N'chi-ke-may-2-dau-lau-troi-brow-lasting-proof-pencil-ex-fmgt.jpg', N'mat-truoc-chi-ke-may-2-dau-lau-troi-brow-lasting-proof-pencil-ex-fmgt-510x510.jpg', N'thong-tin-chi-ke-may-2-dau-lau-troi-brow-lasting-proof-pencil-ex-fmgt-510x510.jpg', 10, 0, N'Chì kẻ mày 2 đầu siêu lâu trôi Brow Lasting Proof Pencil dễ vẽ không bị vón cục, không trôi. Đầu vẽ thiết kế độc đáo cho bạn đôi lông mày như ý. Đầu chì mềm mại cho nét vẽ thật chính xác. Tông màu tự nhiên giúp bạn dễ phối với các loại trang phục. Không trôi lem, chống thấm nước giúp duy trì hiệu quả trang điểm lâu dài, đi bơi, rửa mặt… đều được.', 1, 3)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID]) VALUES (5, N'Son 3CE Velvet Lip Tint 123', 300000, 1, 0, N'download.jfif', NULL, NULL, 10, 0, N'Dòng son 3CE Velvet Lip Tint mang tông màu ấm chủ đạo với 10 sắc son xinh yêu đậm chất Hàn. Về màu sắc, có thể nói đây là một phiên bản cải tiến của 3CE Lily Maymac và 3CE Mood Recipe Matte Lip Color bởi vì màu sắc đa dạng hơn', 1, 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [Name], [Email], [Captcha], [IsConfirm], [Address], [Phone], [UserTypeID], [Password], [Avatar]) VALUES (1, N'Amin', N'admin@gmail.com', N'123456', 1, N'CT', N'1234567890  ', 1, N'123456', N'pr.jpg')
SET IDENTITY_INSERT [dbo].[Users] OFF
SET IDENTITY_INSERT [dbo].[UserType] ON 

INSERT [dbo].[UserType] ([ID], [Name]) VALUES (1, N'Admin')
INSERT [dbo].[UserType] ([ID], [Name]) VALUES (2, N'Client')
SET IDENTITY_INSERT [dbo].[UserType] OFF
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK__Message__FromUse__36B12243] FOREIGN KEY([FromUserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK__Message__FromUse__36B12243]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK__Message__ToUserI__37A5467C] FOREIGN KEY([ToUserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK__Message__ToUserI__37A5467C]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__Order__25869641] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK__OrderDeta__Order__25869641]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__Produ__24927208] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK__OrderDeta__Produ__24927208]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK__Products__Catego__239E4DCF] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK__Products__Catego__239E4DCF]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK__Products__Create__276EDEB3] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK__Products__Create__276EDEB3]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([UserTypeID])
REFERENCES [dbo].[UserType] ([ID])
GO

alter database Shopping set enable_broker with rollback immediate;