USE [test1]
GO
/****** Object:  Table [dbo].[Application]    Script Date: 2/6/2025 10:21:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Application](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[date] [date] NULL,
	[doctor_id] [int] NULL,
 CONSTRAINT [PK_Application] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Appointment]    Script Date: 2/6/2025 10:21:40 AM ******/
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
	[DocSchedule_id] [int] NULL,
 CONSTRAINT [PK_Appointment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 2/6/2025 10:21:40 AM ******/
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
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 2/6/2025 10:21:40 AM ******/
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
/****** Object:  Table [dbo].[Doctor]    Script Date: 2/6/2025 10:21:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[doctor_username] [varchar](150) NULL,
	[createby] [varchar](150) NULL,
	[createat] [date] NULL,
	[updateby] [varchar](150) NULL,
	[updateat] [date] NULL,
 CONSTRAINT [PK_Doctor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctor_Department]    Script Date: 2/6/2025 10:21:40 AM ******/
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
/****** Object:  Table [dbo].[Doctor_Schedule]    Script Date: 2/6/2025 10:21:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor_Schedule](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[doctor_id] [int] NULL,
	[schedule_date] [date] NULL,
	[shift_id] [int] NULL,
	[available] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feature]    Script Date: 2/6/2025 10:21:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[url] [varchar](50) NULL,
 CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Google_Authen]    Script Date: 2/6/2025 10:21:40 AM ******/
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
/****** Object:  Table [dbo].[Invoice]    Script Date: 2/6/2025 10:21:40 AM ******/
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
/****** Object:  Table [dbo].[Role]    Script Date: 2/6/2025 10:21:40 AM ******/
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
/****** Object:  Table [dbo].[RoleFeature]    Script Date: 2/6/2025 10:21:40 AM ******/
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
/****** Object:  Table [dbo].[Service]    Script Date: 2/6/2025 10:21:40 AM ******/
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
	[department_id] [int] NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service_Appointment]    Script Date: 2/6/2025 10:21:40 AM ******/
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
/****** Object:  Table [dbo].[Shift]    Script Date: 2/6/2025 10:21:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shift](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[time_start] [time](7) NULL,
	[time_end] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 2/6/2025 10:21:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](50) NULL,
	[gender] [bit] NULL,
	[address] [varchar](50) NULL,
	[dob] [date] NULL,
	[createby] [varchar](150) NULL,
	[createat] [datetime] NULL,
	[updateby] [varchar](150) NULL,
	[updateat] [datetime] NULL,
	[staff_username] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 2/6/2025 10:21:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[username] [varchar](150) NOT NULL,
	[password] [varchar](max) NULL,
	[displayname] [varchar](50) NULL,
	[gmail] [varchar](50) NULL,
	[phone] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 2/6/2025 10:21:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[username] [varchar](150) NOT NULL,
	[role_id] [int] NOT NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[username] ASC,
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([id], [username], [password], [gmail], [gender], [dob], [address], [phone_number], [google_id]) VALUES (1, N'giangvt', N'123', N'test@gmail.com', 1, CAST(N'2000-01-02' AS Date), N'ad', N'0123432123', NULL)
INSERT [dbo].[Customer] ([id], [username], [password], [gmail], [gender], [dob], [address], [phone_number], [google_id]) VALUES (2, N'hoangtrongkhoi', N'fbc7328c0cd55f97ddd0bdbe6bfcd98857ccb92aa88fe5bd851721506f6acaa4', N'manhao783@gmail.com', 0, CAST(N'2025-02-06' AS Date), NULL, N'0159598741', NULL)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([id], [name]) VALUES (1, N'Family Medicine')
INSERT [dbo].[Department] ([id], [name]) VALUES (2, N'Gastroenterology & Hepatology')
INSERT [dbo].[Department] ([id], [name]) VALUES (3, N'General Internal Medicine')
INSERT [dbo].[Department] ([id], [name]) VALUES (4, N'Endocrinology')
INSERT [dbo].[Department] ([id], [name]) VALUES (5, N'Dermatology')
INSERT [dbo].[Department] ([id], [name]) VALUES (6, N'Cardiology')
INSERT [dbo].[Department] ([id], [name]) VALUES (7, N'Neurology')
INSERT [dbo].[Department] ([id], [name]) VALUES (8, N'Rheumatology')
INSERT [dbo].[Department] ([id], [name]) VALUES (9, N'Otolaryngology (ENT)')
INSERT [dbo].[Department] ([id], [name]) VALUES (10, N'Ophthalmology')
INSERT [dbo].[Department] ([id], [name]) VALUES (11, N'Gastroenterology')
INSERT [dbo].[Department] ([id], [name]) VALUES (12, N'Infectious Diseases')
INSERT [dbo].[Department] ([id], [name]) VALUES (13, N'Pulmonology')
INSERT [dbo].[Department] ([id], [name]) VALUES (14, N'Urology')
INSERT [dbo].[Department] ([id], [name]) VALUES (15, N'Orthopedic Surgery')
INSERT [dbo].[Department] ([id], [name]) VALUES (16, N'Obstetrics & Gynecology')
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[Feature] ON 

INSERT [dbo].[Feature] ([id], [name], [url]) VALUES (1, N'staff account create', N'/hr/create')
INSERT [dbo].[Feature] ([id], [name], [url]) VALUES (2, N'staff account list', N'/hr/accountlist')
INSERT [dbo].[Feature] ([id], [name], [url]) VALUES (3, N'HR profile', N'/hr/profile')
INSERT [dbo].[Feature] ([id], [name], [url]) VALUES (4, N'doctor manage', N'/hr/manage')
SET IDENTITY_INSERT [dbo].[Feature] OFF
GO
INSERT [dbo].[Google_Authen] ([account_id], [email], [name], [first_name], [given_name], [family_name], [picture], [verified_email]) VALUES (N'103951933033143066894', N'giangvthe187264@fpt.edu.vn', N'Vu Truong Giang (K18 HL)', NULL, N'Vu Truong Giang', N'(K18 HL)', N'https://lh3.googleusercontent.com/a/ACg8ocIoI7yBzS7g34rjWmQpehbnGq28m5xKIGVqX4mJ8h-l_e8V5w=s96-c', 1)
INSERT [dbo].[Google_Authen] ([account_id], [email], [name], [first_name], [given_name], [family_name], [picture], [verified_email]) VALUES (N'108601536921790357191', N'giangcr7dz@gmail.com', N'Tru?ng Giang', NULL, N'Tru?ng', N'Giang', N'https://lh3.googleusercontent.com/a/ACg8ocJ9KufALhQZT7BoMvbPK7pr207einayInRbMc7B_xQ6V5ba=s96-c', 1)
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([id], [name]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([id], [name]) VALUES (2, N'HR')
INSERT [dbo].[Role] ([id], [name]) VALUES (3, N'Finance')
INSERT [dbo].[Role] ([id], [name]) VALUES (4, N'Customer support')
INSERT [dbo].[Role] ([id], [name]) VALUES (5, N'Doctor')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
INSERT [dbo].[RoleFeature] ([role_id], [feature_id]) VALUES (2, 1)
INSERT [dbo].[RoleFeature] ([role_id], [feature_id]) VALUES (2, 2)
INSERT [dbo].[RoleFeature] ([role_id], [feature_id]) VALUES (2, 3)
INSERT [dbo].[RoleFeature] ([role_id], [feature_id]) VALUES (2, 4)
GO
SET IDENTITY_INSERT [dbo].[Staff] ON 

INSERT [dbo].[Staff] ([id], [fullname], [gender], [address], [dob], [createby], [createat], [updateby], [updateat], [staff_username]) VALUES (5, N'Vu Truong Giang', 1, N'Tp. Thái Nguyên3', CAST(N'2025-01-27' AS Date), N'giangvt1', CAST(N'2025-02-05T17:30:31.063' AS DateTime), NULL, NULL, N'giangvt1')
INSERT [dbo].[Staff] ([id], [fullname], [gender], [address], [dob], [createby], [createat], [updateby], [updateat], [staff_username]) VALUES (6, N'Hoang Trong Khoi', 0, N'Lang Son', CAST(N'2025-01-26' AS Date), N'giangvt1', CAST(N'2025-02-05T17:31:43.540' AS DateTime), N'hoangtrongkhoi', CAST(N'2025-02-05T18:34:49.023' AS DateTime), N'hoangtrongkhoi')
INSERT [dbo].[Staff] ([id], [fullname], [gender], [address], [dob], [createby], [createat], [updateby], [updateat], [staff_username]) VALUES (8, N'Long River', 1, N'haNOi', CAST(N'2024-11-12' AS Date), N'giangvt2', CAST(N'2025-02-05T17:50:07.727' AS DateTime), NULL, NULL, N'giangvt2')
INSERT [dbo].[Staff] ([id], [fullname], [gender], [address], [dob], [createby], [createat], [updateby], [updateat], [staff_username]) VALUES (9, N'Hoang Trong Khoi', 0, N'Lang Son', CAST(N'2004-02-12' AS Date), N'giangvt1', CAST(N'2025-02-05T21:15:22.853' AS DateTime), N'khoibimhong', CAST(N'2025-02-05T21:16:22.557' AS DateTime), N'khoibimhong')
INSERT [dbo].[Staff] ([id], [fullname], [gender], [address], [dob], [createby], [createat], [updateby], [updateat], [staff_username]) VALUES (10, NULL, NULL, NULL, NULL, N'giangvt1', CAST(N'2025-02-05T23:36:43.643' AS DateTime), NULL, NULL, N'khoibimhong1')
INSERT [dbo].[Staff] ([id], [fullname], [gender], [address], [dob], [createby], [createat], [updateby], [updateat], [staff_username]) VALUES (11, NULL, NULL, NULL, NULL, N'giangvt1', CAST(N'2025-02-06T09:37:47.690' AS DateTime), NULL, NULL, N'ngothihongnhien')
INSERT [dbo].[Staff] ([id], [fullname], [gender], [address], [dob], [createby], [createat], [updateby], [updateat], [staff_username]) VALUES (12, NULL, NULL, NULL, NULL, N'ngothihongnhien', CAST(N'2025-02-06T09:42:06.447' AS DateTime), NULL, NULL, N'ngothihongnhien1')
INSERT [dbo].[Staff] ([id], [fullname], [gender], [address], [dob], [createby], [createat], [updateby], [updateat], [staff_username]) VALUES (13, NULL, NULL, NULL, NULL, N'ngothihongnhien', CAST(N'2025-02-06T09:42:25.010' AS DateTime), NULL, NULL, N'admin')
SET IDENTITY_INSERT [dbo].[Staff] OFF
GO
INSERT [dbo].[User] ([username], [password], [displayname], [gmail], [phone]) VALUES (N'admin', N'$2a$12$SNp.KYEf7CxJ1pwdAGnQQu/iBZR0v3NA/220fsb/f.Embc07f100K', N'123', N'giangcr7@gmail.com', N'0362678790')
INSERT [dbo].[User] ([username], [password], [displayname], [gmail], [phone]) VALUES (N'giangvt1', N'$2a$12$d22G.BYiPCMJ4qekQ1zLOek4JNmpM03cV4Mc1UwRfwyEKa2pp/Of.', N'Giangcuto', N'giangvthe187264@fpt.edu.vn', N'0362678790')
INSERT [dbo].[User] ([username], [password], [displayname], [gmail], [phone]) VALUES (N'giangvt2', N'$2a$12$L2ejCn6H3fe0ZlUPQsE0O.TTU45p2w0coHx6tJ0ePwAbBpjjJLLiW', N'vitcon', N'giangvthe187264@fpt.edu.vn', N'0362678790')
INSERT [dbo].[User] ([username], [password], [displayname], [gmail], [phone]) VALUES (N'hoangtrongkhoi', N'$2a$12$Sh2T.pBSraiEojyq7oFQZ.95vhrwuyx5tzVZGtoAoZHoLl0U4nyYa', N'Hoang Trong Khoi', N'khoi3ti@gmail.com', N'0123321123')
INSERT [dbo].[User] ([username], [password], [displayname], [gmail], [phone]) VALUES (N'khoibimhong', N'$2a$12$p8NxiTCRVTY/Ft/91jWRNuwuXubFIdJAdTUBBlsJ6k6g1kJy5Y17m', N'3tia', N'khoi3ti@gmail.com', N'10631564.0638490.36987/*0.7/*0')
INSERT [dbo].[User] ([username], [password], [displayname], [gmail], [phone]) VALUES (N'khoibimhong1', N'$2a$12$lP2YLHIAGg.JlGSziLD8zucitU0rmPTI.9UDFjhx0re0l79ZfGLJC', N'123', N'khoi3ti1@gmail.com', N'123321123')
INSERT [dbo].[User] ([username], [password], [displayname], [gmail], [phone]) VALUES (N'ngothihongnhien', N'$2a$12$.iDhPzGaDt3r2jTrYbp53.QWJqlM0mLoaehQovssCFlD58vKtwaz.', N'MaiLinh', N'nhien@gmail.com', N'0391238212')
INSERT [dbo].[User] ([username], [password], [displayname], [gmail], [phone]) VALUES (N'ngothihongnhien1', N'$2a$12$1obmHKirGZiIHHNZsKikgO/FCe0wnt/P3ecZCNGlaD9FdRqjeK5ki', N'MaiLinh', N'nhien@gmail.com', N'0391238212')
INSERT [dbo].[User] ([username], [password], [displayname], [gmail], [phone]) VALUES (N'test3', N'784b9f1cdf2ad521ff4c1b83544ba08784b35c345167d779d9107b50c81d7bb4', N'Vu Truong Giang', N'giangcr7dz@gmail.com', N'0362678790')
INSERT [dbo].[User] ([username], [password], [displayname], [gmail], [phone]) VALUES (N'test4', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', N'Vu Truong Giang', N'giangcr7dz@gmail.com', N'0362678790')
INSERT [dbo].[User] ([username], [password], [displayname], [gmail], [phone]) VALUES (N'trangiahuy', N'$2a$12$.kCQCzrrxtRlOAL3HtNYD.URqDB6EdxgLfbLrWdcPdsXBO8Un/3ce', N'HuyHole', N'huyhole@gmail.com', N'123')
INSERT [dbo].[User] ([username], [password], [displayname], [gmail], [phone]) VALUES (N'vutruonggiang', N'$2a$12$RlRob9JCn3Hz8p4idWTI6.z02c8w6eQSOrbQAkD.gDMhUKA1RLiH6', N'Vu Truong Giang', N'giangvthe187264@fpt.edu.vn', N'0362678790')
GO
INSERT [dbo].[UserRole] ([username], [role_id]) VALUES (N'admin', 3)
INSERT [dbo].[UserRole] ([username], [role_id]) VALUES (N'giangvt1', 1)
INSERT [dbo].[UserRole] ([username], [role_id]) VALUES (N'giangvt1', 2)
INSERT [dbo].[UserRole] ([username], [role_id]) VALUES (N'giangvt1', 3)
INSERT [dbo].[UserRole] ([username], [role_id]) VALUES (N'giangvt1', 4)
INSERT [dbo].[UserRole] ([username], [role_id]) VALUES (N'giangvt2', 1)
INSERT [dbo].[UserRole] ([username], [role_id]) VALUES (N'hoangtrongkhoi', 3)
INSERT [dbo].[UserRole] ([username], [role_id]) VALUES (N'khoibimhong', 1)
INSERT [dbo].[UserRole] ([username], [role_id]) VALUES (N'khoibimhong', 2)
INSERT [dbo].[UserRole] ([username], [role_id]) VALUES (N'khoibimhong', 3)
INSERT [dbo].[UserRole] ([username], [role_id]) VALUES (N'khoibimhong', 4)
INSERT [dbo].[UserRole] ([username], [role_id]) VALUES (N'khoibimhong1', 5)
INSERT [dbo].[UserRole] ([username], [role_id]) VALUES (N'ngothihongnhien', 5)
INSERT [dbo].[UserRole] ([username], [role_id]) VALUES (N'ngothihongnhien1', 3)
INSERT [dbo].[UserRole] ([username], [role_id]) VALUES (N'test3', 2)
INSERT [dbo].[UserRole] ([username], [role_id]) VALUES (N'test4', 3)
INSERT [dbo].[UserRole] ([username], [role_id]) VALUES (N'trangiahuy', 2)
INSERT [dbo].[UserRole] ([username], [role_id]) VALUES (N'vutruonggiang', 1)
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
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_Doctor_Schedule] FOREIGN KEY([id])
REFERENCES [dbo].[Doctor_Schedule] ([id])
GO
ALTER TABLE [dbo].[Doctor] CHECK CONSTRAINT [FK_Doctor_Doctor_Schedule]
GO
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_User] FOREIGN KEY([doctor_username])
REFERENCES [dbo].[User] ([username])
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
ALTER TABLE [dbo].[Doctor_Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_Schedule_Shift] FOREIGN KEY([shift_id])
REFERENCES [dbo].[Shift] ([id])
GO
ALTER TABLE [dbo].[Doctor_Schedule] CHECK CONSTRAINT [FK_Doctor_Schedule_Shift]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Appointment] FOREIGN KEY([id])
REFERENCES [dbo].[Appointment] ([id])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Appointment]
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
ALTER TABLE [dbo].[Service]  WITH CHECK ADD  CONSTRAINT [FK_Service_Department] FOREIGN KEY([department_id])
REFERENCES [dbo].[Department] ([id])
GO
ALTER TABLE [dbo].[Service] CHECK CONSTRAINT [FK_Service_Department]
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
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_User] FOREIGN KEY([createby])
REFERENCES [dbo].[User] ([username])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_User]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_User1] FOREIGN KEY([updateby])
REFERENCES [dbo].[User] ([username])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_User1]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_User2] FOREIGN KEY([staff_username])
REFERENCES [dbo].[User] ([username])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_User2]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_Role] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_Role]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_User] FOREIGN KEY([username])
REFERENCES [dbo].[User] ([username])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_User]
GO
