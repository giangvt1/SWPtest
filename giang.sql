USE [test1]
GO
/****** Object:  Table [dbo].[Application]    Script Date: 05/02/2025 11:20:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Application](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[date] [date] NULL,
	[doctor_id] [int] NULL,
	[reason] [nvarchar](255) NULL,
	[status] [varchar](10) NOT NULL,
	[reply] [nvarchar](255) NULL,
 CONSTRAINT [PK_Application] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Appointment]    Script Date: 05/02/2025 11:20:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[doctor_id] [int] NULL,
	[date] [date] NULL,
	[customer_id] [int] NULL,
	[status] [varchar](50) NULL,
 CONSTRAINT [PK_Appointment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 05/02/2025 11:20:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](255) NULL,
	[gmail] [varchar](50) NULL,
	[gender] [bit] NULL,
	[dob] [date] NULL,
	[address] [varchar](50) NULL,
	[phone_number] [varchar](50) NULL,
	[google_id] [varchar](255) NULL,
	[fullname] [nvarchar](50) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 05/02/2025 11:20:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 05/02/2025 11:20:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Doctor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctor_Department]    Script Date: 05/02/2025 11:20:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor_Department](
	[doctor_id] [int] NOT NULL,
	[department_id] [int] NOT NULL,
 CONSTRAINT [PK_Doctor_Department] PRIMARY KEY CLUSTERED 
(
	[doctor_id] ASC,
	[department_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feature]    Script Date: 05/02/2025 11:20:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[url] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Google_Authen]    Script Date: 05/02/2025 11:20:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Google_Authen](
	[account_id] [varchar](255) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[name] [varchar](50) NULL,
	[first_name] [varchar](50) NULL,
	[given_name] [varchar](50) NULL,
	[family_name] [varchar](50) NULL,
	[picture] [varchar](255) NULL,
	[verified_email] [bit] NOT NULL,
 CONSTRAINT [PK_Google_Authen] PRIMARY KEY CLUSTERED 
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 05/02/2025 11:20:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[price] [float] NULL,
	[date] [date] NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicalHistory]    Script Date: 05/02/2025 11:20:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicalHistory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Detail] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 05/02/2025 11:20:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleFeature]    Script Date: 05/02/2025 11:20:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleFeature](
	[role_id] [int] NOT NULL,
	[feature_id] [int] NOT NULL,
 CONSTRAINT [PK_RoleFeature] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC,
	[feature_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 05/02/2025 11:20:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[level] [int] NULL,
	[price] [float] NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service_Appointment]    Script Date: 05/02/2025 11:20:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service_Appointment](
	[service_id] [int] NOT NULL,
	[Appointment_id] [int] NOT NULL,
 CONSTRAINT [PK_Service_Appointment] PRIMARY KEY CLUSTERED 
(
	[service_id] ASC,
	[Appointment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 05/02/2025 11:20:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[gender] [bit] NULL,
	[email] [varchar](50) NULL,
	[phone_number] [varchar](50) NULL,
	[fullname] [nvarchar](50) NULL,
	[dob] [date] NULL,
	[address] [varchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StaffRole]    Script Date: 05/02/2025 11:20:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffRole](
	[staff_id] [int] NOT NULL,
	[role_id] [int] NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[staff_id] ASC,
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VisitHistory]    Script Date: 05/02/2025 11:20:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VisitHistory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[DoctorID] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[VisitDate] [date] NOT NULL,
	[ReasonForVisit] [varchar](255) NOT NULL,
	[Diagnoses] [varchar](255) NOT NULL,
	[TreatmentPlan] [varchar](255) NOT NULL,
	[NextAppointment] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Application] ON 

INSERT [dbo].[Application] ([id], [name], [date], [doctor_id], [reason], [status], [reply]) VALUES (1, N'test', CAST(N'2024-12-21' AS Date), 1, N'hhh', N'pending', NULL)
INSERT [dbo].[Application] ([id], [name], [date], [doctor_id], [reason], [status], [reply]) VALUES (2, N'32e', CAST(N'2025-01-28' AS Date), 1, N'wwewef', N'pending', NULL)
SET IDENTITY_INSERT [dbo].[Application] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([id], [username], [password], [gmail], [gender], [dob], [address], [phone_number], [google_id], [fullname]) VALUES (1, N'giangvt', N'123', N'test@gmail.com', 1, CAST(N'2000-01-02' AS Date), N'ad', N'0123432123', NULL, N'VuTRUongGiang')
INSERT [dbo].[Customer] ([id], [username], [password], [gmail], [gender], [dob], [address], [phone_number], [google_id], [fullname]) VALUES (2, N'nguyenvana', N'password123', N'nguyenvana@gmail.com', 1, CAST(N'1990-01-01' AS Date), N'Hanoi', N'0901234567', NULL, N'Nguyễn Văn A')
INSERT [dbo].[Customer] ([id], [username], [password], [gmail], [gender], [dob], [address], [phone_number], [google_id], [fullname]) VALUES (3, N'tranthib', N'password123', N'tranthib@gmail.com', 0, CAST(N'1992-02-02' AS Date), N'Ho Chi Minh City', N'0912345678', NULL, N'Trần Thị B')
INSERT [dbo].[Customer] ([id], [username], [password], [gmail], [gender], [dob], [address], [phone_number], [google_id], [fullname]) VALUES (4, N'levanc', N'password123', N'levanc@gmail.com', 1, CAST(N'1985-03-03' AS Date), N'Da Nang', N'0923456789', NULL, N'Lê Văn C')
INSERT [dbo].[Customer] ([id], [username], [password], [gmail], [gender], [dob], [address], [phone_number], [google_id], [fullname]) VALUES (5, N'phamthid', N'password123', N'phamthid@gmail.com', 0, CAST(N'1998-04-04' AS Date), N'Can Tho', N'0934567890', NULL, N'Phạm Thị D')
INSERT [dbo].[Customer] ([id], [username], [password], [gmail], [gender], [dob], [address], [phone_number], [google_id], [fullname]) VALUES (6, N'hoangvane', N'password123', N'hoangvane@gmail.com', 1, CAST(N'1991-05-05' AS Date), N'Hai Phong', N'0945678901', NULL, N'Hoàng Văn E')
INSERT [dbo].[Customer] ([id], [username], [password], [gmail], [gender], [dob], [address], [phone_number], [google_id], [fullname]) VALUES (7, N'dothif', N'password123', N'dothif@gmail.com', 0, CAST(N'1993-06-06' AS Date), N'Nha Trang', N'0956789012', NULL, N'Đỗ Thị F')
INSERT [dbo].[Customer] ([id], [username], [password], [gmail], [gender], [dob], [address], [phone_number], [google_id], [fullname]) VALUES (8, N'vuvang', N'password123', N'vuvang@gmail.com', 1, CAST(N'1989-07-07' AS Date), N'Hue', N'0967890123', NULL, N'Vũ Văn G')
INSERT [dbo].[Customer] ([id], [username], [password], [gmail], [gender], [dob], [address], [phone_number], [google_id], [fullname]) VALUES (9, N'buithih', N'password123', N'buithih@gmail.com', 0, CAST(N'1995-08-08' AS Date), N'Vung Tau', N'0978901234', NULL, N'Bùi Thị H')
INSERT [dbo].[Customer] ([id], [username], [password], [gmail], [gender], [dob], [address], [phone_number], [google_id], [fullname]) VALUES (10, N'ngovani', N'password123', N'ngovani@gmail.com', 1, CAST(N'1988-09-09' AS Date), N'Quang Ninh', N'0989012345', NULL, N'Ngô Văn I')
INSERT [dbo].[Customer] ([id], [username], [password], [gmail], [gender], [dob], [address], [phone_number], [google_id], [fullname]) VALUES (11, N'tranthij', N'password123', N'tranthij@gmail.com', 0, CAST(N'1996-10-10' AS Date), N'Bac Ninh', N'0990123456', NULL, N'Trần Thị J')
INSERT [dbo].[Customer] ([id], [username], [password], [gmail], [gender], [dob], [address], [phone_number], [google_id], [fullname]) VALUES (12, N'nguyenvank', N'password123', N'nguyenvank@gmail.com', 1, CAST(N'1994-11-11' AS Date), N'Ha Tinh', N'0901123456', NULL, N'Nguyễn Văn K')
INSERT [dbo].[Customer] ([id], [username], [password], [gmail], [gender], [dob], [address], [phone_number], [google_id], [fullname]) VALUES (13, N'phamthil', N'password123', N'phamthil@gmail.com', 0, CAST(N'1997-12-12' AS Date), N'Binh Duong', N'0912123456', NULL, N'Phạm Thị L')
INSERT [dbo].[Customer] ([id], [username], [password], [gmail], [gender], [dob], [address], [phone_number], [google_id], [fullname]) VALUES (14, N'hoangvanm', N'password123', N'hoangvanm@gmail.com', 1, CAST(N'1986-01-13' AS Date), N'Dong Nai', N'0923123456', NULL, N'Hoàng Văn M')
INSERT [dbo].[Customer] ([id], [username], [password], [gmail], [gender], [dob], [address], [phone_number], [google_id], [fullname]) VALUES (15, N'dothin', N'password123', N'dothin@gmail.com', 0, CAST(N'1999-02-14' AS Date), N'Long An', N'0933123456', NULL, N'Đỗ Thị N')
INSERT [dbo].[Customer] ([id], [username], [password], [gmail], [gender], [dob], [address], [phone_number], [google_id], [fullname]) VALUES (16, N'levano', N'password123', N'levano@gmail.com', 1, CAST(N'1987-03-15' AS Date), N'Tien Giang', N'0944123456', NULL, N'Lê Văn O')
INSERT [dbo].[Customer] ([id], [username], [password], [gmail], [gender], [dob], [address], [phone_number], [google_id], [fullname]) VALUES (17, N'vuthip', N'password123', N'vuthip@gmail.com', 0, CAST(N'1991-04-16' AS Date), N'Ben Tre', N'0955123456', NULL, N'Vũ Thị P')
INSERT [dbo].[Customer] ([id], [username], [password], [gmail], [gender], [dob], [address], [phone_number], [google_id], [fullname]) VALUES (18, N'ngovanq', N'password123', N'ngovanq@gmail.com', 1, CAST(N'1990-05-17' AS Date), N'Tra Vinh', N'0966123456', NULL, N'Ngô Văn Q')
INSERT [dbo].[Customer] ([id], [username], [password], [gmail], [gender], [dob], [address], [phone_number], [google_id], [fullname]) VALUES (19, N'buithir', N'password123', N'buithir@gmail.com', 0, CAST(N'1995-06-18' AS Date), N'Dong Thap', N'0977123456', NULL, N'Bùi Thị R')
INSERT [dbo].[Customer] ([id], [username], [password], [gmail], [gender], [dob], [address], [phone_number], [google_id], [fullname]) VALUES (20, N'tranvans', N'password123', N'tranvans@gmail.com', 1, CAST(N'1988-07-19' AS Date), N'Vinh Long', N'0988123456', NULL, N'Trần Văn S')
INSERT [dbo].[Customer] ([id], [username], [password], [gmail], [gender], [dob], [address], [phone_number], [google_id], [fullname]) VALUES (21, N'nguyenthit', N'password123', N'nguyenthit@gmail.com', 0, CAST(N'1992-08-20' AS Date), N'Ca Mau', N'0999123456', NULL, N'Nguyễn Thị T')
INSERT [dbo].[Customer] ([id], [username], [password], [gmail], [gender], [dob], [address], [phone_number], [google_id], [fullname]) VALUES (22, N'phamvanu', N'password123', N'phamvanu@gmail.com', 1, CAST(N'1989-09-21' AS Date), N'Soc Trang', N'0902223456', NULL, N'Phạm Văn U')
INSERT [dbo].[Customer] ([id], [username], [password], [gmail], [gender], [dob], [address], [phone_number], [google_id], [fullname]) VALUES (23, N'hoangthiv', N'password123', N'hoangthiv@gmail.com', 0, CAST(N'1993-10-22' AS Date), N'Bac Lieu', N'0913223456', NULL, N'Hoàng Thị V')
INSERT [dbo].[Customer] ([id], [username], [password], [gmail], [gender], [dob], [address], [phone_number], [google_id], [fullname]) VALUES (24, N'dovanw', N'password123', N'dovanw@gmail.com', 1, CAST(N'1987-11-23' AS Date), N'An Giang', N'0924223456', NULL, N'Đỗ Văn W')
INSERT [dbo].[Customer] ([id], [username], [password], [gmail], [gender], [dob], [address], [phone_number], [google_id], [fullname]) VALUES (25, N'lethix', N'password123', N'lethix@gmail.com', 0, CAST(N'1994-12-24' AS Date), N'Kien Giang', N'0935223456', NULL, N'Lê Thị X')
INSERT [dbo].[Customer] ([id], [username], [password], [gmail], [gender], [dob], [address], [phone_number], [google_id], [fullname]) VALUES (26, N'vuvany', N'password123', N'vuvany@gmail.com', 1, CAST(N'1990-01-25' AS Date), N'Phu Yen', N'0946223456', NULL, N'Vũ Văn Y')
INSERT [dbo].[Customer] ([id], [username], [password], [gmail], [gender], [dob], [address], [phone_number], [google_id], [fullname]) VALUES (27, N'buithiz', N'password123', N'buithiz@gmail.com', 0, CAST(N'1996-02-26' AS Date), N'Gia Lai', N'0957223456', NULL, N'Bùi Thị Z')
INSERT [dbo].[Customer] ([id], [username], [password], [gmail], [gender], [dob], [address], [phone_number], [google_id], [fullname]) VALUES (28, N'ngovanaa', N'password123', N'ngovanaa@gmail.com', 1, CAST(N'1985-03-27' AS Date), N'Kon Tum', N'0968223456', NULL, N'Ngô Văn AA')
INSERT [dbo].[Customer] ([id], [username], [password], [gmail], [gender], [dob], [address], [phone_number], [google_id], [fullname]) VALUES (29, N'tranthibb', N'password123', N'tranthibb@gmail.com', 0, CAST(N'1998-04-28' AS Date), N'Dak Lak', N'0979223456', NULL, N'Trần Thị BB')
INSERT [dbo].[Customer] ([id], [username], [password], [gmail], [gender], [dob], [address], [phone_number], [google_id], [fullname]) VALUES (30, N'nguyenvancc', N'password123', N'nguyenvancc@gmail.com', 1, CAST(N'1991-05-29' AS Date), N'Dak Nong', N'0980223456', NULL, N'Nguyễn Văn CC')
INSERT [dbo].[Customer] ([id], [username], [password], [gmail], [gender], [dob], [address], [phone_number], [google_id], [fullname]) VALUES (31, N'phamthidd', N'password123', N'phamthidd@gmail.com', 0, CAST(N'1997-06-30' AS Date), N'Lam Dong', N'0991223456', NULL, N'Phạm Thị DD')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Doctor] ON 

INSERT [dbo].[Doctor] ([id]) VALUES (1)
SET IDENTITY_INSERT [dbo].[Doctor] OFF
GO
SET IDENTITY_INSERT [dbo].[Feature] ON 

INSERT [dbo].[Feature] ([id], [name], [url]) VALUES (3, N'Create account for System user', N'/hr/create')
SET IDENTITY_INSERT [dbo].[Feature] OFF
GO
SET IDENTITY_INSERT [dbo].[MedicalHistory] ON 

INSERT [dbo].[MedicalHistory] ([id], [CustomerID], [Name], [Detail]) VALUES (1, 1, N'ưerwer', N'srhnfdh')
INSERT [dbo].[MedicalHistory] ([id], [CustomerID], [Name], [Detail]) VALUES (3, 1, N'Khám t?ng quát', N'Khám t?ng quát, không phát hi?n b?nh l? vào tháng 6/2024')
INSERT [dbo].[MedicalHistory] ([id], [CustomerID], [Name], [Detail]) VALUES (5, 1, N'Om', N'di ngoai')
INSERT [dbo].[MedicalHistory] ([id], [CustomerID], [Name], [Detail]) VALUES (6, 1, N'?m', N'Đi ngoài')
INSERT [dbo].[MedicalHistory] ([id], [CustomerID], [Name], [Detail]) VALUES (7, 1, N'Di ung', N'tom, tep, ca, ong')
INSERT [dbo].[MedicalHistory] ([id], [CustomerID], [Name], [Detail]) VALUES (10, 2, N'Om', N'Dau bung')
INSERT [dbo].[MedicalHistory] ([id], [CustomerID], [Name], [Detail]) VALUES (11, 2, N'Di ung', N'Tom, ca')
SET IDENTITY_INSERT [dbo].[MedicalHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([id], [name]) VALUES (1, N'admin')
INSERT [dbo].[Role] ([id], [name]) VALUES (2, N'Finance Department')
INSERT [dbo].[Role] ([id], [name]) VALUES (3, N'Human Resources Department')
INSERT [dbo].[Role] ([id], [name]) VALUES (4, N'Customer Service Department')
INSERT [dbo].[Role] ([id], [name]) VALUES (5, N'Doctor')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
INSERT [dbo].[RoleFeature] ([role_id], [feature_id]) VALUES (3, 3)
GO
SET IDENTITY_INSERT [dbo].[Staff] ON 

INSERT [dbo].[Staff] ([id], [username], [password], [gender], [email], [phone_number], [fullname], [dob], [address]) VALUES (1, N'giangvtadmin', N'123', 1, N'giangvthe187264@fpt.edu.vn', N'0362678790', N'Vu Truong Giang', CAST(N'2004-03-29' AS Date), N'Hà Giang')
INSERT [dbo].[Staff] ([id], [username], [password], [gender], [email], [phone_number], [fullname], [dob], [address]) VALUES (2, N'giangvthr', N'123', 1, N'giangvthe187264@fpt.edu.vn', N'0362678790', N'Vu Truong Giang', NULL, NULL)
INSERT [dbo].[Staff] ([id], [username], [password], [gender], [email], [phone_number], [fullname], [dob], [address]) VALUES (3, N'giangvtfinance', N'123', 1, N'giangvthe187264@fpt.edu.vn', N'0362678790', N'Vu Truong Giang', CAST(N'2004-03-29' AS Date), N'narutobaco')
SET IDENTITY_INSERT [dbo].[Staff] OFF
GO
INSERT [dbo].[StaffRole] ([staff_id], [role_id]) VALUES (1, 1)
INSERT [dbo].[StaffRole] ([staff_id], [role_id]) VALUES (1, 2)
INSERT [dbo].[StaffRole] ([staff_id], [role_id]) VALUES (1, 3)
INSERT [dbo].[StaffRole] ([staff_id], [role_id]) VALUES (1, 4)
INSERT [dbo].[StaffRole] ([staff_id], [role_id]) VALUES (1, 5)
INSERT [dbo].[StaffRole] ([staff_id], [role_id]) VALUES (2, 3)
GO
SET IDENTITY_INSERT [dbo].[VisitHistory] ON 

INSERT [dbo].[VisitHistory] ([id], [DoctorID], [CustomerID], [VisitDate], [ReasonForVisit], [Diagnoses], [TreatmentPlan], [NextAppointment]) VALUES (3, 1, 1, CAST(N'2024-01-15' AS Date), N'Đau b?ng', N'Viêm d? dày', N'U?ng thu?c gi?m đau, ăn u?ng đi?u đ?', CAST(N'2024-01-20' AS Date))
INSERT [dbo].[VisitHistory] ([id], [DoctorID], [CustomerID], [VisitDate], [ReasonForVisit], [Diagnoses], [TreatmentPlan], [NextAppointment]) VALUES (4, 1, 1, CAST(N'2024-02-01' AS Date), N'M?t m?i', N'Thi?u máu', N'U?ng s?t, b? sung vitamin', CAST(N'2024-02-15' AS Date))
INSERT [dbo].[VisitHistory] ([id], [DoctorID], [CustomerID], [VisitDate], [ReasonForVisit], [Diagnoses], [TreatmentPlan], [NextAppointment]) VALUES (5, 1, 1, CAST(N'2024-02-10' AS Date), N'Đau lưng', N'Thoát v? đ?a đ?m', N'V?t l? tr? li?u, ngh? ngơi', CAST(N'2024-02-25' AS Date))
INSERT [dbo].[VisitHistory] ([id], [DoctorID], [CustomerID], [VisitDate], [ReasonForVisit], [Diagnoses], [TreatmentPlan], [NextAppointment]) VALUES (6, 1, 1, CAST(N'2024-05-31' AS Date), N'Ho khan', N'Viêm ph? qu?n', N'U?ng thu?c long đ?m, ngh? ngơi', CAST(N'2024-06-05' AS Date))
INSERT [dbo].[VisitHistory] ([id], [DoctorID], [CustomerID], [VisitDate], [ReasonForVisit], [Diagnoses], [TreatmentPlan], [NextAppointment]) VALUES (7, 1, 1, CAST(N'2023-11-20' AS Date), N'Đau đ?u', N'C?m cúm', N'U?ng thu?c gi?m đau, ngh? ngơi', CAST(N'2023-11-25' AS Date))
INSERT [dbo].[VisitHistory] ([id], [DoctorID], [CustomerID], [VisitDate], [ReasonForVisit], [Diagnoses], [TreatmentPlan], [NextAppointment]) VALUES (8, 1, 1, CAST(N'2023-12-05' AS Date), N'S?t', N'Viêm h?ng', N'U?ng kháng sinh, súc mi?ng', CAST(N'2023-12-10' AS Date))
INSERT [dbo].[VisitHistory] ([id], [DoctorID], [CustomerID], [VisitDate], [ReasonForVisit], [Diagnoses], [TreatmentPlan], [NextAppointment]) VALUES (9, 1, 1, CAST(N'2024-01-15' AS Date), N'Đau b?ng', N'Viêm d? dày', N'U?ng thu?c gi?m đau, ăn u?ng đi?u đ?', CAST(N'2024-01-20' AS Date))
INSERT [dbo].[VisitHistory] ([id], [DoctorID], [CustomerID], [VisitDate], [ReasonForVisit], [Diagnoses], [TreatmentPlan], [NextAppointment]) VALUES (10, 1, 1, CAST(N'2024-02-01' AS Date), N'M?t m?i', N'Thi?u máu', N'U?ng s?t, b? sung vitamin', CAST(N'2024-02-15' AS Date))
INSERT [dbo].[VisitHistory] ([id], [DoctorID], [CustomerID], [VisitDate], [ReasonForVisit], [Diagnoses], [TreatmentPlan], [NextAppointment]) VALUES (11, 1, 1, CAST(N'2024-02-10' AS Date), N'Đau lưng', N'Thoát v? đ?a đ?m', N'V?t l? tr? li?u, ngh? ngơi', CAST(N'2024-02-25' AS Date))
INSERT [dbo].[VisitHistory] ([id], [DoctorID], [CustomerID], [VisitDate], [ReasonForVisit], [Diagnoses], [TreatmentPlan], [NextAppointment]) VALUES (12, 1, 1, CAST(N'2024-05-31' AS Date), N'Ho khan', N'Viêm ph? qu?n', N'U?ng thu?c long đ?m, ngh? ngơi', CAST(N'2024-06-05' AS Date))
INSERT [dbo].[VisitHistory] ([id], [DoctorID], [CustomerID], [VisitDate], [ReasonForVisit], [Diagnoses], [TreatmentPlan], [NextAppointment]) VALUES (13, 1, 1, CAST(N'2023-11-20' AS Date), N'Đau đ?u', N'C?m cúm', N'U?ng thu?c gi?m đau, ngh? ngơi', CAST(N'2023-11-25' AS Date))
INSERT [dbo].[VisitHistory] ([id], [DoctorID], [CustomerID], [VisitDate], [ReasonForVisit], [Diagnoses], [TreatmentPlan], [NextAppointment]) VALUES (14, 1, 1, CAST(N'2023-12-05' AS Date), N'S?t', N'Viêm h?ng', N'U?ng kháng sinh, súc mi?ng', CAST(N'2023-12-10' AS Date))
INSERT [dbo].[VisitHistory] ([id], [DoctorID], [CustomerID], [VisitDate], [ReasonForVisit], [Diagnoses], [TreatmentPlan], [NextAppointment]) VALUES (15, 1, 1, CAST(N'2024-01-15' AS Date), N'Đau b?ng', N'Viêm d? dày', N'U?ng thu?c gi?m đau, ăn u?ng đi?u đ?', CAST(N'2024-01-20' AS Date))
INSERT [dbo].[VisitHistory] ([id], [DoctorID], [CustomerID], [VisitDate], [ReasonForVisit], [Diagnoses], [TreatmentPlan], [NextAppointment]) VALUES (16, 1, 1, CAST(N'2024-02-01' AS Date), N'M?t m?i', N'Thi?u máu', N'U?ng s?t, b? sung vitamin', CAST(N'2024-02-15' AS Date))
INSERT [dbo].[VisitHistory] ([id], [DoctorID], [CustomerID], [VisitDate], [ReasonForVisit], [Diagnoses], [TreatmentPlan], [NextAppointment]) VALUES (17, 1, 1, CAST(N'2024-02-10' AS Date), N'Đau lưng', N'Thoát v? đ?a đ?m', N'V?t l? tr? li?u, ngh? ngơi', CAST(N'2024-02-25' AS Date))
INSERT [dbo].[VisitHistory] ([id], [DoctorID], [CustomerID], [VisitDate], [ReasonForVisit], [Diagnoses], [TreatmentPlan], [NextAppointment]) VALUES (18, 1, 1, CAST(N'2024-05-31' AS Date), N'Ho khan', N'Viêm ph? qu?n', N'U?ng thu?c long đ?m, ngh? ngơi', CAST(N'2024-06-05' AS Date))
INSERT [dbo].[VisitHistory] ([id], [DoctorID], [CustomerID], [VisitDate], [ReasonForVisit], [Diagnoses], [TreatmentPlan], [NextAppointment]) VALUES (19, 1, 1, CAST(N'2023-11-20' AS Date), N'Đau đ?u', N'C?m cúm', N'U?ng thu?c gi?m đau, ngh? ngơi', CAST(N'2023-11-25' AS Date))
INSERT [dbo].[VisitHistory] ([id], [DoctorID], [CustomerID], [VisitDate], [ReasonForVisit], [Diagnoses], [TreatmentPlan], [NextAppointment]) VALUES (20, 1, 1, CAST(N'2023-12-05' AS Date), N'S?t', N'Viêm h?ng', N'U?ng kháng sinh, súc mi?ng', CAST(N'2023-12-10' AS Date))
INSERT [dbo].[VisitHistory] ([id], [DoctorID], [CustomerID], [VisitDate], [ReasonForVisit], [Diagnoses], [TreatmentPlan], [NextAppointment]) VALUES (21, 1, 1, CAST(N'2024-01-15' AS Date), N'Đau b?ng', N'Viêm d? dày', N'U?ng thu?c gi?m đau, ăn u?ng đi?u đ?', CAST(N'2024-01-20' AS Date))
INSERT [dbo].[VisitHistory] ([id], [DoctorID], [CustomerID], [VisitDate], [ReasonForVisit], [Diagnoses], [TreatmentPlan], [NextAppointment]) VALUES (22, 1, 1, CAST(N'2024-02-01' AS Date), N'M?t m?i', N'Thi?u máu', N'U?ng s?t, b? sung vitamin', CAST(N'2024-02-15' AS Date))
INSERT [dbo].[VisitHistory] ([id], [DoctorID], [CustomerID], [VisitDate], [ReasonForVisit], [Diagnoses], [TreatmentPlan], [NextAppointment]) VALUES (23, 1, 1, CAST(N'2024-02-10' AS Date), N'Đau lưng', N'Thoát v? đ?a đ?m', N'V?t l? tr? li?u, ngh? ngơi', CAST(N'2024-02-28' AS Date))
INSERT [dbo].[VisitHistory] ([id], [DoctorID], [CustomerID], [VisitDate], [ReasonForVisit], [Diagnoses], [TreatmentPlan], [NextAppointment]) VALUES (24, 1, 1, CAST(N'2024-05-31' AS Date), N'Ho khan', N'Viêm ph? qu?n', N'U?ng thu?c long đ?m, ngh? ngơi', CAST(N'2024-06-05' AS Date))
INSERT [dbo].[VisitHistory] ([id], [DoctorID], [CustomerID], [VisitDate], [ReasonForVisit], [Diagnoses], [TreatmentPlan], [NextAppointment]) VALUES (25, 1, 1, CAST(N'2023-11-20' AS Date), N'Đau đ?u', N'C?m cúm', N'U?ng thu?c gi?m đau, ngh? ngơi', CAST(N'2023-11-25' AS Date))
INSERT [dbo].[VisitHistory] ([id], [DoctorID], [CustomerID], [VisitDate], [ReasonForVisit], [Diagnoses], [TreatmentPlan], [NextAppointment]) VALUES (26, 1, 1, CAST(N'2023-12-05' AS Date), N'S?t', N'Viêm h?ng', N'U?ng kháng sinh, súc mi?ng', CAST(N'2023-12-10' AS Date))
INSERT [dbo].[VisitHistory] ([id], [DoctorID], [CustomerID], [VisitDate], [ReasonForVisit], [Diagnoses], [TreatmentPlan], [NextAppointment]) VALUES (27, 1, 1, CAST(N'2024-01-15' AS Date), N'Đau b?ng', N'Viêm d? dày', N'U?ng thu?c gi?m đau, ăn u?ng đi?u đ?', CAST(N'2024-01-20' AS Date))
INSERT [dbo].[VisitHistory] ([id], [DoctorID], [CustomerID], [VisitDate], [ReasonForVisit], [Diagnoses], [TreatmentPlan], [NextAppointment]) VALUES (28, 1, 1, CAST(N'2024-02-01' AS Date), N'M?t m?i', N'Thi?u máu', N'U?ng s?t, b? sung vitamin', CAST(N'2024-02-15' AS Date))
INSERT [dbo].[VisitHistory] ([id], [DoctorID], [CustomerID], [VisitDate], [ReasonForVisit], [Diagnoses], [TreatmentPlan], [NextAppointment]) VALUES (30, 1, 1, CAST(N'2024-05-31' AS Date), N'Ho khan', N'Viêm ph? qu?n', N'U?ng thu?c long đ?m, ngh? ngơi', CAST(N'2024-06-05' AS Date))
INSERT [dbo].[VisitHistory] ([id], [DoctorID], [CustomerID], [VisitDate], [ReasonForVisit], [Diagnoses], [TreatmentPlan], [NextAppointment]) VALUES (31, 1, 1, CAST(N'2023-11-20' AS Date), N'Đau đ?u', N'C?m cúm', N'U?ng thu?c gi?m đau, ngh? ngơi', CAST(N'2023-11-25' AS Date))
INSERT [dbo].[VisitHistory] ([id], [DoctorID], [CustomerID], [VisitDate], [ReasonForVisit], [Diagnoses], [TreatmentPlan], [NextAppointment]) VALUES (32, 1, 1, CAST(N'2023-12-05' AS Date), N'S?t', N'Viêm h?ng', N'U?ng kháng sinh, súc mi?ng', CAST(N'2023-12-10' AS Date))
INSERT [dbo].[VisitHistory] ([id], [DoctorID], [CustomerID], [VisitDate], [ReasonForVisit], [Diagnoses], [TreatmentPlan], [NextAppointment]) VALUES (33, 1, 1, CAST(N'2024-01-15' AS Date), N'Đau b?ng', N'Viêm d? dày', N'U?ng thu?c gi?m đau, ăn u?ng đi?u đ?', CAST(N'2024-01-20' AS Date))
INSERT [dbo].[VisitHistory] ([id], [DoctorID], [CustomerID], [VisitDate], [ReasonForVisit], [Diagnoses], [TreatmentPlan], [NextAppointment]) VALUES (34, 1, 1, CAST(N'2024-02-01' AS Date), N'M?t m?i', N'Thi?u máu', N'U?ng s?t, b? sung vitamin', CAST(N'2024-02-15' AS Date))
INSERT [dbo].[VisitHistory] ([id], [DoctorID], [CustomerID], [VisitDate], [ReasonForVisit], [Diagnoses], [TreatmentPlan], [NextAppointment]) VALUES (38, 1, 1, CAST(N'2025-02-05' AS Date), N'Bi dau lung', N'cong lung', N'nan chinh suong', CAST(N'2025-02-14' AS Date))
SET IDENTITY_INSERT [dbo].[VisitHistory] OFF
GO
ALTER TABLE [dbo].[Application] ADD  DEFAULT ('pending') FOR [status]
GO
ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK_Application_Doctor] FOREIGN KEY([doctor_id])
REFERENCES [dbo].[Doctor] ([id])
GO
ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK_Application_Doctor]
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Appointment_Customer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[Customer] ([id])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [FK_Appointment_Customer]
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Appointment_Doctor] FOREIGN KEY([doctor_id])
REFERENCES [dbo].[Doctor] ([id])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [FK_Appointment_Doctor]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_GoogleAuthen] FOREIGN KEY([google_id])
REFERENCES [dbo].[Google_Authen] ([account_id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_GoogleAuthen]
GO
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_User] FOREIGN KEY([id])
REFERENCES [dbo].[Staff] ([id])
GO
ALTER TABLE [dbo].[Doctor] CHECK CONSTRAINT [FK_Doctor_User]
GO
ALTER TABLE [dbo].[Doctor_Department]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_Department_Department] FOREIGN KEY([department_id])
REFERENCES [dbo].[Department] ([id])
GO
ALTER TABLE [dbo].[Doctor_Department] CHECK CONSTRAINT [FK_Doctor_Department_Department]
GO
ALTER TABLE [dbo].[Doctor_Department]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_Department_Doctor] FOREIGN KEY([doctor_id])
REFERENCES [dbo].[Doctor] ([id])
GO
ALTER TABLE [dbo].[Doctor_Department] CHECK CONSTRAINT [FK_Doctor_Department_Doctor]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Appointment] FOREIGN KEY([id])
REFERENCES [dbo].[Appointment] ([id])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Appointment]
GO
ALTER TABLE [dbo].[MedicalHistory]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([id])
GO
ALTER TABLE [dbo].[RoleFeature]  WITH CHECK ADD  CONSTRAINT [FK_RoleFeature_Feature] FOREIGN KEY([feature_id])
REFERENCES [dbo].[Feature] ([id])
GO
ALTER TABLE [dbo].[RoleFeature] CHECK CONSTRAINT [FK_RoleFeature_Feature]
GO
ALTER TABLE [dbo].[RoleFeature]  WITH CHECK ADD  CONSTRAINT [FK_RoleFeature_Role] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[RoleFeature] CHECK CONSTRAINT [FK_RoleFeature_Role]
GO
ALTER TABLE [dbo].[Service]  WITH CHECK ADD  CONSTRAINT [FK_Service_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[Staff] ([id])
GO
ALTER TABLE [dbo].[Service] CHECK CONSTRAINT [FK_Service_User]
GO
ALTER TABLE [dbo].[Service_Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Service_Appointment_Appointment] FOREIGN KEY([Appointment_id])
REFERENCES [dbo].[Appointment] ([id])
GO
ALTER TABLE [dbo].[Service_Appointment] CHECK CONSTRAINT [FK_Service_Appointment_Appointment]
GO
ALTER TABLE [dbo].[Service_Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Service_Appointment_Service] FOREIGN KEY([service_id])
REFERENCES [dbo].[Service] ([id])
GO
ALTER TABLE [dbo].[Service_Appointment] CHECK CONSTRAINT [FK_Service_Appointment_Service]
GO
ALTER TABLE [dbo].[StaffRole]  WITH CHECK ADD  CONSTRAINT [FK_StaffRole_Role] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[StaffRole] CHECK CONSTRAINT [FK_StaffRole_Role]
GO
ALTER TABLE [dbo].[StaffRole]  WITH CHECK ADD  CONSTRAINT [FK_StaffRole_Staff] FOREIGN KEY([staff_id])
REFERENCES [dbo].[Staff] ([id])
GO
ALTER TABLE [dbo].[StaffRole] CHECK CONSTRAINT [FK_StaffRole_Staff]
GO
ALTER TABLE [dbo].[VisitHistory]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([id])
GO
ALTER TABLE [dbo].[VisitHistory]  WITH CHECK ADD FOREIGN KEY([DoctorID])
REFERENCES [dbo].[Doctor] ([id])
GO
