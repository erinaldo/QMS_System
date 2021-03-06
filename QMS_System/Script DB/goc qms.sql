 
/****** Object:  Table [dbo].[Q_Action]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_Action](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](25) NOT NULL,
	[Note] [nvarchar](1000) NULL,
	[Function] [nvarchar](50) NULL,
	[Index] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Q_Action] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_ActionParameter]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Q_ActionParameter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ActionId] [int] NOT NULL,
	[ParameterCode] [varchar](50) NOT NULL,
	[Note] [nvarchar](1000) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Q_ActionParameter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Q_Alert]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_Alert](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SoundId] [int] NOT NULL,
	[Start] [datetime] NOT NULL,
	[End] [datetime] NOT NULL,
	[Note] [nvarchar](1000) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Q_Alert] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_Business]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_Business](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BusinessTypeId] [int] NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
	[TotalTicket] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Q_Business] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_BusinessType]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_BusinessType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[Note] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Q_BusinessType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_Command]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Q_Command](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[CodeHEX] [varchar](50) NOT NULL,
	[Note] [nvarchar](500) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Q_Command] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Q_CommandParameter]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Q_CommandParameter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CommandId] [int] NOT NULL,
	[Parameter] [varchar](50) NOT NULL,
	[Note] [nvarchar](1000) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Q_CommandParameter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Q_Config]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Q_Config](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[Value] [varchar](500) NOT NULL,
	[Note] [nvarchar](max) NULL,
	[IsActived] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Q_Config] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Q_Counter]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_Counter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ShortName] [nvarchar](30) NOT NULL,
	[Index] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Position] [nvarchar](50) NULL,
	[Acreage] [nvarchar](50) NULL,
	[IsDeleted] [bit] NOT NULL,
	[LastCall] [int] NOT NULL,
	[IsRunning] [bit] NOT NULL,
 CONSTRAINT [PK_Q_Counter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_CounterSoftRequire]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_CounterSoftRequire](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](1000) NOT NULL,
	[TypeOfRequire] [int] NOT NULL,
 CONSTRAINT [PK_Q_CounterSoftRequire] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_CounterSound]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_CounterSound](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CounterId] [int] NOT NULL,
	[LanguageId] [int] NOT NULL,
	[SoundName] [nvarchar](250) NOT NULL,
	[Note] [nvarchar](1000) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Q_CounterSound] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_DailyRequire]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Q_DailyRequire](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TicketNumber] [int] NOT NULL,
	[ServiceId] [int] NOT NULL,
	[BusinessId] [int] NULL,
	[PrintTime] [datetime] NOT NULL,
	[CarNumber] [varchar](250) NULL,
	[PhoneNumber] [varchar](250) NULL,
	[ServeTimeAllow] [time](7) NOT NULL,
	[CustomerName] [nvarchar](250) NULL,
	[CustomerDOB] [int] NULL,
	[CustomerAddress] [nvarchar](max) NULL,
 CONSTRAINT [PK_Q_DailyRequire] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Q_DailyRequire_Detail]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_DailyRequire_Detail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DailyRequireId] [int] NOT NULL,
	[MajorId] [int] NOT NULL,
	[UserId] [int] NULL,
	[EquipCode] [int] NULL,
	[ProcessTime] [datetime] NULL,
	[EndProcessTime] [datetime] NULL,
	[StatusId] [int] NOT NULL,
	[IsSendSMS] [bit] NOT NULL,
	[SmsContent] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Q_DailyRequire_Detail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_Equipment]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_Equipment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Code] [int] NOT NULL,
	[EquipTypeId] [int] NOT NULL,
	[CounterId] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
	[Position] [nvarchar](50) NULL,
	[Note] [nvarchar](100) NULL,
	[EndTime] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Q_Equipment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_EquipmentType]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_EquipmentType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Note] [nvarchar](500) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Q_EquipmentType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_EquipTypeProcess]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_EquipTypeProcess](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EquipTypeId] [int] NOT NULL,
	[ProcessId] [int] NOT NULL,
	[Step] [int] NOT NULL,
	[Priority] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Q_EquipTypeProcess] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_Evaluate]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_Evaluate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Index] [int] NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[Note] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Q_Evaluate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_EvaluateDetail]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_EvaluateDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EvaluateId] [int] NOT NULL,
	[Index] [int] NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[Note] [nvarchar](max) NULL,
	[IsDefault] [bit] NOT NULL,
	[Icon] [nvarchar](max) NULL,
	[IsSendSMS] [bit] NOT NULL,
	[SmsContent] [nvarchar](1000) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Q_EvaluateDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_HisDailyRequire]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Q_HisDailyRequire](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TicketNumber] [int] NOT NULL,
	[ServiceId] [int] NOT NULL,
	[BusinessId] [int] NULL,
	[PrintTime] [datetime] NOT NULL,
	[CarNumber] [varchar](250) NULL,
	[PhoneNumber] [varchar](250) NULL,
	[ServeTimeAllow] [time](7) NOT NULL,
	[CustomerName] [nvarchar](250) NULL,
	[CustomerDOB] [int] NULL,
	[CustomerAddress] [nvarchar](max) NULL,
	[CustomerAddress1] [nvarchar](max) NULL,
 CONSTRAINT [PK_Q_HisDailyRequire] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Q_HisDailyRequire_De]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_HisDailyRequire_De](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HisDailyRequireId] [int] NOT NULL,
	[MajorId] [int] NOT NULL,
	[UserId] [int] NULL,
	[EquipCode] [int] NULL,
	[ProcessTime] [datetime] NULL,
	[EndProcessTime] [datetime] NULL,
	[StatusId] [int] NOT NULL,
	[IsSendSMS] [bit] NOT NULL,
	[SmsContent] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Q_HisDailyRequire_De] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_HisUserEvaluate]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_HisUserEvaluate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HisDailyRequireDeId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[Score] [nvarchar](550) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Q_HisUserEvaluate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_Language]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_Language](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Note] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Q_Language] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_Login]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_Login](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EquipCode] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[StatusId] [int] NOT NULL,
	[LogoutTime] [datetime] NULL,
 CONSTRAINT [PK_Q_Login] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_LoginHistory]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_LoginHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EquipCode] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[StatusId] [int] NOT NULL,
	[LogoutTime] [datetime] NULL,
 CONSTRAINT [PK_Q_LoginHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_MaindisplayDirection]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_MaindisplayDirection](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CounterId] [int] NOT NULL,
	[EquipmentId] [int] NOT NULL,
	[Direction] [bit] NOT NULL,
	[Note] [nvarchar](500) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Q_MaindisplayDirection] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_Major]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_Major](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[Note] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Q_Major] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_Policy]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_Policy](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[Note] [nvarchar](max) NULL,
	[IsActived] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Q_Policy] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_Process]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Q_Process](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](500) NOT NULL,
	[Index] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Q_Process] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Q_ReadTemp_Detail]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_ReadTemp_Detail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReadTemplateId] [int] NOT NULL,
	[Index] [int] NOT NULL,
	[SoundId] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Q_ReadTemp_Detail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_ReadTemplate]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_ReadTemplate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LanguageId] [int] NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[Note] [nvarchar](1000) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Q_ReadTemplate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_RecieverSMS]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Q_RecieverSMS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PhoneNumber] [char](20) NOT NULL,
	[Note] [nvarchar](1000) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Q_RecieverSMS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Q_RegisterRecieveTicket]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_RegisterRecieveTicket](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EquipmentId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Q_RegisterRecieveTicket] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_Service]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_Service](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[StartNumber] [int] NOT NULL,
	[EndNumber] [int] NOT NULL,
	[TimeProcess] [datetime] NOT NULL,
	[Note] [nvarchar](100) NULL,
	[IsActived] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Q_Service] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_ServiceShift]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_ServiceShift](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ServiceId] [int] NOT NULL,
	[ShiftId] [int] NOT NULL,
	[Index] [int] NOT NULL,
	[Note] [nvarchar](500) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Q_ServiceShift] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_ServiceStep]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_ServiceStep](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ServiceId] [int] NOT NULL,
	[MajorId] [int] NOT NULL,
	[Index] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Q_ServiceStep] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_Shift]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_Shift](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[Start] [datetime] NOT NULL,
	[End] [datetime] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Q_Shift] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_Sound]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Q_Sound](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LanguageId] [int] NOT NULL,
	[Code] [varchar](50) NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Note] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Q_Sound] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Q_Status]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Q_Status](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[StatusTypeId] [int] NOT NULL,
	[Note] [nvarchar](500) NULL,
 CONSTRAINT [PK_Q_Status] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Q_StatusType]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_StatusType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_Q_StatusType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_User]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Q_User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Sex] [bit] NOT NULL,
	[Address] [nvarchar](100) NULL,
	[Avatar] [nvarchar](500) NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Help] [nvarchar](50) NULL,
	[Professional] [nvarchar](max) NULL,
	[Position] [nvarchar](max) NULL,
	[WorkingHistory] [nvarchar](max) NULL,
	[Counters] [varchar](100) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Q_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Q_UserCmdRegister]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Q_UserCmdRegister](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[CmdParamId] [int] NOT NULL,
	[ActionParamId] [int] NOT NULL,
	[Param] [varchar](50) NULL,
	[Index] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Q_UserCmdRegister] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Q_UserCommandReadSound]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_UserCommandReadSound](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[CommandId] [int] NOT NULL,
	[ReadTemplateId] [int] NOT NULL,
	[Index] [int] NOT NULL,
	[Note] [nvarchar](500) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Q_UserCommandReadSound] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_UserEvaluate]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_UserEvaluate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DailyRequireDeId] [int] NULL,
	[UserId] [int] NOT NULL,
	[Score] [nvarchar](550) NOT NULL,
	[SendSMS] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Q_UserEvaluate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_UserMajor]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_UserMajor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[MajorId] [int] NOT NULL,
	[Index] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Q_UserMajor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_Video]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_Video](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [nvarchar](500) NOT NULL,
	[FakeName] [nvarchar](500) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Q_Video] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_VideoTemplate]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_VideoTemplate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TemplateName] [nvarchar](500) NOT NULL,
	[Note] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Q_VideoTemplate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Q_VideoTemplate_De]    Script Date: 12/4/2018 12:38:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Q_VideoTemplate_De](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Index] [int] NOT NULL,
	[TemplateId] [int] NOT NULL,
	[VideoId] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Q_VideoTemplate_De] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_FK_Q_ActionParameter_Q_Action]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_ActionParameter_Q_Action] ON [dbo].[Q_ActionParameter]
(
	[ActionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_Alert_Q_Sound]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_Alert_Q_Sound] ON [dbo].[Q_Alert]
(
	[SoundId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_Business_Q_BusinessType]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_Business_Q_BusinessType] ON [dbo].[Q_Business]
(
	[BusinessTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_CommandParameter_Q_Command]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_CommandParameter_Q_Command] ON [dbo].[Q_CommandParameter]
(
	[CommandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_CounterSound_Q_Counter]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_CounterSound_Q_Counter] ON [dbo].[Q_CounterSound]
(
	[CounterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_CounterSound_Q_Sound]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_CounterSound_Q_Sound] ON [dbo].[Q_CounterSound]
(
	[LanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_DailyRequire_Q_Business]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_DailyRequire_Q_Business] ON [dbo].[Q_DailyRequire]
(
	[BusinessId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_DailyRequire_Q_Service]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_DailyRequire_Q_Service] ON [dbo].[Q_DailyRequire]
(
	[ServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_DailyRequire_Detail_Q_DailyRequire]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_DailyRequire_Detail_Q_DailyRequire] ON [dbo].[Q_DailyRequire_Detail]
(
	[DailyRequireId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_DailyRequire_Detail_Q_Major]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_DailyRequire_Detail_Q_Major] ON [dbo].[Q_DailyRequire_Detail]
(
	[MajorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_DailyRequire_Detail_Q_Status]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_DailyRequire_Detail_Q_Status] ON [dbo].[Q_DailyRequire_Detail]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_DailyRequire_Detail_Q_User]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_DailyRequire_Detail_Q_User] ON [dbo].[Q_DailyRequire_Detail]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_Equipment_Q_Counter]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_Equipment_Q_Counter] ON [dbo].[Q_Equipment]
(
	[CounterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_Equipment_Q_EquipmentType]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_Equipment_Q_EquipmentType] ON [dbo].[Q_Equipment]
(
	[EquipTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_Equipment_Q_Status]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_Equipment_Q_Status] ON [dbo].[Q_Equipment]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_EquipTypeProcess_Q_EquipmentType]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_EquipTypeProcess_Q_EquipmentType] ON [dbo].[Q_EquipTypeProcess]
(
	[EquipTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_EquipTypeProcess_Q_Process]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_EquipTypeProcess_Q_Process] ON [dbo].[Q_EquipTypeProcess]
(
	[ProcessId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_EvaluateDetail_Q_Evaluate]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_EvaluateDetail_Q_Evaluate] ON [dbo].[Q_EvaluateDetail]
(
	[EvaluateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_HisDailyRequire_Q_Business]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_HisDailyRequire_Q_Business] ON [dbo].[Q_HisDailyRequire]
(
	[BusinessId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_HisDailyRequire_Q_Service]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_HisDailyRequire_Q_Service] ON [dbo].[Q_HisDailyRequire]
(
	[ServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_HisDailyRequire_De_Q_HisDailyRequire]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_HisDailyRequire_De_Q_HisDailyRequire] ON [dbo].[Q_HisDailyRequire_De]
(
	[HisDailyRequireId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_HisDailyRequire_De_Q_Major]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_HisDailyRequire_De_Q_Major] ON [dbo].[Q_HisDailyRequire_De]
(
	[MajorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_HisDailyRequire_De_Q_Status]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_HisDailyRequire_De_Q_Status] ON [dbo].[Q_HisDailyRequire_De]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_HisDailyRequire_De_Q_User]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_HisDailyRequire_De_Q_User] ON [dbo].[Q_HisDailyRequire_De]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_HisUserEvaluate_Q_HisDailyRequire_De]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_HisUserEvaluate_Q_HisDailyRequire_De] ON [dbo].[Q_HisUserEvaluate]
(
	[HisDailyRequireDeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_HisUserEvaluate_Q_User]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_HisUserEvaluate_Q_User] ON [dbo].[Q_HisUserEvaluate]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_Login_Q_Status]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_Login_Q_Status] ON [dbo].[Q_Login]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_Login_Q_User]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_Login_Q_User] ON [dbo].[Q_Login]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_LoginHistory_Q_Status]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_LoginHistory_Q_Status] ON [dbo].[Q_LoginHistory]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_LoginHistory_Q_User]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_LoginHistory_Q_User] ON [dbo].[Q_LoginHistory]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_MaindisplayDirection_Q_Counter]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_MaindisplayDirection_Q_Counter] ON [dbo].[Q_MaindisplayDirection]
(
	[CounterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_MaindisplayDirection_Q_Equipment]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_MaindisplayDirection_Q_Equipment] ON [dbo].[Q_MaindisplayDirection]
(
	[EquipmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_ReadTemp_Detail_Q_ReadTemplate]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_ReadTemp_Detail_Q_ReadTemplate] ON [dbo].[Q_ReadTemp_Detail]
(
	[ReadTemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_ReadTemplate_Q_Language]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_ReadTemplate_Q_Language] ON [dbo].[Q_ReadTemplate]
(
	[LanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_RegisterRecieveTicket_Q_Equipment]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_RegisterRecieveTicket_Q_Equipment] ON [dbo].[Q_RegisterRecieveTicket]
(
	[EquipmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_RegisterRecieveTicket_Q_User]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_RegisterRecieveTicket_Q_User] ON [dbo].[Q_RegisterRecieveTicket]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_ServiceShift_Q_Service]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_ServiceShift_Q_Service] ON [dbo].[Q_ServiceShift]
(
	[ServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_ServiceShift_Q_Shift]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_ServiceShift_Q_Shift] ON [dbo].[Q_ServiceShift]
(
	[ShiftId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_ServiceStep_Q_Major]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_ServiceStep_Q_Major] ON [dbo].[Q_ServiceStep]
(
	[MajorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_ServiceStep_Q_Service]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_ServiceStep_Q_Service] ON [dbo].[Q_ServiceStep]
(
	[ServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_Sound_Q_Language]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_Sound_Q_Language] ON [dbo].[Q_Sound]
(
	[LanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_Status_Q_StatusType]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_Status_Q_StatusType] ON [dbo].[Q_Status]
(
	[StatusTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_UserCommand_Q_ActionParameter]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_UserCommand_Q_ActionParameter] ON [dbo].[Q_UserCmdRegister]
(
	[ActionParamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_UserCommand_Q_CommandParameter]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_UserCommand_Q_CommandParameter] ON [dbo].[Q_UserCmdRegister]
(
	[CmdParamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_UserCommand_Q_User]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_UserCommand_Q_User] ON [dbo].[Q_UserCmdRegister]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_UserCommandReadSound_Q_Command]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_UserCommandReadSound_Q_Command] ON [dbo].[Q_UserCommandReadSound]
(
	[CommandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_UserCommandReadSound_Q_ReadTemplate]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_UserCommandReadSound_Q_ReadTemplate] ON [dbo].[Q_UserCommandReadSound]
(
	[ReadTemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_UserCommandReadSound_Q_User]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_UserCommandReadSound_Q_User] ON [dbo].[Q_UserCommandReadSound]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_UserEvaluate_NHANVIEN]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_UserEvaluate_NHANVIEN] ON [dbo].[Q_UserEvaluate]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_UserEvaluate_Q_DailyRequire_Detail]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_UserEvaluate_Q_DailyRequire_Detail] ON [dbo].[Q_UserEvaluate]
(
	[DailyRequireDeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_UserMajor_Q_Major]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_UserMajor_Q_Major] ON [dbo].[Q_UserMajor]
(
	[MajorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Q_UserMajor_Q_User]    Script Date: 12/4/2018 12:38:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Q_UserMajor_Q_User] ON [dbo].[Q_UserMajor]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Q_DailyRequire_Detail] ADD  CONSTRAINT [DF_Q_DailyRequire_Detail_IsSendSMS_1]  DEFAULT ((0)) FOR [IsSendSMS]
GO
ALTER TABLE [dbo].[Q_HisDailyRequire_De] ADD  CONSTRAINT [DF_Q_HisDailyRequire_De_IsSendSMS]  DEFAULT ((0)) FOR [IsSendSMS]
GO
ALTER TABLE [dbo].[Q_Video] ADD  CONSTRAINT [DF_Q_Video_IsDeleted_1]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Q_VideoTemplate] ADD  CONSTRAINT [DF_Q_VideoTemplate_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Q_VideoTemplate] ADD  CONSTRAINT [DF_Q_VideoTemplate_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Q_VideoTemplate_De] ADD  CONSTRAINT [DF_Table_1_IsActive]  DEFAULT ((1)) FOR [Index]
GO
ALTER TABLE [dbo].[Q_VideoTemplate_De] ADD  CONSTRAINT [DF_Q_VideoTemplate_De_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Q_ActionParameter]  WITH CHECK ADD  CONSTRAINT [FK_Q_ActionParameter_Q_Action] FOREIGN KEY([ActionId])
REFERENCES [dbo].[Q_Action] ([Id])
GO
ALTER TABLE [dbo].[Q_ActionParameter] CHECK CONSTRAINT [FK_Q_ActionParameter_Q_Action]
GO
ALTER TABLE [dbo].[Q_Alert]  WITH CHECK ADD  CONSTRAINT [FK_Q_Alert_Q_Sound] FOREIGN KEY([SoundId])
REFERENCES [dbo].[Q_Sound] ([Id])
GO
ALTER TABLE [dbo].[Q_Alert] CHECK CONSTRAINT [FK_Q_Alert_Q_Sound]
GO
ALTER TABLE [dbo].[Q_Business]  WITH CHECK ADD  CONSTRAINT [FK_Q_Business_Q_BusinessType] FOREIGN KEY([BusinessTypeId])
REFERENCES [dbo].[Q_BusinessType] ([Id])
GO
ALTER TABLE [dbo].[Q_Business] CHECK CONSTRAINT [FK_Q_Business_Q_BusinessType]
GO
ALTER TABLE [dbo].[Q_CommandParameter]  WITH CHECK ADD  CONSTRAINT [FK_Q_CommandParameter_Q_Command] FOREIGN KEY([CommandId])
REFERENCES [dbo].[Q_Command] ([Id])
GO
ALTER TABLE [dbo].[Q_CommandParameter] CHECK CONSTRAINT [FK_Q_CommandParameter_Q_Command]
GO
ALTER TABLE [dbo].[Q_CounterSound]  WITH CHECK ADD  CONSTRAINT [FK_Q_CounterSound_Q_Counter] FOREIGN KEY([CounterId])
REFERENCES [dbo].[Q_Counter] ([Id])
GO
ALTER TABLE [dbo].[Q_CounterSound] CHECK CONSTRAINT [FK_Q_CounterSound_Q_Counter]
GO
ALTER TABLE [dbo].[Q_CounterSound]  WITH CHECK ADD  CONSTRAINT [FK_Q_CounterSound_Q_Sound] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Q_Language] ([Id])
GO
ALTER TABLE [dbo].[Q_CounterSound] CHECK CONSTRAINT [FK_Q_CounterSound_Q_Sound]
GO
ALTER TABLE [dbo].[Q_DailyRequire]  WITH CHECK ADD  CONSTRAINT [FK_Q_DailyRequire_Q_Business] FOREIGN KEY([BusinessId])
REFERENCES [dbo].[Q_Business] ([Id])
GO
ALTER TABLE [dbo].[Q_DailyRequire] CHECK CONSTRAINT [FK_Q_DailyRequire_Q_Business]
GO
ALTER TABLE [dbo].[Q_DailyRequire]  WITH CHECK ADD  CONSTRAINT [FK_Q_DailyRequire_Q_Service] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Q_Service] ([Id])
GO
ALTER TABLE [dbo].[Q_DailyRequire] CHECK CONSTRAINT [FK_Q_DailyRequire_Q_Service]
GO
ALTER TABLE [dbo].[Q_DailyRequire_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Q_DailyRequire_Detail_Q_DailyRequire] FOREIGN KEY([DailyRequireId])
REFERENCES [dbo].[Q_DailyRequire] ([Id])
GO
ALTER TABLE [dbo].[Q_DailyRequire_Detail] CHECK CONSTRAINT [FK_Q_DailyRequire_Detail_Q_DailyRequire]
GO
ALTER TABLE [dbo].[Q_DailyRequire_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Q_DailyRequire_Detail_Q_Major] FOREIGN KEY([MajorId])
REFERENCES [dbo].[Q_Major] ([Id])
GO
ALTER TABLE [dbo].[Q_DailyRequire_Detail] CHECK CONSTRAINT [FK_Q_DailyRequire_Detail_Q_Major]
GO
ALTER TABLE [dbo].[Q_DailyRequire_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Q_DailyRequire_Detail_Q_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Q_Status] ([Id])
GO
ALTER TABLE [dbo].[Q_DailyRequire_Detail] CHECK CONSTRAINT [FK_Q_DailyRequire_Detail_Q_Status]
GO
ALTER TABLE [dbo].[Q_DailyRequire_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Q_DailyRequire_Detail_Q_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[Q_User] ([Id])
GO
ALTER TABLE [dbo].[Q_DailyRequire_Detail] CHECK CONSTRAINT [FK_Q_DailyRequire_Detail_Q_User]
GO
ALTER TABLE [dbo].[Q_Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Q_Equipment_Q_Counter] FOREIGN KEY([CounterId])
REFERENCES [dbo].[Q_Counter] ([Id])
GO
ALTER TABLE [dbo].[Q_Equipment] CHECK CONSTRAINT [FK_Q_Equipment_Q_Counter]
GO
ALTER TABLE [dbo].[Q_Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Q_Equipment_Q_EquipmentType] FOREIGN KEY([EquipTypeId])
REFERENCES [dbo].[Q_EquipmentType] ([Id])
GO
ALTER TABLE [dbo].[Q_Equipment] CHECK CONSTRAINT [FK_Q_Equipment_Q_EquipmentType]
GO
ALTER TABLE [dbo].[Q_Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Q_Equipment_Q_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Q_Status] ([Id])
GO
ALTER TABLE [dbo].[Q_Equipment] CHECK CONSTRAINT [FK_Q_Equipment_Q_Status]
GO
ALTER TABLE [dbo].[Q_EquipTypeProcess]  WITH CHECK ADD  CONSTRAINT [FK_Q_EquipTypeProcess_Q_EquipmentType] FOREIGN KEY([EquipTypeId])
REFERENCES [dbo].[Q_EquipmentType] ([Id])
GO
ALTER TABLE [dbo].[Q_EquipTypeProcess] CHECK CONSTRAINT [FK_Q_EquipTypeProcess_Q_EquipmentType]
GO
ALTER TABLE [dbo].[Q_EquipTypeProcess]  WITH CHECK ADD  CONSTRAINT [FK_Q_EquipTypeProcess_Q_Process] FOREIGN KEY([ProcessId])
REFERENCES [dbo].[Q_Process] ([Id])
GO
ALTER TABLE [dbo].[Q_EquipTypeProcess] CHECK CONSTRAINT [FK_Q_EquipTypeProcess_Q_Process]
GO
ALTER TABLE [dbo].[Q_EvaluateDetail]  WITH CHECK ADD  CONSTRAINT [FK_Q_EvaluateDetail_Q_Evaluate] FOREIGN KEY([EvaluateId])
REFERENCES [dbo].[Q_Evaluate] ([Id])
GO
ALTER TABLE [dbo].[Q_EvaluateDetail] CHECK CONSTRAINT [FK_Q_EvaluateDetail_Q_Evaluate]
GO
ALTER TABLE [dbo].[Q_HisDailyRequire]  WITH CHECK ADD  CONSTRAINT [FK_Q_HisDailyRequire_Q_Business] FOREIGN KEY([BusinessId])
REFERENCES [dbo].[Q_Business] ([Id])
GO
ALTER TABLE [dbo].[Q_HisDailyRequire] CHECK CONSTRAINT [FK_Q_HisDailyRequire_Q_Business]
GO
ALTER TABLE [dbo].[Q_HisDailyRequire]  WITH CHECK ADD  CONSTRAINT [FK_Q_HisDailyRequire_Q_Service] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Q_Service] ([Id])
GO
ALTER TABLE [dbo].[Q_HisDailyRequire] CHECK CONSTRAINT [FK_Q_HisDailyRequire_Q_Service]
GO
ALTER TABLE [dbo].[Q_HisDailyRequire_De]  WITH CHECK ADD  CONSTRAINT [FK_Q_HisDailyRequire_De_Q_HisDailyRequire] FOREIGN KEY([HisDailyRequireId])
REFERENCES [dbo].[Q_HisDailyRequire] ([Id])
GO
ALTER TABLE [dbo].[Q_HisDailyRequire_De] CHECK CONSTRAINT [FK_Q_HisDailyRequire_De_Q_HisDailyRequire]
GO
ALTER TABLE [dbo].[Q_HisDailyRequire_De]  WITH CHECK ADD  CONSTRAINT [FK_Q_HisDailyRequire_De_Q_Major] FOREIGN KEY([MajorId])
REFERENCES [dbo].[Q_Major] ([Id])
GO
ALTER TABLE [dbo].[Q_HisDailyRequire_De] CHECK CONSTRAINT [FK_Q_HisDailyRequire_De_Q_Major]
GO
ALTER TABLE [dbo].[Q_HisDailyRequire_De]  WITH CHECK ADD  CONSTRAINT [FK_Q_HisDailyRequire_De_Q_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Q_Status] ([Id])
GO
ALTER TABLE [dbo].[Q_HisDailyRequire_De] CHECK CONSTRAINT [FK_Q_HisDailyRequire_De_Q_Status]
GO
ALTER TABLE [dbo].[Q_HisDailyRequire_De]  WITH CHECK ADD  CONSTRAINT [FK_Q_HisDailyRequire_De_Q_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[Q_User] ([Id])
GO
ALTER TABLE [dbo].[Q_HisDailyRequire_De] CHECK CONSTRAINT [FK_Q_HisDailyRequire_De_Q_User]
GO
ALTER TABLE [dbo].[Q_HisUserEvaluate]  WITH CHECK ADD  CONSTRAINT [FK_Q_HisUserEvaluate_Q_HisDailyRequire_De] FOREIGN KEY([HisDailyRequireDeId])
REFERENCES [dbo].[Q_HisDailyRequire_De] ([Id])
GO
ALTER TABLE [dbo].[Q_HisUserEvaluate] CHECK CONSTRAINT [FK_Q_HisUserEvaluate_Q_HisDailyRequire_De]
GO
ALTER TABLE [dbo].[Q_HisUserEvaluate]  WITH CHECK ADD  CONSTRAINT [FK_Q_HisUserEvaluate_Q_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[Q_User] ([Id])
GO
ALTER TABLE [dbo].[Q_HisUserEvaluate] CHECK CONSTRAINT [FK_Q_HisUserEvaluate_Q_User]
GO
ALTER TABLE [dbo].[Q_Login]  WITH CHECK ADD  CONSTRAINT [FK_Q_Login_Q_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Q_Status] ([Id])
GO
ALTER TABLE [dbo].[Q_Login] CHECK CONSTRAINT [FK_Q_Login_Q_Status]
GO
ALTER TABLE [dbo].[Q_Login]  WITH CHECK ADD  CONSTRAINT [FK_Q_Login_Q_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[Q_User] ([Id])
GO
ALTER TABLE [dbo].[Q_Login] CHECK CONSTRAINT [FK_Q_Login_Q_User]
GO
ALTER TABLE [dbo].[Q_LoginHistory]  WITH CHECK ADD  CONSTRAINT [FK_Q_LoginHistory_Q_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Q_Status] ([Id])
GO
ALTER TABLE [dbo].[Q_LoginHistory] CHECK CONSTRAINT [FK_Q_LoginHistory_Q_Status]
GO
ALTER TABLE [dbo].[Q_LoginHistory]  WITH CHECK ADD  CONSTRAINT [FK_Q_LoginHistory_Q_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[Q_User] ([Id])
GO
ALTER TABLE [dbo].[Q_LoginHistory] CHECK CONSTRAINT [FK_Q_LoginHistory_Q_User]
GO
ALTER TABLE [dbo].[Q_MaindisplayDirection]  WITH CHECK ADD  CONSTRAINT [FK_Q_MaindisplayDirection_Q_Counter] FOREIGN KEY([CounterId])
REFERENCES [dbo].[Q_Counter] ([Id])
GO
ALTER TABLE [dbo].[Q_MaindisplayDirection] CHECK CONSTRAINT [FK_Q_MaindisplayDirection_Q_Counter]
GO
ALTER TABLE [dbo].[Q_MaindisplayDirection]  WITH CHECK ADD  CONSTRAINT [FK_Q_MaindisplayDirection_Q_Equipment] FOREIGN KEY([EquipmentId])
REFERENCES [dbo].[Q_Equipment] ([Id])
GO
ALTER TABLE [dbo].[Q_MaindisplayDirection] CHECK CONSTRAINT [FK_Q_MaindisplayDirection_Q_Equipment]
GO
ALTER TABLE [dbo].[Q_ReadTemp_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Q_ReadTemp_Detail_Q_ReadTemplate] FOREIGN KEY([ReadTemplateId])
REFERENCES [dbo].[Q_ReadTemplate] ([Id])
GO
ALTER TABLE [dbo].[Q_ReadTemp_Detail] CHECK CONSTRAINT [FK_Q_ReadTemp_Detail_Q_ReadTemplate]
GO
ALTER TABLE [dbo].[Q_ReadTemplate]  WITH CHECK ADD  CONSTRAINT [FK_Q_ReadTemplate_Q_Language] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Q_Language] ([Id])
GO
ALTER TABLE [dbo].[Q_ReadTemplate] CHECK CONSTRAINT [FK_Q_ReadTemplate_Q_Language]
GO
ALTER TABLE [dbo].[Q_RegisterRecieveTicket]  WITH CHECK ADD  CONSTRAINT [FK_Q_RegisterRecieveTicket_Q_Equipment] FOREIGN KEY([EquipmentId])
REFERENCES [dbo].[Q_Equipment] ([Id])
GO
ALTER TABLE [dbo].[Q_RegisterRecieveTicket] CHECK CONSTRAINT [FK_Q_RegisterRecieveTicket_Q_Equipment]
GO
ALTER TABLE [dbo].[Q_RegisterRecieveTicket]  WITH CHECK ADD  CONSTRAINT [FK_Q_RegisterRecieveTicket_Q_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[Q_User] ([Id])
GO
ALTER TABLE [dbo].[Q_RegisterRecieveTicket] CHECK CONSTRAINT [FK_Q_RegisterRecieveTicket_Q_User]
GO
ALTER TABLE [dbo].[Q_ServiceShift]  WITH CHECK ADD  CONSTRAINT [FK_Q_ServiceShift_Q_Service] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Q_Service] ([Id])
GO
ALTER TABLE [dbo].[Q_ServiceShift] CHECK CONSTRAINT [FK_Q_ServiceShift_Q_Service]
GO
ALTER TABLE [dbo].[Q_ServiceShift]  WITH CHECK ADD  CONSTRAINT [FK_Q_ServiceShift_Q_Shift] FOREIGN KEY([ShiftId])
REFERENCES [dbo].[Q_Shift] ([Id])
GO
ALTER TABLE [dbo].[Q_ServiceShift] CHECK CONSTRAINT [FK_Q_ServiceShift_Q_Shift]
GO
ALTER TABLE [dbo].[Q_ServiceStep]  WITH CHECK ADD  CONSTRAINT [FK_Q_ServiceStep_Q_Major] FOREIGN KEY([MajorId])
REFERENCES [dbo].[Q_Major] ([Id])
GO
ALTER TABLE [dbo].[Q_ServiceStep] CHECK CONSTRAINT [FK_Q_ServiceStep_Q_Major]
GO
ALTER TABLE [dbo].[Q_ServiceStep]  WITH CHECK ADD  CONSTRAINT [FK_Q_ServiceStep_Q_Service] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Q_Service] ([Id])
GO
ALTER TABLE [dbo].[Q_ServiceStep] CHECK CONSTRAINT [FK_Q_ServiceStep_Q_Service]
GO
ALTER TABLE [dbo].[Q_Sound]  WITH CHECK ADD  CONSTRAINT [FK_Q_Sound_Q_Language] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Q_Language] ([Id])
GO
ALTER TABLE [dbo].[Q_Sound] CHECK CONSTRAINT [FK_Q_Sound_Q_Language]
GO
ALTER TABLE [dbo].[Q_Status]  WITH CHECK ADD  CONSTRAINT [FK_Q_Status_Q_StatusType] FOREIGN KEY([StatusTypeId])
REFERENCES [dbo].[Q_StatusType] ([Id])
GO
ALTER TABLE [dbo].[Q_Status] CHECK CONSTRAINT [FK_Q_Status_Q_StatusType]
GO
ALTER TABLE [dbo].[Q_UserCmdRegister]  WITH CHECK ADD  CONSTRAINT [FK_Q_UserCommand_Q_ActionParameter] FOREIGN KEY([ActionParamId])
REFERENCES [dbo].[Q_ActionParameter] ([Id])
GO
ALTER TABLE [dbo].[Q_UserCmdRegister] CHECK CONSTRAINT [FK_Q_UserCommand_Q_ActionParameter]
GO
ALTER TABLE [dbo].[Q_UserCmdRegister]  WITH CHECK ADD  CONSTRAINT [FK_Q_UserCommand_Q_CommandParameter] FOREIGN KEY([CmdParamId])
REFERENCES [dbo].[Q_CommandParameter] ([Id])
GO
ALTER TABLE [dbo].[Q_UserCmdRegister] CHECK CONSTRAINT [FK_Q_UserCommand_Q_CommandParameter]
GO
ALTER TABLE [dbo].[Q_UserCmdRegister]  WITH CHECK ADD  CONSTRAINT [FK_Q_UserCommand_Q_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[Q_User] ([Id])
GO
ALTER TABLE [dbo].[Q_UserCmdRegister] CHECK CONSTRAINT [FK_Q_UserCommand_Q_User]
GO
ALTER TABLE [dbo].[Q_UserCommandReadSound]  WITH CHECK ADD  CONSTRAINT [FK_Q_UserCommandReadSound_Q_Command] FOREIGN KEY([CommandId])
REFERENCES [dbo].[Q_Command] ([Id])
GO
ALTER TABLE [dbo].[Q_UserCommandReadSound] CHECK CONSTRAINT [FK_Q_UserCommandReadSound_Q_Command]
GO
ALTER TABLE [dbo].[Q_UserCommandReadSound]  WITH CHECK ADD  CONSTRAINT [FK_Q_UserCommandReadSound_Q_ReadTemplate] FOREIGN KEY([ReadTemplateId])
REFERENCES [dbo].[Q_ReadTemplate] ([Id])
GO
ALTER TABLE [dbo].[Q_UserCommandReadSound] CHECK CONSTRAINT [FK_Q_UserCommandReadSound_Q_ReadTemplate]
GO
ALTER TABLE [dbo].[Q_UserCommandReadSound]  WITH CHECK ADD  CONSTRAINT [FK_Q_UserCommandReadSound_Q_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[Q_User] ([Id])
GO
ALTER TABLE [dbo].[Q_UserCommandReadSound] CHECK CONSTRAINT [FK_Q_UserCommandReadSound_Q_User]
GO
ALTER TABLE [dbo].[Q_UserEvaluate]  WITH CHECK ADD  CONSTRAINT [FK_Q_UserEvaluate_NHANVIEN] FOREIGN KEY([UserId])
REFERENCES [dbo].[Q_User] ([Id])
GO
ALTER TABLE [dbo].[Q_UserEvaluate] CHECK CONSTRAINT [FK_Q_UserEvaluate_NHANVIEN]
GO
ALTER TABLE [dbo].[Q_UserEvaluate]  WITH CHECK ADD  CONSTRAINT [FK_Q_UserEvaluate_Q_DailyRequire_Detail] FOREIGN KEY([DailyRequireDeId])
REFERENCES [dbo].[Q_DailyRequire_Detail] ([Id])
GO
ALTER TABLE [dbo].[Q_UserEvaluate] CHECK CONSTRAINT [FK_Q_UserEvaluate_Q_DailyRequire_Detail]
GO
ALTER TABLE [dbo].[Q_UserMajor]  WITH CHECK ADD  CONSTRAINT [FK_Q_UserMajor_Q_Major] FOREIGN KEY([MajorId])
REFERENCES [dbo].[Q_Major] ([Id])
GO
ALTER TABLE [dbo].[Q_UserMajor] CHECK CONSTRAINT [FK_Q_UserMajor_Q_Major]
GO
ALTER TABLE [dbo].[Q_UserMajor]  WITH CHECK ADD  CONSTRAINT [FK_Q_UserMajor_Q_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[Q_User] ([Id])
GO
ALTER TABLE [dbo].[Q_UserMajor] CHECK CONSTRAINT [FK_Q_UserMajor_Q_User]
GO
ALTER TABLE [dbo].[Q_VideoTemplate_De]  WITH CHECK ADD  CONSTRAINT [FK_Q_VideoTemplate_De_Q_Video] FOREIGN KEY([VideoId])
REFERENCES [dbo].[Q_Video] ([Id])
GO
ALTER TABLE [dbo].[Q_VideoTemplate_De] CHECK CONSTRAINT [FK_Q_VideoTemplate_De_Q_Video]
GO
ALTER TABLE [dbo].[Q_VideoTemplate_De]  WITH CHECK ADD  CONSTRAINT [FK_Q_VideoTemplate_De_Q_VideoTemplate] FOREIGN KEY([TemplateId])
REFERENCES [dbo].[Q_VideoTemplate] ([Id])
GO
ALTER TABLE [dbo].[Q_VideoTemplate_De] CHECK CONSTRAINT [FK_Q_VideoTemplate_De_Q_VideoTemplate]
GO
USE [master]
GO
ALTER DATABASE [Qms_template] SET  READ_WRITE 
GO
