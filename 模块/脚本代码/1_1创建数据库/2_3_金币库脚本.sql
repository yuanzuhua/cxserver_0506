USE [RYTreasureDB]
GO
/****** 对象:  Table [dbo].[StreamAgentPayInfo]    脚本日期: 03/17/2017 10:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StreamAgentPayInfo](
	[DateID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[PayAmount] [decimal](18, 2) NOT NULL,
	[Currency] [decimal](18, 2) NOT NULL,
	[PayScore] [bigint] NOT NULL,
	[FirstCollectDate] [datetime] NOT NULL CONSTRAINT [DF_StreamAgentPayInfo_FirstCollectDate]  DEFAULT (getdate()),
	[LastCollectDate] [datetime] NOT NULL CONSTRAINT [DF_StreamAgentPayInfo_LastCollectDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_StreamAgentPayInfo] PRIMARY KEY CLUSTERED 
(
	[DateID] ASC,
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamAgentPayInfo', @level2type=N'COLUMN',@level2name=N'DateID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代理用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamAgentPayInfo', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'充值金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamAgentPayInfo', @level2type=N'COLUMN',@level2name=N'PayAmount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'充值元宝' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamAgentPayInfo', @level2type=N'COLUMN',@level2name=N'Currency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'充值金币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamAgentPayInfo', @level2type=N'COLUMN',@level2name=N'PayScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始充值时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamAgentPayInfo', @level2type=N'COLUMN',@level2name=N'FirstCollectDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束充值时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamAgentPayInfo', @level2type=N'COLUMN',@level2name=N'LastCollectDate'
GO
/****** 对象:  Table [dbo].[GlobalSpreadInfo]    脚本日期: 03/17/2017 10:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GlobalSpreadInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RegisterGrantScore] [int] NOT NULL CONSTRAINT [DF_GlobalSpreadInfo_RegisterGrantScore]  DEFAULT ((0)),
	[PlayTimeCount] [int] NOT NULL CONSTRAINT [DF_GlobalSpreadInfo_PlayTimeCount]  DEFAULT ((0)),
	[PlayTimeGrantScore] [int] NOT NULL CONSTRAINT [DF_GlobalSpreadInfo_PlayTimeGrantScore]  DEFAULT ((0)),
	[FillGrantRate] [decimal](18, 2) NOT NULL CONSTRAINT [DF_GlobalSpreadInfo_FillGrantRate]  DEFAULT ((0)),
	[BalanceRate] [decimal](18, 2) NOT NULL CONSTRAINT [DF_GlobalSpreadInfo_BalanceRate]  DEFAULT ((0)),
	[MinBalanceScore] [int] NOT NULL CONSTRAINT [DF_GlobalSpreadInfo_MinBalanceScore]  DEFAULT ((0)),
 CONSTRAINT [PK_GlobalSpreadInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册时赠送金币数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalSpreadInfo', @level2type=N'COLUMN',@level2name=N'RegisterGrantScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'在线时长（单位：秒）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalSpreadInfo', @level2type=N'COLUMN',@level2name=N'PlayTimeCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'根据在线时长赠送金币数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalSpreadInfo', @level2type=N'COLUMN',@level2name=N'PlayTimeGrantScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'充值赠送比率' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalSpreadInfo', @level2type=N'COLUMN',@level2name=N'FillGrantRate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结算赠送比率' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalSpreadInfo', @level2type=N'COLUMN',@level2name=N'BalanceRate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结算最小值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalSpreadInfo', @level2type=N'COLUMN',@level2name=N'MinBalanceScore'
GO
/****** 对象:  Table [dbo].[GlobalCardInfo]    脚本日期: 03/17/2017 10:16:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GlobalCardInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CardID] [int] NOT NULL CONSTRAINT [DF_GlobalCardInfo_CardID]  DEFAULT ((0)),
	[CardName] [nvarchar](32) NOT NULL CONSTRAINT [DF_GlobalCardInfo_CardName]  DEFAULT (''),
	[CardQuota] [int] NOT NULL CONSTRAINT [DF_GlobalCardInfo_CardQuota]  DEFAULT ((0)),
 CONSTRAINT [PK_GlobalCardInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalCardInfo', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'充值卡编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalCardInfo', @level2type=N'COLUMN',@level2name=N'CardID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'充值卡名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalCardInfo', @level2type=N'COLUMN',@level2name=N'CardName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'充值卡额度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalCardInfo', @level2type=N'COLUMN',@level2name=N'CardQuota'
GO
/****** 对象:  Table [dbo].[OnLineOrder]    脚本日期: 03/17/2017 10:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OnLineOrder](
	[OnLineID] [int] IDENTITY(1,1) NOT NULL,
	[OperUserID] [int] NOT NULL,
	[ShareID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[GameID] [int] NOT NULL,
	[Accounts] [nvarchar](31) NOT NULL,
	[OrderID] [nvarchar](32) NOT NULL,
	[OrderAmount] [decimal](18, 2) NOT NULL,
	[DiscountScale] [decimal](18, 2) NOT NULL CONSTRAINT [DF_OnLineOrder_DiscountScale]  DEFAULT ((0)),
	[PayAmount] [decimal](18, 2) NOT NULL,
	[Rate] [int] NOT NULL CONSTRAINT [DF_OnLineOrder_Rate]  DEFAULT ((1)),
	[Currency] [decimal](18, 2) NOT NULL CONSTRAINT [DF_OnLineOrder_Currency]  DEFAULT ((0)),
	[OrderStatus] [tinyint] NOT NULL CONSTRAINT [DF_OnLineOrder_OrderStatus]  DEFAULT ((0)),
	[IPAddress] [nvarchar](15) NOT NULL,
	[ApplyDate] [datetime] NOT NULL CONSTRAINT [DF_OnLineOrder_ApplyDate]  DEFAULT (getdate()),
	[RoomCard] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_OnLineOrder] PRIMARY KEY CLUSTERED 
(
	[OnLineID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OnLineOrder', @level2type=N'COLUMN',@level2name=N'OnLineID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OnLineOrder', @level2type=N'COLUMN',@level2name=N'OperUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'服务标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OnLineOrder', @level2type=N'COLUMN',@level2name=N'ShareID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OnLineOrder', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OnLineOrder', @level2type=N'COLUMN',@level2name=N'GameID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OnLineOrder', @level2type=N'COLUMN',@level2name=N'Accounts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OnLineOrder', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OnLineOrder', @level2type=N'COLUMN',@level2name=N'OrderAmount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'折扣比例' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OnLineOrder', @level2type=N'COLUMN',@level2name=N'DiscountScale'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实付金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OnLineOrder', @level2type=N'COLUMN',@level2name=N'PayAmount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏豆数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OnLineOrder', @level2type=N'COLUMN',@level2name=N'Currency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单状态  0:未付款;1:已付款待处理;2:处理完成' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OnLineOrder', @level2type=N'COLUMN',@level2name=N'OrderStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OnLineOrder', @level2type=N'COLUMN',@level2name=N'IPAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OnLineOrder', @level2type=N'COLUMN',@level2name=N'ApplyDate'
GO
/****** 对象:  Table [dbo].[ReturnDayDetailInfo]    脚本日期: 03/17/2017 10:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReturnDayDetailInfo](
	[DetailID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [nvarchar](32) NOT NULL CONSTRAINT [DF_ReturnDayDetailInfo_OrderID]  DEFAULT (''),
	[MerID] [nvarchar](32) NOT NULL CONSTRAINT [DF_ReturnDayDetailInfo_MerID]  DEFAULT (''),
	[PayMoney] [decimal](18, 0) NOT NULL CONSTRAINT [DF_ReturnDayDetailInfo_PayMoney]  DEFAULT ((0)),
	[UserName] [nvarchar](16) NOT NULL CONSTRAINT [DF_ReturnDayDetailInfo_UserName]  DEFAULT (''),
	[PayType] [int] NOT NULL CONSTRAINT [DF_ReturnDayDetailInfo_PayType]  DEFAULT ((0)),
	[Status] [nvarchar](5) NOT NULL CONSTRAINT [DF_ReturnDayDetailInfo_Status]  DEFAULT (''),
	[Sign] [nvarchar](32) NOT NULL,
	[InputDate] [datetime] NOT NULL CONSTRAINT [DF_ReturnDayInfo_InputDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_ReturnDayInfo] PRIMARY KEY CLUSTERED 
(
	[DetailID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnDayDetailInfo', @level2type=N'COLUMN',@level2name=N'DetailID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnDayDetailInfo', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnDayDetailInfo', @level2type=N'COLUMN',@level2name=N'MerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnDayDetailInfo', @level2type=N'COLUMN',@level2name=N'PayMoney'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnDayDetailInfo', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付类型（1：网银支付 ）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnDayDetailInfo', @level2type=N'COLUMN',@level2name=N'PayType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnDayDetailInfo', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnDayDetailInfo', @level2type=N'COLUMN',@level2name=N'Sign'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'充值时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnDayDetailInfo', @level2type=N'COLUMN',@level2name=N'InputDate'
GO
/****** 对象:  Table [dbo].[UserGameInfo]    脚本日期: 03/17/2017 10:18:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGameInfo](
	[UserID] [int] NOT NULL,
	[KindID] [int] NOT NULL,
	[UserGameData] [nvarchar](1024) NOT NULL,
	[LineGrandTotal] [int] NOT NULL CONSTRAINT [DF_UserGameData_LineGrandTotal]  DEFAULT ((0)),
	[LineWinMax] [int] NOT NULL CONSTRAINT [DF_UserGameData_LineWinMaxl]  DEFAULT ((0)),
	[LastModifyDate] [datetime] NOT NULL CONSTRAINT [DF_UserGameData_LastModifyDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_UserGameData] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[KindID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserGameInfo', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserGameInfo', @level2type=N'COLUMN',@level2name=N'KindID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏数据（Index:Value;）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserGameInfo', @level2type=N'COLUMN',@level2name=N'UserGameData'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'三九连线：总赢局' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserGameInfo', @level2type=N'COLUMN',@level2name=N'LineGrandTotal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'三九连线：单次最高' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserGameInfo', @level2type=N'COLUMN',@level2name=N'LineWinMax'
GO
/****** 对象:  Table [dbo].[GlobalWebInfo]    脚本日期: 03/17/2017 10:16:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GlobalWebInfo](
	[WebID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](32) NOT NULL CONSTRAINT [DF_GlobalWebInfo_ProductName]  DEFAULT (''),
	[ProductType] [int] NOT NULL CONSTRAINT [DF_GlobalWebInfo_ProductType]  DEFAULT ((0)),
	[Price] [decimal](18, 2) NOT NULL CONSTRAINT [DF_GlobalWebInfo_Price]  DEFAULT ((0)),
	[AttachCurrency] [decimal](18, 2) NOT NULL CONSTRAINT [DF_GlobalWebInfo_AttachCurrency]  DEFAULT ((0)),
	[PresentCurrency] [decimal](18, 2) NOT NULL CONSTRAINT [DF_GlobalWebInfo_PresentCurrency]  DEFAULT ((0)),
	[SortID] [int] NOT NULL CONSTRAINT [DF_GlobalWebInfo_SortID]  DEFAULT ((0)),
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_GlobalWebInfo_CollectDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_GlobalWebInfo] PRIMARY KEY CLUSTERED 
(
	[WebID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配置标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalWebInfo', @level2type=N'COLUMN',@level2name=N'WebID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalWebInfo', @level2type=N'COLUMN',@level2name=N'ProductName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品类型（对应 GlobalCardInfo 表CardID  如若为0，则表示主流充值）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalWebInfo', @level2type=N'COLUMN',@level2name=N'ProductType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalWebInfo', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'首冲赠送游戏豆' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalWebInfo', @level2type=N'COLUMN',@level2name=N'AttachCurrency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'充值获得游戏豆' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalWebInfo', @level2type=N'COLUMN',@level2name=N'PresentCurrency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalWebInfo', @level2type=N'COLUMN',@level2name=N'SortID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalWebInfo', @level2type=N'COLUMN',@level2name=N'CollectDate'
GO
/****** 对象:  Table [dbo].[GameScoreInfo]    脚本日期: 03/17/2017 10:16:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameScoreInfo](
	[UserID] [int] NOT NULL,
	[Score] [bigint] NOT NULL CONSTRAINT [DF_GameScore_Score]  DEFAULT ((0)),
	[Revenue] [bigint] NOT NULL CONSTRAINT [DF_GameScoreInfo_GameTax]  DEFAULT ((0)),
	[InsureScore] [bigint] NOT NULL CONSTRAINT [DF_GameScoreInfo_InsureScore]  DEFAULT ((0)),
	[WinCount] [int] NOT NULL CONSTRAINT [DF_GameScore_WinCount]  DEFAULT ((0)),
	[LostCount] [int] NOT NULL CONSTRAINT [DF_GameScore_LostCount]  DEFAULT ((0)),
	[DrawCount] [int] NOT NULL CONSTRAINT [DF_GameScore_DrawCount]  DEFAULT ((0)),
	[FleeCount] [int] NOT NULL CONSTRAINT [DF_GameScore_FleeCount]  DEFAULT ((0)),
	[UserRight] [int] NOT NULL CONSTRAINT [DF_GameScoreInfo_UserRight]  DEFAULT ((0)),
	[MasterRight] [int] NOT NULL CONSTRAINT [DF_GameScoreInfo_MasterRight]  DEFAULT ((0)),
	[MasterOrder] [tinyint] NOT NULL CONSTRAINT [DF_GameScoreInfo_MasterOrder]  DEFAULT ((0)),
	[AllLogonTimes] [int] NOT NULL CONSTRAINT [DF_GameScore_AllLogonTimes]  DEFAULT ((0)),
	[PlayTimeCount] [int] NOT NULL CONSTRAINT [DF_GameScore_PlayTimeCount_1]  DEFAULT ((0)),
	[OnLineTimeCount] [int] NOT NULL CONSTRAINT [DF_GameScore_OnLineTimeCount]  DEFAULT ((0)),
	[LastLogonIP] [nvarchar](15) NOT NULL CONSTRAINT [DF_GameScoreInfo_LastLogonIP]  DEFAULT (N''),
	[LastLogonDate] [datetime] NOT NULL CONSTRAINT [DF_GameScore_LastLogonDate]  DEFAULT (getdate()),
	[LastLogonMachine] [nvarchar](32) NOT NULL CONSTRAINT [DF_GameScoreInfo_LastLogonMachine]  DEFAULT ('------------'),
	[RegisterIP] [nvarchar](15) NOT NULL CONSTRAINT [DF_GameScoreInfo_RegisterIP]  DEFAULT (N''),
	[RegisterDate] [datetime] NOT NULL CONSTRAINT [DF_GameScore_RegisterDate]  DEFAULT (getdate()),
	[RegisterMachine] [nvarchar](32) NOT NULL CONSTRAINT [DF_GameScoreInfo_RegisterMachine]  DEFAULT (N'------------'),
 CONSTRAINT [PK_GameScoreInfo_1] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户 ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameScoreInfo', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户积分（货币）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameScoreInfo', @level2type=N'COLUMN',@level2name=N'Score'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏税收' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameScoreInfo', @level2type=N'COLUMN',@level2name=N'Revenue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'银行金币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameScoreInfo', @level2type=N'COLUMN',@level2name=N'InsureScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'胜局数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameScoreInfo', @level2type=N'COLUMN',@level2name=N'WinCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'输局数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameScoreInfo', @level2type=N'COLUMN',@level2name=N'LostCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'和局数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameScoreInfo', @level2type=N'COLUMN',@level2name=N'DrawCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'逃局数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameScoreInfo', @level2type=N'COLUMN',@level2name=N'FleeCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameScoreInfo', @level2type=N'COLUMN',@level2name=N'UserRight'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameScoreInfo', @level2type=N'COLUMN',@level2name=N'MasterRight'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理等级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameScoreInfo', @level2type=N'COLUMN',@level2name=N'MasterOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总登陆次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameScoreInfo', @level2type=N'COLUMN',@level2name=N'AllLogonTimes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameScoreInfo', @level2type=N'COLUMN',@level2name=N'PlayTimeCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'在线时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameScoreInfo', @level2type=N'COLUMN',@level2name=N'OnLineTimeCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上次登陆 IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameScoreInfo', @level2type=N'COLUMN',@level2name=N'LastLogonIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上次登陆时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameScoreInfo', @level2type=N'COLUMN',@level2name=N'LastLogonDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录机器' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameScoreInfo', @level2type=N'COLUMN',@level2name=N'LastLogonMachine'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册 IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameScoreInfo', @level2type=N'COLUMN',@level2name=N'RegisterIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameScoreInfo', @level2type=N'COLUMN',@level2name=N'RegisterDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册机器' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameScoreInfo', @level2type=N'COLUMN',@level2name=N'RegisterMachine'
GO
/****** 对象:  Table [dbo].[ConfineAddress]    脚本日期: 03/17/2017 10:16:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfineAddress](
	[AddrString] [nvarchar](15) NOT NULL,
	[EnjoinLogon] [bit] NOT NULL CONSTRAINT [DF_AddrConfineRule_EnjoinLogon]  DEFAULT ((0)),
	[EnjoinOverDate] [datetime] NOT NULL,
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_AddrConfineRule_CollectDate]  DEFAULT (getdate()),
	[CollectNote] [nvarchar](32) NOT NULL CONSTRAINT [DF_AddrConfineRule_CollectNote]  DEFAULT (''),
 CONSTRAINT [PK_ConfineAddress_AddrString] PRIMARY KEY CLUSTERED 
(
	[AddrString] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址字符' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConfineAddress', @level2type=N'COLUMN',@level2name=N'AddrString'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'限制登陆' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConfineAddress', @level2type=N'COLUMN',@level2name=N'EnjoinLogon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'过期时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConfineAddress', @level2type=N'COLUMN',@level2name=N'EnjoinOverDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收集日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConfineAddress', @level2type=N'COLUMN',@level2name=N'CollectDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'输入备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConfineAddress', @level2type=N'COLUMN',@level2name=N'CollectNote'
GO
/****** 对象:  Table [dbo].[UserGameInfo_Line]    脚本日期: 03/17/2017 10:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGameInfo_Line](
	[DateID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[LineGrandTotal] [bigint] NOT NULL CONSTRAINT [DF_UserGameInfo_Line_LineGrandTotal]  DEFAULT ((0)),
	[LineWinMax] [bigint] NOT NULL CONSTRAINT [DF_UserGameInfo_Line_LineWinMax]  DEFAULT ((0)),
	[LastModifyDate] [datetime] NOT NULL CONSTRAINT [DF_UserGameInfo_Line_LastModifyDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_UserGameInfo_Line] PRIMARY KEY CLUSTERED 
(
	[DateID] ASC,
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserGameInfo_Line', @level2type=N'COLUMN',@level2name=N'DateID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserGameInfo_Line', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总局数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserGameInfo_Line', @level2type=N'COLUMN',@level2name=N'LineGrandTotal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单次最高' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserGameInfo_Line', @level2type=N'COLUMN',@level2name=N'LineWinMax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserGameInfo_Line', @level2type=N'COLUMN',@level2name=N'LastModifyDate'
GO
/****** 对象:  Table [dbo].[StreamPresentInfo]    脚本日期: 03/17/2017 10:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StreamPresentInfo](
	[DateID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[TypeID] [int] NOT NULL,
	[PresentCount] [int] NOT NULL,
	[PresentScore] [int] NOT NULL,
	[FirstDate] [datetime] NOT NULL CONSTRAINT [DF_StreamPresentInfo_FirstDate]  DEFAULT (getdate()),
	[LastDate] [datetime] NOT NULL CONSTRAINT [DF_StreamPresentInfo_LastDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_StreamPresentInfo] PRIMARY KEY CLUSTERED 
(
	[DateID] ASC,
	[UserID] ASC,
	[TypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamPresentInfo', @level2type=N'COLUMN',@level2name=N'DateID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamPresentInfo', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1:注册赠送,2:低保赠送,3:签到赠送,4:元宝兑换,5:魅力兑换,6:在线时长赠送,7:任务奖励 8:实名验证 9:会员每日送金 10比赛奖励 11等级升级 12 分享赠送  13 代理注册赠送  14 转盘赠送' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamPresentInfo', @level2type=N'COLUMN',@level2name=N'TypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赠送次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamPresentInfo', @level2type=N'COLUMN',@level2name=N'PresentCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赠送金币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamPresentInfo', @level2type=N'COLUMN',@level2name=N'PresentScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamPresentInfo', @level2type=N'COLUMN',@level2name=N'FirstDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamPresentInfo', @level2type=N'COLUMN',@level2name=N'LastDate'
GO
/****** 对象:  Table [dbo].[ShareDetailInfo]    脚本日期: 03/17/2017 10:17:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShareDetailInfo](
	[DetailID] [int] IDENTITY(1,1) NOT NULL,
	[OperUserID] [int] NOT NULL CONSTRAINT [DF_ShareOLDetialInfo_OperUserID]  DEFAULT ((0)),
	[ShareID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[GameID] [int] NOT NULL,
	[Accounts] [nvarchar](31) NOT NULL,
	[CardTypeID] [int] NOT NULL CONSTRAINT [DF_ShareDetailInfo_CardTypeID]  DEFAULT ((0)),
	[SerialID] [nvarchar](15) NOT NULL CONSTRAINT [DF_ShareOLDetialInfo_SerialID]  DEFAULT (''),
	[OrderID] [nvarchar](32) NOT NULL CONSTRAINT [DF_ShareDetialInfo_OrderID]  DEFAULT (''),
	[OrderAmount] [decimal](18, 2) NOT NULL CONSTRAINT [DF_ShareDetialInfo_OrderAmount]  DEFAULT ((0)),
	[DiscountScale] [decimal](18, 2) NOT NULL CONSTRAINT [DF_ShareOLDetialInfo_DiscountScale]  DEFAULT ((0)),
	[PayAmount] [decimal](18, 2) NOT NULL,
	[Currency] [decimal](18, 2) NOT NULL CONSTRAINT [DF_ShareDetailInfo_Currency]  DEFAULT ((0)),
	[BeforeCurrency] [decimal](18, 2) NOT NULL CONSTRAINT [DF_ShareDetailInfo_BeforeCurrency]  DEFAULT ((0)),
	[IPAddress] [nvarchar](15) NOT NULL,
	[ApplyDate] [datetime] NOT NULL CONSTRAINT [DF_ShareOLDetialInfo_ApplyDate]  DEFAULT (getdate()),
	[Gold] [int] NOT NULL DEFAULT ((0)),
	[BeforeGold] [bigint] NOT NULL DEFAULT ((0)),
	[RoomCard] [int] NOT NULL DEFAULT ((0)),
	[BeforeRoomCard] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_ShareOLDetialInfo] PRIMARY KEY CLUSTERED 
(
	[DetailID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'充值标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShareDetailInfo', @level2type=N'COLUMN',@level2name=N'DetailID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShareDetailInfo', @level2type=N'COLUMN',@level2name=N'OperUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'服务标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShareDetailInfo', @level2type=N'COLUMN',@level2name=N'ShareID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShareDetailInfo', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShareDetailInfo', @level2type=N'COLUMN',@level2name=N'GameID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShareDetailInfo', @level2type=N'COLUMN',@level2name=N'Accounts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实卡类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShareDetailInfo', @level2type=N'COLUMN',@level2name=N'CardTypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShareDetailInfo', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShareDetailInfo', @level2type=N'COLUMN',@level2name=N'OrderAmount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'折扣比例' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShareDetailInfo', @level2type=N'COLUMN',@level2name=N'DiscountScale'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实付金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShareDetailInfo', @level2type=N'COLUMN',@level2name=N'PayAmount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'充值货币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShareDetailInfo', @level2type=N'COLUMN',@level2name=N'Currency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'充值地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShareDetailInfo', @level2type=N'COLUMN',@level2name=N'IPAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'充值日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShareDetailInfo', @level2type=N'COLUMN',@level2name=N'ApplyDate'
GO
/****** 对象:  Table [dbo].[RecordCurrencyExchage]    脚本日期: 03/17/2017 10:16:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RecordCurrencyExchage](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[Currency] [decimal](18, 2) NOT NULL CONSTRAINT [DF_RecordCurrencyExchage_Currency]  DEFAULT ((0)),
	[BeforeCurrency] [nchar](10) NOT NULL CONSTRAINT [DF_RecordCurrencyExchage_BeforeCurrency]  DEFAULT ((0)),
	[Score] [bigint] NOT NULL CONSTRAINT [DF_RecordCurrencyExchage_Score]  DEFAULT ((0)),
	[BeforeScore] [bigint] NOT NULL CONSTRAINT [DF_RecordCurrencyExchage_BeforeScore]  DEFAULT ((0)),
	[ClinetIP] [varchar](15) NOT NULL CONSTRAINT [DF_RecordCurrencyExchage_ClinetIP]  DEFAULT (''),
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_RecordCurrencyExchage_CollectDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_RecordCurrencyExchage] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordCurrencyExchage', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'兑换货币数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordCurrencyExchage', @level2type=N'COLUMN',@level2name=N'Currency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'兑换前货币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordCurrencyExchage', @level2type=N'COLUMN',@level2name=N'BeforeCurrency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'兑换金币数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordCurrencyExchage', @level2type=N'COLUMN',@level2name=N'Score'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'兑换前金币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordCurrencyExchage', @level2type=N'COLUMN',@level2name=N'BeforeScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户端IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordCurrencyExchage', @level2type=N'COLUMN',@level2name=N'ClinetIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'兑换时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordCurrencyExchage', @level2type=N'COLUMN',@level2name=N'CollectDate'
GO
/****** 对象:  Table [dbo].[RecordDrawInfo]    脚本日期: 03/17/2017 10:17:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordDrawInfo](
	[DrawID] [int] IDENTITY(1,1) NOT NULL,
	[KindID] [int] NOT NULL,
	[ServerID] [int] NOT NULL,
	[TableID] [int] NOT NULL,
	[UserCount] [int] NOT NULL,
	[AndroidCount] [int] NOT NULL,
	[Waste] [bigint] NOT NULL,
	[Revenue] [bigint] NOT NULL,
	[UserMedal] [int] NOT NULL CONSTRAINT [DF_RecordDrawInfo_UserMedal]  DEFAULT ((0)),
	[StartTime] [datetime] NOT NULL,
	[ConcludeTime] [datetime] NOT NULL,
	[InsertTime] [datetime] NOT NULL CONSTRAINT [DF_RecordDrawInfo_InsertTime]  DEFAULT (getdate()),
	[DrawCourse] [image] NULL,
 CONSTRAINT [PK_RecordDrawInfo_DrawID] PRIMARY KEY CLUSTERED 
(
	[DrawID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'局数标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordDrawInfo', @level2type=N'COLUMN',@level2name=N'DrawID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordDrawInfo', @level2type=N'COLUMN',@level2name=N'KindID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordDrawInfo', @level2type=N'COLUMN',@level2name=N'ServerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'桌子号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordDrawInfo', @level2type=N'COLUMN',@level2name=N'TableID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordDrawInfo', @level2type=N'COLUMN',@level2name=N'UserCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机器数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordDrawInfo', @level2type=N'COLUMN',@level2name=N'AndroidCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'损耗数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordDrawInfo', @level2type=N'COLUMN',@level2name=N'Waste'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'税收数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordDrawInfo', @level2type=N'COLUMN',@level2name=N'Revenue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户奖牌' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordDrawInfo', @level2type=N'COLUMN',@level2name=N'UserMedal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordDrawInfo', @level2type=N'COLUMN',@level2name=N'StartTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordDrawInfo', @level2type=N'COLUMN',@level2name=N'ConcludeTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'插入时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordDrawInfo', @level2type=N'COLUMN',@level2name=N'InsertTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏过程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordDrawInfo', @level2type=N'COLUMN',@level2name=N'DrawCourse'
GO
/****** 对象:  Table [dbo].[UserCurrencyInfo]    脚本日期: 03/17/2017 10:18:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserCurrencyInfo](
	[UserID] [int] NOT NULL,
	[Currency] [decimal](18, 2) NOT NULL CONSTRAINT [DF_UserWealthInfo_Currency]  DEFAULT ((0)),
 CONSTRAINT [PK_UserWealthInfo] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserCurrencyInfo', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户货币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserCurrencyInfo', @level2type=N'COLUMN',@level2name=N'Currency'
GO
/****** 对象:  Table [dbo].[ReturnVBDetailInfo]    脚本日期: 03/17/2017 10:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReturnVBDetailInfo](
	[DetailID] [int] IDENTITY(1,1) NOT NULL,
	[OperStationID] [int] NOT NULL CONSTRAINT [DF_ReturnVBDetailInfo_OperStationID]  DEFAULT ((0)),
	[Rtmd5] [nvarchar](32) NOT NULL,
	[Rtka] [nvarchar](15) NOT NULL,
	[Rtmi] [nvarchar](6) NOT NULL CONSTRAINT [DF_ReturnVBDetailInfo_rtmi]  DEFAULT (''),
	[Rtmz] [int] NOT NULL,
	[Rtlx] [int] NOT NULL,
	[Rtoid] [nvarchar](10) NOT NULL,
	[OrderID] [nvarchar](32) NOT NULL,
	[Rtuserid] [nvarchar](31) NOT NULL,
	[Rtcustom] [nvarchar](128) NOT NULL,
	[Rtflag] [int] NOT NULL,
	[EcryptStr] [nvarchar](1024) NOT NULL,
	[SignMsg] [nvarchar](32) NOT NULL,
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_ReturnVBDetailInfo_CollectDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_ReturnVBDetailInfo] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnVBDetailInfo', @level2type=N'COLUMN',@level2name=N'DetailID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作站点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnVBDetailInfo', @level2type=N'COLUMN',@level2name=N'OperStationID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'V币服务器MD5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnVBDetailInfo', @level2type=N'COLUMN',@level2name=N'Rtmd5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'V币号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnVBDetailInfo', @level2type=N'COLUMN',@level2name=N'Rtka'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'V币密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnVBDetailInfo', @level2type=N'COLUMN',@level2name=N'Rtmi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'面值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnVBDetailInfo', @level2type=N'COLUMN',@level2name=N'Rtmz'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'卡的类型(1:正式卡 2:测试卡 3 :促销卡)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnVBDetailInfo', @level2type=N'COLUMN',@level2name=N'Rtlx'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'盈华讯方服务器端订单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnVBDetailInfo', @level2type=N'COLUMN',@level2name=N'Rtoid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnVBDetailInfo', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商户的用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnVBDetailInfo', @level2type=N'COLUMN',@level2name=N'Rtuserid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商户自己定义数据' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnVBDetailInfo', @level2type=N'COLUMN',@level2name=N'Rtcustom'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返回状态(1:为正常发送回来,2:为补单发送回来)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnVBDetailInfo', @level2type=N'COLUMN',@level2name=N'Rtflag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回传字符' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnVBDetailInfo', @level2type=N'COLUMN',@level2name=N'EcryptStr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签名字符串' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnVBDetailInfo', @level2type=N'COLUMN',@level2name=N'SignMsg'
GO
/****** 对象:  Table [dbo].[SystemStreamInfo]    脚本日期: 03/17/2017 10:18:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemStreamInfo](
	[DateID] [int] NOT NULL,
	[KindID] [int] NOT NULL,
	[ServerID] [int] NOT NULL,
	[LogonCount] [int] NOT NULL CONSTRAINT [DF_TABLE1_LogonCount]  DEFAULT ((0)),
	[RegisterCount] [int] NOT NULL CONSTRAINT [DF_GameEnterInfo_LogonCount1]  DEFAULT ((0)),
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_TABLE1_RecordDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_SystemStreamInfo] PRIMARY KEY CLUSTERED 
(
	[DateID] ASC,
	[KindID] ASC,
	[ServerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemStreamInfo', @level2type=N'COLUMN',@level2name=N'DateID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemStreamInfo', @level2type=N'COLUMN',@level2name=N'KindID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemStreamInfo', @level2type=N'COLUMN',@level2name=N'ServerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'进入数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemStreamInfo', @level2type=N'COLUMN',@level2name=N'LogonCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemStreamInfo', @level2type=N'COLUMN',@level2name=N'RegisterCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录入时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemStreamInfo', @level2type=N'COLUMN',@level2name=N'CollectDate'
GO
/****** 对象:  Table [dbo].[RecordSharePresent]    脚本日期: 03/17/2017 10:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordSharePresent](
	[DateID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[MachineID] [nvarchar](32) NOT NULL CONSTRAINT [DF_RecordSharePresent_MachineID]  DEFAULT (''),
	[PresentScore] [int] NOT NULL CONSTRAINT [DF_RecordSharePresent_PresentScore]  DEFAULT ((0)),
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_RecordSharePresent_CollectDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_RecordSharePresent] PRIMARY KEY CLUSTERED 
(
	[DateID] ASC,
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** 对象:  Table [dbo].[RecordDrawScore]    脚本日期: 03/17/2017 10:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordDrawScore](
	[DrawID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[ChairID] [int] NOT NULL CONSTRAINT [DF_RecordDrawScore_ChairID]  DEFAULT ((0)),
	[Score] [bigint] NOT NULL,
	[Grade] [bigint] NOT NULL,
	[Revenue] [bigint] NOT NULL,
	[UserMedal] [int] NOT NULL CONSTRAINT [DF_RecordDrawScore_UserMedal]  DEFAULT ((0)),
	[PlayTimeCount] [int] NOT NULL CONSTRAINT [DF_RecordDrawScore_PlayTimeCount]  DEFAULT ((0)),
	[DBQuestID] [int] NOT NULL,
	[InoutIndex] [int] NOT NULL,
	[InsertTime] [datetime] NOT NULL CONSTRAINT [DF_RecordDrawScore_InsertTime]  DEFAULT (getdate())
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'局数标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordDrawScore', @level2type=N'COLUMN',@level2name=N'DrawID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordDrawScore', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'椅子号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordDrawScore', @level2type=N'COLUMN',@level2name=N'ChairID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户成绩' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordDrawScore', @level2type=N'COLUMN',@level2name=N'Score'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordDrawScore', @level2type=N'COLUMN',@level2name=N'Grade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'税收数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordDrawScore', @level2type=N'COLUMN',@level2name=N'Revenue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户奖牌' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordDrawScore', @level2type=N'COLUMN',@level2name=N'UserMedal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏时长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordDrawScore', @level2type=N'COLUMN',@level2name=N'PlayTimeCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请求标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordDrawScore', @level2type=N'COLUMN',@level2name=N'DBQuestID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'进出索引' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordDrawScore', @level2type=N'COLUMN',@level2name=N'InoutIndex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'插入时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordDrawScore', @level2type=N'COLUMN',@level2name=N'InsertTime'
GO
/****** 对象:  Table [dbo].[TransferReturnDetailInfo]    脚本日期: 03/17/2017 10:18:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransferReturnDetailInfo](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[SourceUserID] [int] NOT NULL CONSTRAINT [DF_TransferReturnDetailInfo_UserID]  DEFAULT ((0)),
	[TargetUserID] [int] NOT NULL CONSTRAINT [DF_TransferReturnDetailInfo_TargetUserID]  DEFAULT ((0)),
	[SwapScore] [bigint] NOT NULL CONSTRAINT [DF_TransferReturnDetailInfo_SwapScore]  DEFAULT ((0)),
	[Revenue] [bigint] NOT NULL CONSTRAINT [DF_TransferReturnDetailInfo_Revenue]  DEFAULT ((0)),
	[ReturnType] [tinyint] NOT NULL CONSTRAINT [DF_TransferReturnDetailInfo_ReturnType]  DEFAULT ((0)),
	[ReturnPercent] [int] NOT NULL CONSTRAINT [DF_TransferReturnDetailInfo_ReturnPercent]  DEFAULT ((0)),
	[ReturnDescribe] [nvarchar](32) NOT NULL CONSTRAINT [DF_TransferReturnDetailInfo_ReturnDescribe]  DEFAULT (''),
	[ReturnUserMedal] [int] NOT NULL CONSTRAINT [DF_TransferReturnDetailInfo_ReturnUserMedal]  DEFAULT ((0)),
	[ReturnLoveLiness] [int] NOT NULL CONSTRAINT [DF_TransferReturnDetailInfo_ReturnLoveLiness]  DEFAULT ((0)),
	[IsReturn] [bit] NOT NULL CONSTRAINT [DF_TransferReturnDetailInfo_IsReturn]  DEFAULT ((0)),
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_TransferReturnDetailInfo_CollectDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_TransferReturnDetailInfo] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转账用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TransferReturnDetailInfo', @level2type=N'COLUMN',@level2name=N'SourceUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目标用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TransferReturnDetailInfo', @level2type=N'COLUMN',@level2name=N'TargetUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转账金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TransferReturnDetailInfo', @level2type=N'COLUMN',@level2name=N'SwapScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'税收' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TransferReturnDetailInfo', @level2type=N'COLUMN',@level2name=N'Revenue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返利类型（0 元宝 1魅力值）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TransferReturnDetailInfo', @level2type=N'COLUMN',@level2name=N'ReturnType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返利百分比' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TransferReturnDetailInfo', @level2type=N'COLUMN',@level2name=N'ReturnPercent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返利描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TransferReturnDetailInfo', @level2type=N'COLUMN',@level2name=N'ReturnDescribe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返利元宝数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TransferReturnDetailInfo', @level2type=N'COLUMN',@level2name=N'ReturnUserMedal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返利魅力值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TransferReturnDetailInfo', @level2type=N'COLUMN',@level2name=N'ReturnLoveLiness'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否返利到账（0 未到账  1已到账）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TransferReturnDetailInfo', @level2type=N'COLUMN',@level2name=N'IsReturn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'插入时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TransferReturnDetailInfo', @level2type=N'COLUMN',@level2name=N'CollectDate'
GO
/****** 对象:  Table [dbo].[RecordSpreadInfo]    脚本日期: 03/17/2017 10:17:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordSpreadInfo](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[Score] [bigint] NOT NULL,
	[TypeID] [int] NOT NULL CONSTRAINT [DF_RecordSpreadInfo_TypeID]  DEFAULT ((0)),
	[ChildrenID] [int] NOT NULL CONSTRAINT [DF_RecordSpreadInfo_ChildrenID]  DEFAULT ((0)),
	[InsureScore] [bigint] NOT NULL CONSTRAINT [DF_RecordSpreadInfo_InsureScore]  DEFAULT ((0)),
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_RecordSpreadInfo_CollectDate]  DEFAULT (getdate()),
	[CollectNote] [nvarchar](128) NOT NULL CONSTRAINT [DF_RecordSpreadInfo_CollectNote]  DEFAULT (''),
 CONSTRAINT [PK_RecordSpreadInfo] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordSpreadInfo', @level2type=N'COLUMN',@level2name=N'RecordID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordSpreadInfo', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'推广积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordSpreadInfo', @level2type=N'COLUMN',@level2name=N'Score'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordSpreadInfo', @level2type=N'COLUMN',@level2name=N'TypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'子类型标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordSpreadInfo', @level2type=N'COLUMN',@level2name=N'ChildrenID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'银行金币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordSpreadInfo', @level2type=N'COLUMN',@level2name=N'InsureScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收集日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordSpreadInfo', @level2type=N'COLUMN',@level2name=N'CollectNote'
GO
/****** 对象:  Table [dbo].[GlobalLivcard]    脚本日期: 03/17/2017 10:16:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GlobalLivcard](
	[CardTypeID] [int] IDENTITY(1,1) NOT NULL,
	[CardName] [nvarchar](16) NOT NULL CONSTRAINT [DF_GlobalLivcard_CardName]  DEFAULT (''),
	[CardPrice] [decimal](18, 2) NOT NULL CONSTRAINT [DF_GlobalLivcard_CardPrice]  DEFAULT ((0)),
	[Currency] [decimal](18, 2) NOT NULL CONSTRAINT [DF_GlobalLivcard_CardCurrencyPirce]  DEFAULT ((0)),
	[InputDate] [datetime] NOT NULL CONSTRAINT [DF_GlobalLivcard_GoldCount]  DEFAULT (getdate()),
	[Gold] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_GlobalLivcard] PRIMARY KEY CLUSTERED 
(
	[CardTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实卡类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalLivcard', @level2type=N'COLUMN',@level2name=N'CardTypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实卡名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalLivcard', @level2type=N'COLUMN',@level2name=N'CardName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实卡价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalLivcard', @level2type=N'COLUMN',@level2name=N'CardPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赠送平台币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalLivcard', @level2type=N'COLUMN',@level2name=N'Currency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录入日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalLivcard', @level2type=N'COLUMN',@level2name=N'InputDate'
GO
/****** 对象:  Table [dbo].[RecordInsure]    脚本日期: 03/17/2017 10:17:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordInsure](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[KindID] [int] NOT NULL CONSTRAINT [DF_RecordInsure_KindID]  DEFAULT ((0)),
	[ServerID] [int] NOT NULL CONSTRAINT [DF_RecordTreasure_ServerID]  DEFAULT ((0)),
	[SourceUserID] [int] NOT NULL CONSTRAINT [DF_RecordTreasure_SourceUserID]  DEFAULT ((0)),
	[SourceGold] [bigint] NOT NULL CONSTRAINT [DF_RecordTreasure_CurBankSource1_1]  DEFAULT ((0)),
	[SourceBank] [bigint] NOT NULL CONSTRAINT [DF_RecordTreasure_CurBankSource1]  DEFAULT ((0)),
	[TargetUserID] [int] NOT NULL CONSTRAINT [DF_RecordTreasure_TargetUserID]  DEFAULT ((0)),
	[TargetGold] [bigint] NOT NULL CONSTRAINT [DF_RecordTreasure_CurBankTarget1]  DEFAULT ((0)),
	[TargetBank] [bigint] NOT NULL CONSTRAINT [DF_RecordTreasure_SwapScore1]  DEFAULT ((0)),
	[SwapScore] [bigint] NOT NULL CONSTRAINT [DF_RecordTreasure_SwapScore]  DEFAULT ((0)),
	[Revenue] [bigint] NOT NULL CONSTRAINT [DF_RecordTreasure_Revenue]  DEFAULT ((0)),
	[IsGamePlaza] [tinyint] NOT NULL CONSTRAINT [DF_RecordInsure_IsGamePlaza]  DEFAULT ((0)),
	[TradeType] [tinyint] NOT NULL,
	[ClientIP] [nvarchar](15) NOT NULL CONSTRAINT [DF_RecordTreasure_ClientIPSource1]  DEFAULT ('000.000.000.000'),
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_RecordTreasure_CollectDate]  DEFAULT (getdate()),
	[CollectNote] [nvarchar](63) NOT NULL CONSTRAINT [DF_RecordInsure_CollectNote]  DEFAULT (''),
 CONSTRAINT [PK_RecordInsure] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_RecordInsure_CollectDate] ON [dbo].[RecordInsure] 
(
	[CollectDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordInsure', @level2type=N'COLUMN',@level2name=N'KindID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordInsure', @level2type=N'COLUMN',@level2name=N'ServerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'源用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordInsure', @level2type=N'COLUMN',@level2name=N'SourceUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前金币数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordInsure', @level2type=N'COLUMN',@level2name=N'SourceGold'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前银行数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordInsure', @level2type=N'COLUMN',@level2name=N'SourceBank'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目标用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordInsure', @level2type=N'COLUMN',@level2name=N'TargetUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前金币数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordInsure', @level2type=N'COLUMN',@level2name=N'TargetGold'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前银行数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordInsure', @level2type=N'COLUMN',@level2name=N'TargetBank'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流通金币数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordInsure', @level2type=N'COLUMN',@level2name=N'SwapScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'税收数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordInsure', @level2type=N'COLUMN',@level2name=N'Revenue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转账场所(0:大厅,1:网页)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordInsure', @level2type=N'COLUMN',@level2name=N'IsGamePlaza'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交易类别,存 1,取 2,转 3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordInsure', @level2type=N'COLUMN',@level2name=N'TradeType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'连接地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordInsure', @level2type=N'COLUMN',@level2name=N'ClientIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录入时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordInsure', @level2type=N'COLUMN',@level2name=N'CollectDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordInsure', @level2type=N'COLUMN',@level2name=N'CollectNote'
GO
/****** 对象:  Table [dbo].[GameScoreAttribute]    脚本日期: 03/17/2017 10:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameScoreAttribute](
	[UserID] [int] NOT NULL,
	[KindID] [int] NOT NULL,
	[ServerID] [int] NOT NULL,
	[IntegralCount] [bigint] NOT NULL,
	[WinCount] [int] NOT NULL,
	[LostCount] [int] NOT NULL,
	[DrawCount] [int] NOT NULL,
	[FleeCount] [int] NOT NULL,
 CONSTRAINT [PK_GameScoreAttribute] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[KindID] ASC,
	[ServerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameScoreAttribute', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameScoreAttribute', @level2type=N'COLUMN',@level2name=N'KindID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameScoreAttribute', @level2type=N'COLUMN',@level2name=N'ServerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'历史积分(单个房间)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameScoreAttribute', @level2type=N'COLUMN',@level2name=N'IntegralCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'胜局数目(单个房间)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameScoreAttribute', @level2type=N'COLUMN',@level2name=N'WinCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'输局数目(单个房间)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameScoreAttribute', @level2type=N'COLUMN',@level2name=N'LostCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'和局数目(单个房间)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameScoreAttribute', @level2type=N'COLUMN',@level2name=N'DrawCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'逃局数目(单个房间)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameScoreAttribute', @level2type=N'COLUMN',@level2name=N'FleeCount'
GO
/****** 对象:  Table [dbo].[AndroidManager]    脚本日期: 03/17/2017 10:16:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AndroidManager](
	[UserID] [int] NOT NULL,
	[ServerID] [int] NOT NULL,
	[MinPlayDraw] [int] NOT NULL CONSTRAINT [DF_AndroidManager_MinPlayDraw]  DEFAULT ((0)),
	[MaxPlayDraw] [int] NOT NULL CONSTRAINT [DF_AndroidManager_MaxPlayDraw]  DEFAULT ((0)),
	[MinTakeScore] [bigint] NOT NULL CONSTRAINT [DF_AndroidManager_MinTakeScore]  DEFAULT ((0)),
	[MaxTakeScore] [bigint] NOT NULL CONSTRAINT [DF_AndroidManager_MaxTakeScore]  DEFAULT ((0)),
	[MinReposeTime] [int] NOT NULL CONSTRAINT [DF_AndroidManager_MinReposeTime]  DEFAULT ((0)),
	[MaxReposeTime] [int] NOT NULL CONSTRAINT [DF_AndroidManager_MaxReposeTime]  DEFAULT ((0)),
	[ServiceTime] [int] NOT NULL CONSTRAINT [DF_AndroidManager_ServiceTime]  DEFAULT ((0)),
	[ServiceGender] [int] NOT NULL CONSTRAINT [DF_AndroidManager_ServiceGender]  DEFAULT ((0)),
	[Nullity] [tinyint] NOT NULL CONSTRAINT [DF_AndroidManager_Nullity]  DEFAULT ((0)),
	[CreateDate] [datetime] NOT NULL CONSTRAINT [DF_AndroidManager_CreateDate]  DEFAULT (getdate()),
	[AndroidNote] [nvarchar](128) NOT NULL CONSTRAINT [DF_AndroidManager_AndroidNote]  DEFAULT (N''),
 CONSTRAINT [PK_AndroidManager_UserID_ServerID] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[ServerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AndroidManager', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AndroidManager', @level2type=N'COLUMN',@level2name=N'ServerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最少局数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AndroidManager', @level2type=N'COLUMN',@level2name=N'MinPlayDraw'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最大局数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AndroidManager', @level2type=N'COLUMN',@level2name=N'MaxPlayDraw'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最少分数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AndroidManager', @level2type=N'COLUMN',@level2name=N'MinTakeScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最高分数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AndroidManager', @level2type=N'COLUMN',@level2name=N'MaxTakeScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最少休息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AndroidManager', @level2type=N'COLUMN',@level2name=N'MinReposeTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最大休息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AndroidManager', @level2type=N'COLUMN',@level2name=N'MaxReposeTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'服务类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AndroidManager', @level2type=N'COLUMN',@level2name=N'ServiceGender'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'禁止标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AndroidManager', @level2type=N'COLUMN',@level2name=N'Nullity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AndroidManager', @level2type=N'COLUMN',@level2name=N'AndroidNote'
GO
/****** 对象:  Table [dbo].[GlobalAppInfo]    脚本日期: 03/17/2017 10:16:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GlobalAppInfo](
	[AppID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [nvarchar](100) NOT NULL CONSTRAINT [DF_GlobalAppInfo_ProductID]  DEFAULT (''),
	[ProductName] [nvarchar](100) NOT NULL CONSTRAINT [DF_GlobalAppInfo_ProductName]  DEFAULT (''),
	[Description] [nvarchar](100) NOT NULL CONSTRAINT [DF_GlobalAppInfo_Description]  DEFAULT (''),
	[Price] [decimal](18, 2) NOT NULL CONSTRAINT [DF_GlobalAppInfo_Price]  DEFAULT ((0)),
	[AttachCurrency] [decimal](18, 2) NOT NULL CONSTRAINT [DF_GlobalAppInfo_AttachCurrency]  DEFAULT ((0)),
	[TagID] [int] NOT NULL CONSTRAINT [DF_GlobalAppInfo_TagID]  DEFAULT ((0)),
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_GlobalAppInfo_CollectDate]  DEFAULT (getdate()),
	[SortID] [int] NOT NULL DEFAULT ((0)),
	[PresentCurrency] [decimal](18, 2) NOT NULL CONSTRAINT [DF_GlobalAppInfo_PresentCurrency]  DEFAULT ((0)),
 CONSTRAINT [PK_GlobalAppInfo] PRIMARY KEY CLUSTERED 
(
	[AppID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalAppInfo', @level2type=N'COLUMN',@level2name=N'AppID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalAppInfo', @level2type=N'COLUMN',@level2name=N'ProductID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalAppInfo', @level2type=N'COLUMN',@level2name=N'ProductName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalAppInfo', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalAppInfo', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'首充奖励' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalAppInfo', @level2type=N'COLUMN',@level2name=N'AttachCurrency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品标识(1:手机使用,2:PAD使用)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalAppInfo', @level2type=N'COLUMN',@level2name=N'TagID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalAppInfo', @level2type=N'COLUMN',@level2name=N'CollectDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赠送货币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalAppInfo', @level2type=N'COLUMN',@level2name=N'PresentCurrency'
GO
/****** 对象:  Table [dbo].[RecordLogonError]    脚本日期: 03/17/2017 10:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordLogonError](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[KindID] [int] NOT NULL CONSTRAINT [DF_RecordLogonError_KindID]  DEFAULT ((0)),
	[ServerID] [int] NOT NULL CONSTRAINT [DF_RecordLogonError_ServerID]  DEFAULT ((0)),
	[Score] [bigint] NOT NULL CONSTRAINT [DF_RecordLogonError_Score]  DEFAULT ((0)),
	[InsureScore] [bigint] NOT NULL CONSTRAINT [DF_RecordLogonError_InsureScore]  DEFAULT ((0)),
	[LogonIP] [nvarchar](15) NOT NULL CONSTRAINT [DF_RecordLogonError_LogonIP]  DEFAULT (N'000.000.000.000'),
	[LogonMachine] [nvarchar](32) NOT NULL CONSTRAINT [DF_RecordLogonError_MachineID]  DEFAULT (''),
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_RecordLogonError_CollectDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_RecordLogonError] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** 对象:  Table [dbo].[RecordBuyMember]    脚本日期: 03/17/2017 10:16:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RecordBuyMember](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[MemberOrder] [int] NOT NULL,
	[MemberMonths] [int] NOT NULL,
	[MemberPrice] [decimal](18, 2) NOT NULL CONSTRAINT [DF_RecordExchCurrency_Price]  DEFAULT ((0)),
	[Currency] [decimal](18, 2) NOT NULL CONSTRAINT [DF_RecordExchangeLog_ExchangeCurreny]  DEFAULT ((0)),
	[PresentScore] [bigint] NOT NULL CONSTRAINT [DF_RecordExchangeLog_ExchangeScroe]  DEFAULT ((0)),
	[BeforeCurrency] [decimal](18, 2) NOT NULL CONSTRAINT [DF_RecordExchangeLog_BeforeCurreny]  DEFAULT ((0)),
	[BeforeScore] [bigint] NOT NULL CONSTRAINT [DF_RecordExchangeLog_BeforeScore]  DEFAULT ((0)),
	[ClinetIP] [varchar](15) NOT NULL,
	[InputDate] [datetime] NOT NULL CONSTRAINT [DF_RecordExchangeLog_CollectDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_RecordExchange] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBuyMember', @level2type=N'COLUMN',@level2name=N'RecordID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBuyMember', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'购买会员类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBuyMember', @level2type=N'COLUMN',@level2name=N'MemberOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'购买月数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBuyMember', @level2type=N'COLUMN',@level2name=N'MemberMonths'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员每月价格（单位：货币）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBuyMember', @level2type=N'COLUMN',@level2name=N'MemberPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总花费货币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBuyMember', @level2type=N'COLUMN',@level2name=N'Currency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赠送金币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBuyMember', @level2type=N'COLUMN',@level2name=N'PresentScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'购买前货币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBuyMember', @level2type=N'COLUMN',@level2name=N'BeforeCurrency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'购买前金币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBuyMember', @level2type=N'COLUMN',@level2name=N'BeforeScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户端IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBuyMember', @level2type=N'COLUMN',@level2name=N'ClinetIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'兑换时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBuyMember', @level2type=N'COLUMN',@level2name=N'InputDate'
GO
/****** 对象:  Table [dbo].[RecordPresentInfo]    脚本日期: 03/17/2017 10:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordPresentInfo](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[PreScore] [bigint] NOT NULL CONSTRAINT [DF_RecordPresentInfo_PreScore]  DEFAULT ((0)),
	[PreInsureScore] [bigint] NOT NULL CONSTRAINT [DF_RecordPresentInfo_PreInsureScore]  DEFAULT ((0)),
	[PresentScore] [bigint] NOT NULL CONSTRAINT [DF_RecordPresentInfo_PresentScore]  DEFAULT ((0)),
	[TypeID] [int] NOT NULL CONSTRAINT [DF_RecordPresentInfo_TypeID]  DEFAULT ((0)),
	[IPAddress] [nvarchar](15) NOT NULL CONSTRAINT [DF_RecordPresentInfo_IPAddress]  DEFAULT (''),
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_RecordPresentInfo_CollectDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_RecordPresentInfo] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordPresentInfo', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赠送前金币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordPresentInfo', @level2type=N'COLUMN',@level2name=N'PreScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赠送前银行金币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordPresentInfo', @level2type=N'COLUMN',@level2name=N'PreInsureScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赠送金币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordPresentInfo', @level2type=N'COLUMN',@level2name=N'PresentScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型标识 1:注册赠送,2:低保赠送,3:签到赠送,4:元宝兑换,5:魅力兑换,6:在线时长赠送,7:任务奖励' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordPresentInfo', @level2type=N'COLUMN',@level2name=N'TypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordPresentInfo', @level2type=N'COLUMN',@level2name=N'IPAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordPresentInfo', @level2type=N'COLUMN',@level2name=N'CollectDate'
GO
/****** 对象:  Table [dbo].[GameColumnItem]    脚本日期: 03/17/2017 10:16:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameColumnItem](
	[SortID] [int] NOT NULL,
	[ColumnName] [nvarchar](15) NOT NULL,
	[ColumnWidth] [tinyint] NOT NULL,
	[DataDescribe] [tinyint] NOT NULL,
 CONSTRAINT [PK_GameColumnItem_SortID] PRIMARY KEY CLUSTERED 
(
	[SortID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排列标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameColumnItem', @level2type=N'COLUMN',@level2name=N'SortID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'列头名字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameColumnItem', @level2type=N'COLUMN',@level2name=N'ColumnName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'列表宽度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameColumnItem', @level2type=N'COLUMN',@level2name=N'ColumnWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameColumnItem', @level2type=N'COLUMN',@level2name=N'DataDescribe'
GO
/****** 对象:  Table [dbo].[ReturnKQDetailInfo]    脚本日期: 03/17/2017 10:17:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReturnKQDetailInfo](
	[DetailID] [int] IDENTITY(1,1) NOT NULL,
	[MerchantAcctID] [nvarchar](32) NOT NULL,
	[Version] [nvarchar](10) NOT NULL,
	[Language] [int] NOT NULL,
	[SignType] [int] NOT NULL CONSTRAINT [DF_ReturnKQInfo_SignType]  DEFAULT ((1)),
	[PayType] [nvarchar](16) NOT NULL CONSTRAINT [DF_ReturnKQInfo_PayType]  DEFAULT ((0)),
	[BankID] [nvarchar](16) NOT NULL,
	[OrderID] [nvarchar](32) NOT NULL,
	[OrderTime] [datetime] NOT NULL CONSTRAINT [DF_ReturnKQInfo_OrderTime]  DEFAULT (getdate()),
	[OrderAmount] [decimal](18, 2) NOT NULL CONSTRAINT [DF_ReturnKQInfo_OrderAmount]  DEFAULT ((0)),
	[DealID] [nvarchar](32) NOT NULL,
	[BankDealID] [nvarchar](32) NOT NULL,
	[DealTime] [datetime] NOT NULL,
	[PayAmount] [decimal](18, 2) NOT NULL CONSTRAINT [DF_ReturnKQInfo_PayAmount]  DEFAULT ((0)),
	[Fee] [decimal](18, 3) NOT NULL CONSTRAINT [DF_ReturnKQInfo_Fee]  DEFAULT ((0)),
	[PayResult] [nvarchar](32) NOT NULL,
	[ErrCode] [nvarchar](32) NOT NULL CONSTRAINT [DF_ReturnKQDetailInfo_ErrCode]  DEFAULT (''),
	[SignMsg] [nvarchar](32) NOT NULL,
	[Ext1] [nvarchar](128) NOT NULL CONSTRAINT [DF_ReturnKQInfo_Ext1]  DEFAULT (N''),
	[Ext2] [nvarchar](128) NOT NULL CONSTRAINT [DF_ReturnKQInfo_Ext2]  DEFAULT (N''),
	[CardNumber] [nvarchar](30) NOT NULL CONSTRAINT [DF_ReturnKQDetailInfo_CardNumber]  DEFAULT (''),
	[CardPwd] [nvarchar](30) NOT NULL CONSTRAINT [DF_ReturnKQDetailInfo_CardPwd]  DEFAULT (''),
	[BossType] [nvarchar](2) NOT NULL CONSTRAINT [DF_ReturnKQDetailInfo_BossType]  DEFAULT (''),
	[ReceiveBossType] [nvarchar](2) NOT NULL CONSTRAINT [DF_ReturnKQDetailInfo_ReceiveBossType]  DEFAULT (''),
	[ReceiverAcctId] [nvarchar](32) NOT NULL CONSTRAINT [DF_ReturnKQDetailInfo_ReceiverAcctId]  DEFAULT (''),
	[PayDate] [datetime] NOT NULL CONSTRAINT [DF_ReturnKQInfo_PayDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_ReturnKQDetailInfo] PRIMARY KEY CLUSTERED 
(
	[DetailID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnKQDetailInfo', @level2type=N'COLUMN',@level2name=N'DetailID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收款帐号(人民币)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnKQDetailInfo', @level2type=N'COLUMN',@level2name=N'MerchantAcctID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快钱版本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnKQDetailInfo', @level2type=N'COLUMN',@level2name=N'Version'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网关页面语言类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnKQDetailInfo', @level2type=N'COLUMN',@level2name=N'Language'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签名类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnKQDetailInfo', @level2type=N'COLUMN',@level2name=N'SignType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnKQDetailInfo', @level2type=N'COLUMN',@level2name=N'PayType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'银行代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnKQDetailInfo', @level2type=N'COLUMN',@level2name=N'BankID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnKQDetailInfo', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnKQDetailInfo', @level2type=N'COLUMN',@level2name=N'OrderTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单金额(元)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnKQDetailInfo', @level2type=N'COLUMN',@level2name=N'OrderAmount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快钱交易号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnKQDetailInfo', @level2type=N'COLUMN',@level2name=N'DealID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'银行交易号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnKQDetailInfo', @level2type=N'COLUMN',@level2name=N'BankDealID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快钱交易时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnKQDetailInfo', @level2type=N'COLUMN',@level2name=N'DealTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单实际支付金额(元)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnKQDetailInfo', @level2type=N'COLUMN',@level2name=N'PayAmount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快钱收取商户的手续费(元)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnKQDetailInfo', @level2type=N'COLUMN',@level2name=N'Fee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付结果  10:支付成功; 11:支付失败' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnKQDetailInfo', @level2type=N'COLUMN',@level2name=N'PayResult'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'错误代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnKQDetailInfo', @level2type=N'COLUMN',@level2name=N'ErrCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签名字符串' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnKQDetailInfo', @level2type=N'COLUMN',@level2name=N'SignMsg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnKQDetailInfo', @level2type=N'COLUMN',@level2name=N'Ext1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnKQDetailInfo', @level2type=N'COLUMN',@level2name=N'Ext2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付卡号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnKQDetailInfo', @level2type=N'COLUMN',@level2name=N'CardNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付卡密' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnKQDetailInfo', @level2type=N'COLUMN',@level2name=N'CardPwd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付类型(只适合充值卡)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnKQDetailInfo', @level2type=N'COLUMN',@level2name=N'BossType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实际支付类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnKQDetailInfo', @level2type=N'COLUMN',@level2name=N'ReceiveBossType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实际收款账户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnKQDetailInfo', @level2type=N'COLUMN',@level2name=N'ReceiverAcctId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnKQDetailInfo', @level2type=N'COLUMN',@level2name=N'PayDate'
GO
/****** 对象:  Table [dbo].[ReturnDouwanDetailInfo]    脚本日期: 03/17/2017 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReturnDouwanDetailInfo](
	[DetailID] [int] IDENTITY(1,1) NOT NULL,
	[OpenId] [nvarchar](100) NOT NULL,
	[ServerId] [nvarchar](100) NOT NULL CONSTRAINT [DF_ReturnDouwanDetailInfo_ServerId]  DEFAULT (''),
	[ServerName] [nvarchar](100) NOT NULL CONSTRAINT [DF_ReturnDouwanDetailInfo_ServerName]  DEFAULT (''),
	[RoleId] [nvarchar](100) NOT NULL CONSTRAINT [DF_ReturnDouwanDetailInfo_RoleId]  DEFAULT (''),
	[RoleName] [nvarchar](100) NOT NULL CONSTRAINT [DF_ReturnDouwanDetailInfo_RoleName]  DEFAULT (''),
	[OrderId] [nvarchar](100) NOT NULL CONSTRAINT [DF_ReturnDouwanDetailInfo_OrderId]  DEFAULT (''),
	[OrderStatus] [int] NOT NULL CONSTRAINT [DF_ReturnDouwanDetailInfo_OrderStatus]  DEFAULT (''),
	[PayType] [nvarchar](100) NOT NULL CONSTRAINT [DF_ReturnDouwanDetailInfo_PayType]  DEFAULT (''),
	[Amount] [decimal](18, 2) NOT NULL CONSTRAINT [DF_ReturnDouwanDetailInfo_Amount]  DEFAULT ((0)),
	[Remark] [nvarchar](100) NOT NULL CONSTRAINT [DF_ReturnDouwanDetailInfo_Remark]  DEFAULT (''),
	[CallBackInfo] [nvarchar](100) NOT NULL CONSTRAINT [DF_ReturnDouwanDetailInfo_CallBackInfo]  DEFAULT (''),
	[Sign] [nvarchar](32) NOT NULL CONSTRAINT [DF_ReturnDouwanDetailInfo_Sign]  DEFAULT (''),
	[MySign] [nvarchar](32) NOT NULL CONSTRAINT [DF_ReturnDouwanDetailInfo_MySign]  DEFAULT (''),
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_ReturnDouwanDetailInfo_CollectDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_ReturnDouwanDetailInfo] PRIMARY KEY CLUSTERED 
(
	[DetailID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'''''' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnDouwanDetailInfo', @level2type=N'COLUMN',@level2name=N'ServerName'
GO
/****** 对象:  Table [dbo].[TransferReturnStream]    脚本日期: 03/17/2017 10:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransferReturnStream](
	[UserID] [int] NOT NULL CONSTRAINT [DF_TransferReturnStream_UserID]  DEFAULT ((0)),
	[ReturnUserMedal] [bigint] NOT NULL CONSTRAINT [DF_TransferReturnStream_ReturnUserMedal]  DEFAULT ((0)),
	[ReturnLoveLiness] [bigint] NOT NULL CONSTRAINT [DF_TransferReturnStream_ReturnLoveLiness]  DEFAULT ((0)),
	[LastReturnTime] [datetime] NOT NULL CONSTRAINT [DF_TransferReturnStream_LastReturnTime]  DEFAULT (getdate()),
 CONSTRAINT [PK_TransferReturnStream] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TransferReturnStream', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返利元宝总数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TransferReturnStream', @level2type=N'COLUMN',@level2name=N'ReturnUserMedal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返利魅力总数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TransferReturnStream', @level2type=N'COLUMN',@level2name=N'ReturnLoveLiness'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后返利时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TransferReturnStream', @level2type=N'COLUMN',@level2name=N'LastReturnTime'
GO
/****** 对象:  Table [dbo].[GameScoreLocker]    脚本日期: 03/17/2017 10:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameScoreLocker](
	[UserID] [int] NOT NULL,
	[KindID] [int] NOT NULL,
	[ServerID] [int] NOT NULL,
	[EnterID] [int] NOT NULL,
	[EnterIP] [nvarchar](15) NOT NULL CONSTRAINT [DF_GameScoreLocker_EnterIP]  DEFAULT (N''),
	[EnterMachine] [nvarchar](32) NOT NULL CONSTRAINT [DF_GameScoreLocker_RegisterMachine]  DEFAULT (N''),
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_GameScoreLocker_CollectDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_GameScoreLocker_UserID] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户索引' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameScoreLocker', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间索引' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameScoreLocker', @level2type=N'COLUMN',@level2name=N'KindID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameScoreLocker', @level2type=N'COLUMN',@level2name=N'ServerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'进出索引' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameScoreLocker', @level2type=N'COLUMN',@level2name=N'EnterID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'进入地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameScoreLocker', @level2type=N'COLUMN',@level2name=N'EnterIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'进入机器' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameScoreLocker', @level2type=N'COLUMN',@level2name=N'EnterMachine'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录入日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameScoreLocker', @level2type=N'COLUMN',@level2name=N'CollectDate'
GO
/****** 对象:  Table [dbo].[Return91DetailInfo]    脚本日期: 03/17/2017 10:17:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Return91DetailInfo](
	[DetailID] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL,
	[ConsumeStreamId] [nvarchar](50) NOT NULL,
	[OrderID] [nvarchar](32) NOT NULL,
	[Uin] [int] NOT NULL,
	[GoodsID] [nvarchar](50) NOT NULL,
	[GoodsInfo] [nvarchar](100) NOT NULL,
	[GoodsCount] [int] NOT NULL,
	[OriginalMoney] [decimal](18, 2) NOT NULL,
	[OrderMoney] [decimal](18, 2) NOT NULL,
	[Note] [nvarchar](100) NOT NULL,
	[PayStatus] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Sign] [nvarchar](32) NOT NULL,
	[MySign] [nvarchar](32) NOT NULL,
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_Return91DetailInfo_CollectDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_Return91DetailInfo] PRIMARY KEY CLUSTERED 
(
	[DetailID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** 对象:  Table [dbo].[ReturnAppDetailInfo]    脚本日期: 03/17/2017 10:17:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReturnAppDetailInfo](
	[DetailID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL CONSTRAINT [DF_ReturnAppDetailInfo_UserID]  DEFAULT ((0)),
	[OrderID] [nvarchar](32) NOT NULL CONSTRAINT [DF_ReturnAppDetailInfo_OrderID]  DEFAULT (''),
	[PayAmount] [decimal](18, 2) NOT NULL CONSTRAINT [DF_ReturnAppDetailInfo_PayAmount]  DEFAULT ((0)),
	[Status] [int] NOT NULL,
	[quantity] [int] NOT NULL CONSTRAINT [DF_ReturnAppDetailInfo_quantity]  DEFAULT ((0)),
	[product_id] [nvarchar](50) NULL,
	[transaction_id] [nvarchar](50) NULL,
	[purchase_date] [nvarchar](50) NULL,
	[original_transaction_id] [nvarchar](50) NULL,
	[original_purchase_date] [nvarchar](50) NULL,
	[app_item_id] [nvarchar](50) NULL,
	[version_external_identifier] [nvarchar](50) NULL,
	[bid] [nvarchar](50) NULL,
	[bvrs] [nvarchar](50) NULL,
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_ReturnAppDetailInfo_CollectDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_ReturnAppDetailInfo] PRIMARY KEY CLUSTERED 
(
	[DetailID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** 对象:  Table [dbo].[ReturnYPDetailInfo]    脚本日期: 03/17/2017 10:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReturnYPDetailInfo](
	[DetailID] [int] IDENTITY(1,1) NOT NULL,
	[p1_MerId] [nvarchar](22) NOT NULL,
	[r0_Cmd] [nvarchar](40) NOT NULL CONSTRAINT [DF__ReturnYPD__r0_Cm__451F3D2B]  DEFAULT (N'Buy'),
	[r1_Code] [nvarchar](2) NOT NULL CONSTRAINT [DF__ReturnYPD__r1_Co__46136164]  DEFAULT ((1)),
	[r2_TrxId] [nvarchar](100) NOT NULL,
	[r3_Amt] [decimal](18, 2) NOT NULL,
	[r4_Cur] [nvarchar](20) NOT NULL CONSTRAINT [DF__ReturnYPD__r4_Cu__4707859D]  DEFAULT (N'RMB'),
	[r5_Pid] [nvarchar](40) NOT NULL,
	[r6_Order] [nvarchar](64) NOT NULL,
	[r7_Uid] [nvarchar](100) NOT NULL,
	[r8_MP] [nvarchar](400) NOT NULL,
	[r9_BType] [nchar](2) NOT NULL,
	[rb_BankId] [nvarchar](64) NOT NULL,
	[ro_BankOrderId] [nvarchar](128) NOT NULL,
	[rp_PayDate] [nvarchar](64) NOT NULL CONSTRAINT [DF__ReturnYPD__rp_Pa__47FBA9D6]  DEFAULT (getdate()),
	[rq_CardNo] [nvarchar](128) NOT NULL,
	[ru_Trxtime] [nvarchar](64) NOT NULL CONSTRAINT [DF__ReturnYPD__ru_Tr__48EFCE0F]  DEFAULT (getdate()),
	[hmac] [nchar](64) NOT NULL,
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF__ReturnYPD__Colle__49E3F248]  DEFAULT (getdate()),
 CONSTRAINT [PK_ReturnYPDetailInfo] PRIMARY KEY NONCLUSTERED 
(
	[DetailID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnYPDetailInfo', @level2type=N'COLUMN',@level2name=N'DetailID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商户编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnYPDetailInfo', @level2type=N'COLUMN',@level2name=N'p1_MerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'业务类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnYPDetailInfo', @level2type=N'COLUMN',@level2name=N'r0_Cmd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnYPDetailInfo', @level2type=N'COLUMN',@level2name=N'r1_Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'易宝支付交易流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnYPDetailInfo', @level2type=N'COLUMN',@level2name=N'r2_TrxId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnYPDetailInfo', @level2type=N'COLUMN',@level2name=N'r3_Amt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交易币种' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnYPDetailInfo', @level2type=N'COLUMN',@level2name=N'r4_Cur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnYPDetailInfo', @level2type=N'COLUMN',@level2name=N'r5_Pid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商户订单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnYPDetailInfo', @level2type=N'COLUMN',@level2name=N'r6_Order'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'易宝支付会员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnYPDetailInfo', @level2type=N'COLUMN',@level2name=N'r7_Uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' 商户扩展信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnYPDetailInfo', @level2type=N'COLUMN',@level2name=N'r8_MP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交易结果返回类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnYPDetailInfo', @level2type=N'COLUMN',@level2name=N'r9_BType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'银行编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnYPDetailInfo', @level2type=N'COLUMN',@level2name=N'rb_BankId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'银行订单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnYPDetailInfo', @level2type=N'COLUMN',@level2name=N'ro_BankOrderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付成功时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnYPDetailInfo', @level2type=N'COLUMN',@level2name=N'rp_PayDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' 神州行充值卡序列号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnYPDetailInfo', @level2type=N'COLUMN',@level2name=N'rq_CardNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' 交易结果通知时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnYPDetailInfo', @level2type=N'COLUMN',@level2name=N'ru_Trxtime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签名数据' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnYPDetailInfo', @level2type=N'COLUMN',@level2name=N'hmac'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收录时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReturnYPDetailInfo', @level2type=N'COLUMN',@level2name=N'CollectDate'
GO
/****** 对象:  Table [dbo].[StreamPlayPresent]    脚本日期: 03/17/2017 10:17:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StreamPlayPresent](
	[DateID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[PresentCount] [int] NOT NULL CONSTRAINT [DF_StreamPlayPresent_PresentCount]  DEFAULT ((0)),
	[PresentScore] [int] NOT NULL CONSTRAINT [DF_StreamPlayPresent_PlayPresnet]  DEFAULT ((0)),
	[PlayTimeCount] [int] NOT NULL CONSTRAINT [DF_StreamPlayPresent_PlayTimeCount]  DEFAULT ((0)),
	[OnLineTimeCount] [int] NOT NULL CONSTRAINT [DF_StreamPlayPresent_OnLineTimeCount]  DEFAULT ((0)),
	[FirstDate] [datetime] NOT NULL CONSTRAINT [DF_StreamPlayPresent_FirstDate]  DEFAULT (getdate()),
	[LastDate] [datetime] NOT NULL CONSTRAINT [DF_StreamPlayPresent_LastDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_StreamPlayPresent] PRIMARY KEY CLUSTERED 
(
	[DateID] ASC,
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamPlayPresent', @level2type=N'COLUMN',@level2name=N'DateID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamPlayPresent', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赠送次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamPlayPresent', @level2type=N'COLUMN',@level2name=N'PresentCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏泡分总数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamPlayPresent', @level2type=N'COLUMN',@level2name=N'PresentScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏时长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamPlayPresent', @level2type=N'COLUMN',@level2name=N'PlayTimeCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'在线时长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamPlayPresent', @level2type=N'COLUMN',@level2name=N'OnLineTimeCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始统计时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamPlayPresent', @level2type=N'COLUMN',@level2name=N'FirstDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后统计时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamPlayPresent', @level2type=N'COLUMN',@level2name=N'LastDate'
GO
/****** 对象:  Table [dbo].[GlobalShareInfo]    脚本日期: 03/17/2017 10:16:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GlobalShareInfo](
	[ShareID] [int] NOT NULL,
	[ShareName] [nvarchar](32) NOT NULL,
	[ShareAlias] [nvarchar](32) NOT NULL,
	[ShareNote] [nvarchar](32) NOT NULL,
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_GlobalShareInfo_CollectDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_GlobalShareInfo] PRIMARY KEY CLUSTERED 
(
	[ShareID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'服务标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalShareInfo', @level2type=N'COLUMN',@level2name=N'ShareID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'服务名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalShareInfo', @level2type=N'COLUMN',@level2name=N'ShareName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'服务别名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalShareInfo', @level2type=N'COLUMN',@level2name=N'ShareAlias'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'服务说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalShareInfo', @level2type=N'COLUMN',@level2name=N'ShareNote'
GO
/****** 对象:  Table [dbo].[RecordWriteScoreError]    脚本日期: 03/17/2017 10:17:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordWriteScoreError](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[KindID] [int] NOT NULL,
	[ServerID] [int] NOT NULL,
	[UserScore] [bigint] NOT NULL,
	[Score] [bigint] NOT NULL,
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_RecordA_CollectDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_RecordA] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordWriteScoreError', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordWriteScoreError', @level2type=N'COLUMN',@level2name=N'KindID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordWriteScoreError', @level2type=N'COLUMN',@level2name=N'ServerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordWriteScoreError', @level2type=N'COLUMN',@level2name=N'UserScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'输赢积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordWriteScoreError', @level2type=N'COLUMN',@level2name=N'Score'
GO
/****** 对象:  Table [dbo].[GameProperty]    脚本日期: 03/17/2017 10:16:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameProperty](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](31) NOT NULL,
	[Cash] [decimal](18, 2) NOT NULL,
	[Gold] [bigint] NOT NULL,
	[Discount] [smallint] NOT NULL CONSTRAINT [DF_GameProperty_Discount]  DEFAULT ((90)),
	[IssueArea] [smallint] NOT NULL CONSTRAINT [DF_GameProperty_SellArea]  DEFAULT ((3)),
	[ServiceArea] [smallint] NOT NULL,
	[SendLoveLiness] [bigint] NOT NULL,
	[RecvLoveLiness] [bigint] NOT NULL,
	[RegulationsInfo] [nvarchar](255) NOT NULL CONSTRAINT [DF_GameProperty_RegulationsInfo]  DEFAULT (''),
	[Nullity] [tinyint] NOT NULL CONSTRAINT [DF_GameProperty_Nullity]  DEFAULT ((0)),
 CONSTRAINT [PK_GameProperty] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'道具标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameProperty', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'道具名字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameProperty', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'道具价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameProperty', @level2type=N'COLUMN',@level2name=N'Cash'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'道具金币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameProperty', @level2type=N'COLUMN',@level2name=N'Gold'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员折扣' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameProperty', @level2type=N'COLUMN',@level2name=N'Discount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发行范围' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameProperty', @level2type=N'COLUMN',@level2name=N'IssueArea'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用范围' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameProperty', @level2type=N'COLUMN',@level2name=N'ServiceArea'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'增加魅力' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameProperty', @level2type=N'COLUMN',@level2name=N'SendLoveLiness'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'增加魅力' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameProperty', @level2type=N'COLUMN',@level2name=N'RecvLoveLiness'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameProperty', @level2type=N'COLUMN',@level2name=N'RegulationsInfo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'禁止标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameProperty', @level2type=N'COLUMN',@level2name=N'Nullity'
GO
/****** 对象:  Table [dbo].[RecordUserInout]    脚本日期: 03/17/2017 10:17:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordUserInout](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[KindID] [int] NOT NULL,
	[ServerID] [int] NOT NULL,
	[EnterTime] [datetime] NOT NULL CONSTRAINT [DF_RecordUserInout_EnterTime]  DEFAULT (getdate()),
	[EnterScore] [bigint] NOT NULL,
	[EnterGrade] [bigint] NOT NULL CONSTRAINT [DF_RecordUserInout_EnterGold]  DEFAULT ((0)),
	[EnterInsure] [bigint] NOT NULL CONSTRAINT [DF_RecordUserInout_EnterGold1]  DEFAULT ((0)),
	[EnterUserMedal] [int] NOT NULL CONSTRAINT [DF_RecordUserInout_EnterUserMedal]  DEFAULT ((0)),
	[EnterLoveliness] [int] NOT NULL CONSTRAINT [DF_RecordUserInout_EnterLoveliness]  DEFAULT ((0)),
	[EnterMachine] [nvarchar](33) NOT NULL CONSTRAINT [DF_RecordUserInout_EnterMachine]  DEFAULT (N''),
	[EnterClientIP] [nvarchar](15) NOT NULL,
	[LeaveTime] [datetime] NULL,
	[LeaveReason] [int] NULL,
	[LeaveMachine] [nvarchar](32) NULL,
	[LeaveClientIP] [nvarchar](15) NULL,
	[Score] [bigint] NOT NULL CONSTRAINT [DF_RecordUserInout_Score]  DEFAULT ((0)),
	[Grade] [bigint] NOT NULL CONSTRAINT [DF_RecordUserInout_Gold]  DEFAULT ((0)),
	[Insure] [bigint] NOT NULL CONSTRAINT [DF_RecordUserInout_Insure]  DEFAULT ((0)),
	[Revenue] [bigint] NOT NULL CONSTRAINT [DF_RecordUserInout_Revenue]  DEFAULT ((0)),
	[WinCount] [int] NOT NULL CONSTRAINT [DF_RecordUserInout_WinCount]  DEFAULT ((0)),
	[LostCount] [int] NOT NULL CONSTRAINT [DF_RecordUserInout_LostCount]  DEFAULT ((0)),
	[DrawCount] [int] NOT NULL CONSTRAINT [DF_RecordUserInout_DrawCount]  DEFAULT ((0)),
	[FleeCount] [int] NOT NULL CONSTRAINT [DF_RecordUserInout_FleeCount]  DEFAULT ((0)),
	[UserMedal] [int] NOT NULL CONSTRAINT [DF_RecordUserInout_UserMedal]  DEFAULT ((0)),
	[LoveLiness] [int] NOT NULL CONSTRAINT [DF_RecordUserInout_LoveLiness]  DEFAULT ((0)),
	[Experience] [int] NOT NULL CONSTRAINT [DF_RecordUserInout_Experience]  DEFAULT ((0)),
	[PlayTimeCount] [int] NOT NULL CONSTRAINT [DF_RecordUserInout_PlayTimeCount]  DEFAULT ((0)),
	[OnLineTimeCount] [int] NOT NULL CONSTRAINT [DF_RecordUserInout_OnLineTimeCount]  DEFAULT ((0)),
 CONSTRAINT [PK_RecordUserInout_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'索引标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserInout', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserInout', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserInout', @level2type=N'COLUMN',@level2name=N'KindID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserInout', @level2type=N'COLUMN',@level2name=N'ServerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'进入时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserInout', @level2type=N'COLUMN',@level2name=N'EnterTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'进入积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserInout', @level2type=N'COLUMN',@level2name=N'EnterScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'进入成绩' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserInout', @level2type=N'COLUMN',@level2name=N'EnterGrade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'进入银行' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserInout', @level2type=N'COLUMN',@level2name=N'EnterInsure'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'进入奖牌' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserInout', @level2type=N'COLUMN',@level2name=N'EnterUserMedal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'进入魅力' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserInout', @level2type=N'COLUMN',@level2name=N'EnterLoveliness'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'进入机器' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserInout', @level2type=N'COLUMN',@level2name=N'EnterMachine'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserInout', @level2type=N'COLUMN',@level2name=N'EnterClientIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'离开时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserInout', @level2type=N'COLUMN',@level2name=N'LeaveTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'离开原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserInout', @level2type=N'COLUMN',@level2name=N'LeaveReason'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'进入机器' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserInout', @level2type=N'COLUMN',@level2name=N'LeaveMachine'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserInout', @level2type=N'COLUMN',@level2name=N'LeaveClientIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserInout', @level2type=N'COLUMN',@level2name=N'Score'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成绩变更' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserInout', @level2type=N'COLUMN',@level2name=N'Grade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'银行变更' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserInout', @level2type=N'COLUMN',@level2name=N'Insure'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更税收' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserInout', @level2type=N'COLUMN',@level2name=N'Revenue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'胜局变更' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserInout', @level2type=N'COLUMN',@level2name=N'WinCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'输局变更' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserInout', @level2type=N'COLUMN',@level2name=N'LostCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'和局变更' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserInout', @level2type=N'COLUMN',@level2name=N'DrawCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'逃局变更' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserInout', @level2type=N'COLUMN',@level2name=N'FleeCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖牌数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserInout', @level2type=N'COLUMN',@level2name=N'UserMedal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'魅力变更' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserInout', @level2type=N'COLUMN',@level2name=N'LoveLiness'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经验变更' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserInout', @level2type=N'COLUMN',@level2name=N'Experience'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserInout', @level2type=N'COLUMN',@level2name=N'PlayTimeCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'在线时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserInout', @level2type=N'COLUMN',@level2name=N'OnLineTimeCount'
GO
/****** 对象:  Table [dbo].[RecordAgentInfo]    脚本日期: 03/17/2017 10:16:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordAgentInfo](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[DateID] [int] NOT NULL CONSTRAINT [DF_RecordAgentInfo_DateID]  DEFAULT ((0)),
	[UserID] [int] NOT NULL,
	[AgentScale] [decimal](18, 3) NOT NULL CONSTRAINT [DF_RecordAgentInfo_AgentScale]  DEFAULT ((0)),
	[PayBackScale] [decimal](18, 3) NOT NULL CONSTRAINT [DF_RecordAgentInfo_PayBackScale]  DEFAULT ((0)),
	[TypeID] [int] NOT NULL,
	[PayScore] [bigint] NOT NULL CONSTRAINT [DF_RecordAgentInfo_PayScore]  DEFAULT ((0)),
	[Score] [bigint] NOT NULL,
	[ChildrenID] [int] NOT NULL CONSTRAINT [DF_RecordAgentInfo_ChildrenID]  DEFAULT ((0)),
	[InsureScore] [nchar](10) NOT NULL CONSTRAINT [DF_RecordAgentInfo_InsureScore]  DEFAULT ((0)),
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_RecordAgentInfo_CollectDate]  DEFAULT (getdate()),
	[CollectIP] [nvarchar](15) NOT NULL CONSTRAINT [DF_RecordAgentInfo_CollectIP]  DEFAULT (''),
	[CollectNote] [nvarchar](128) NOT NULL CONSTRAINT [DF_RecordAgentInfo_CollectNote]  DEFAULT (''),
 CONSTRAINT [PK_RecordAgentInfo] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_RecordAgentInfo_DateID] ON [dbo].[RecordAgentInfo] 
(
	[DateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_RecordAgentInfo_UserID] ON [dbo].[RecordAgentInfo] 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分成比例' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordAgentInfo', @level2type=N'COLUMN',@level2name=N'AgentScale'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型(1:充值,2:返现,3:结算)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordAgentInfo', @level2type=N'COLUMN',@level2name=N'TypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'充值金币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordAgentInfo', @level2type=N'COLUMN',@level2name=N'PayScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变化金币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordAgentInfo', @level2type=N'COLUMN',@level2name=N'Score'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下级用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordAgentInfo', @level2type=N'COLUMN',@level2name=N'ChildrenID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'银行金币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordAgentInfo', @level2type=N'COLUMN',@level2name=N'InsureScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordAgentInfo', @level2type=N'COLUMN',@level2name=N'CollectDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordAgentInfo', @level2type=N'COLUMN',@level2name=N'CollectIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordAgentInfo', @level2type=N'COLUMN',@level2name=N'CollectNote'
GO
/****** 对象:  Table [dbo].[ConfineMachine]    脚本日期: 03/17/2017 10:16:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfineMachine](
	[MachineSerial] [nvarchar](32) NOT NULL,
	[EnjoinLogon] [bit] NOT NULL CONSTRAINT [DF_MachineConfineRule_EnjoinLogon]  DEFAULT ((0)),
	[EnjoinRegister] [bit] NOT NULL CONSTRAINT [DF_MachineConfineRule_EnjoinRegister]  DEFAULT ((0)),
	[EnjoinOverDate] [datetime] NOT NULL,
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_MachineConfineRule_CollectDate]  DEFAULT (getdate()),
	[CollectNote] [nvarchar](32) NOT NULL CONSTRAINT [DF_MachineConfineRule_CollectNote]  DEFAULT (''),
 CONSTRAINT [PK_MachineConfineRule_MachineSerial] PRIMARY KEY CLUSTERED 
(
	[MachineSerial] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机器序列' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConfineMachine', @level2type=N'COLUMN',@level2name=N'MachineSerial'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'限制登录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConfineMachine', @level2type=N'COLUMN',@level2name=N'EnjoinLogon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'限制注册' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConfineMachine', @level2type=N'COLUMN',@level2name=N'EnjoinRegister'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'过期时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConfineMachine', @level2type=N'COLUMN',@level2name=N'EnjoinOverDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收集日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConfineMachine', @level2type=N'COLUMN',@level2name=N'CollectDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'输入备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConfineMachine', @level2type=N'COLUMN',@level2name=N'CollectNote'
GO
/****** 对象:  Table [dbo].[LotteryItem]    脚本日期: 03/17/2017 10:16:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LotteryItem](
	[ItemIndex] [int] NOT NULL CONSTRAINT [DF_LotteryItem_ItemIndex]  DEFAULT ((0)),
	[ItemType] [int] NOT NULL CONSTRAINT [DF_LotteryItem_ItemType]  DEFAULT ((0)),
	[ItemQuota] [int] NOT NULL CONSTRAINT [DF_LotteryItem_ItemQuota]  DEFAULT ((0)),
	[ItemRate] [int] NOT NULL CONSTRAINT [DF_LotteryItem_ItemRate]  DEFAULT ((0)),
 CONSTRAINT [PK_LotteryItem_1] PRIMARY KEY CLUSTERED 
(
	[ItemIndex] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖项索引' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LotteryItem', @level2type=N'COLUMN',@level2name=N'ItemIndex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖项类型(0游戏币,1游戏豆 2元宝)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LotteryItem', @level2type=N'COLUMN',@level2name=N'ItemType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖项额度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LotteryItem', @level2type=N'COLUMN',@level2name=N'ItemQuota'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中奖概率(百分比)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LotteryItem', @level2type=N'COLUMN',@level2name=N'ItemRate'
GO
/****** 对象:  Table [dbo].[RecordMachinePresent]    脚本日期: 03/17/2017 10:17:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordMachinePresent](
	[DateID] [int] NOT NULL,
	[MachineID] [nvarchar](32) NOT NULL,
	[PresentGold] [bigint] NOT NULL,
	[PresentCount] [int] NOT NULL,
	[UserIDString] [nvarchar](512) NOT NULL,
	[FirstGrantDate] [datetime] NOT NULL CONSTRAINT [DF_RecordMachinePresent_FirstGrantDate]  DEFAULT (getdate()),
	[LastGrantDate] [datetime] NOT NULL CONSTRAINT [DF_RecordMachinePresent_LastGrantDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_RecordMachinePresent] PRIMARY KEY CLUSTERED 
(
	[DateID] ASC,
	[MachineID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordMachinePresent', @level2type=N'COLUMN',@level2name=N'DateID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机器码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordMachinePresent', @level2type=N'COLUMN',@level2name=N'MachineID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赠送金币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordMachinePresent', @level2type=N'COLUMN',@level2name=N'PresentGold'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赠送次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordMachinePresent', @level2type=N'COLUMN',@level2name=N'PresentCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赠送ID串' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordMachinePresent', @level2type=N'COLUMN',@level2name=N'UserIDString'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始赠送时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordMachinePresent', @level2type=N'COLUMN',@level2name=N'FirstGrantDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后赠送时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordMachinePresent', @level2type=N'COLUMN',@level2name=N'LastGrantDate'
GO
/****** 对象:  Table [dbo].[RecordUserRevenue]    脚本日期: 03/17/2017 10:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordUserRevenue](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[DateID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[Revenue] [bigint] NOT NULL,
	[AgentUserID] [int] NOT NULL,
	[AgentScale] [decimal](18, 3) NOT NULL,
	[AgentRevenue] [bigint] NOT NULL,
	[CompanyScale] [decimal](18, 3) NOT NULL,
	[CompanyRevenue] [bigint] NOT NULL,
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_RecordUserRevenue_CollectDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_RecordUserRevenue] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_RecordUserRevenue_AgentUserID] ON [dbo].[RecordUserRevenue] 
(
	[AgentUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_RecordUserRevenue_DateID] ON [dbo].[RecordUserRevenue] 
(
	[DateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserRevenue', @level2type=N'COLUMN',@level2name=N'RecordID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserRevenue', @level2type=N'COLUMN',@level2name=N'DateID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserRevenue', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'税收' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserRevenue', @level2type=N'COLUMN',@level2name=N'Revenue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代理用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserRevenue', @level2type=N'COLUMN',@level2name=N'AgentUserID'
GO
/****** 对象:  Table [dbo].[RecordCurrencyChange]    脚本日期: 03/17/2017 10:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RecordCurrencyChange](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[ChangeCurrency] [decimal](18, 2) NOT NULL,
	[ChangeType] [tinyint] NOT NULL CONSTRAINT [DF_RecordCurrencyChange_ChangeType]  DEFAULT ((0)),
	[BeforeCurrency] [decimal](18, 2) NOT NULL,
	[AfterCurrency] [decimal](18, 2) NOT NULL,
	[ClinetIP] [varchar](15) NOT NULL,
	[InputDate] [datetime] NOT NULL CONSTRAINT [DF_RecordCurrencyChange_InputDate]  DEFAULT (getdate()),
	[Remark] [nvarchar](200) NULL,
 CONSTRAINT [PK_RecordCurrencyChange] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordCurrencyChange', @level2type=N'COLUMN',@level2name=N'RecordID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordCurrencyChange', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货币变更数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordCurrencyChange', @level2type=N'COLUMN',@level2name=N'ChangeCurrency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordCurrencyChange', @level2type=N'COLUMN',@level2name=N'ChangeType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更前货币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordCurrencyChange', @level2type=N'COLUMN',@level2name=N'BeforeCurrency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更后货币数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordCurrencyChange', @level2type=N'COLUMN',@level2name=N'AfterCurrency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordCurrencyChange', @level2type=N'COLUMN',@level2name=N'ClinetIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordCurrencyChange', @level2type=N'COLUMN',@level2name=N'InputDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordCurrencyChange', @level2type=N'COLUMN',@level2name=N'Remark'
GO
/****** 对象:  Table [dbo].[UserRoomCard]    脚本日期: 03/17/2017 10:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoomCard](
	[UserID] [int] NOT NULL CONSTRAINT [DF_UserRoomCard_UserID]  DEFAULT ((0)),
	[RoomCard] [int] NOT NULL CONSTRAINT [DF_UserRoomCard_RoomCard]  DEFAULT ((0)),
 CONSTRAINT [PK_UserRoomCard] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserRoomCard', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房卡数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserRoomCard', @level2type=N'COLUMN',@level2name=N'RoomCard'
GO
/****** 对象:  Table [dbo].[LotteryConfig]    脚本日期: 03/17/2017 10:16:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LotteryConfig](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FreeCount] [int] NOT NULL CONSTRAINT [DF_LotteryConfig_FreeCount]  DEFAULT ((0)),
	[ChargeFee] [int] NOT NULL CONSTRAINT [DF_LotteryConfig_ChargeFee]  DEFAULT ((0)),
	[IsCharge] [tinyint] NOT NULL CONSTRAINT [DF_LotteryConfig_IsCharge]  DEFAULT ((0)),
 CONSTRAINT [PK_LotteryConfig] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'每日免费次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LotteryConfig', @level2type=N'COLUMN',@level2name=N'FreeCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抽奖收费额度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LotteryConfig', @level2type=N'COLUMN',@level2name=N'ChargeFee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许收费(0:不允许,1:允许)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LotteryConfig', @level2type=N'COLUMN',@level2name=N'IsCharge'
GO
/****** 对象:  Table [dbo].[LivcardBuildStream]    脚本日期: 03/17/2017 10:16:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LivcardBuildStream](
	[BuildID] [int] IDENTITY(1,1) NOT NULL,
	[AdminName] [nvarchar](31) NOT NULL CONSTRAINT [DF_LivcardBuildStream_AdminName]  DEFAULT (''),
	[CardTypeID] [int] NOT NULL,
	[CardPrice] [decimal](18, 2) NOT NULL,
	[Currency] [decimal](18, 2) NOT NULL,
	[BuildCount] [int] NOT NULL,
	[BuildAddr] [nvarchar](15) NOT NULL,
	[BuildDate] [datetime] NOT NULL CONSTRAINT [DF_LivcardBuildStream_BuildDate]  DEFAULT (getdate()),
	[DownLoadCount] [int] NOT NULL CONSTRAINT [DF_LivcardBuildStream_DownLoadCount]  DEFAULT ((0)),
	[NoteInfo] [nvarchar](128) NOT NULL CONSTRAINT [DF_LivcardBuildStream_NoteInfo]  DEFAULT (''),
	[BuildCardPacket] [image] NOT NULL CONSTRAINT [DF_LivcardBuildStream_BuildCardPacket]  DEFAULT (''),
	[Gold] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_LivcardBuildStream] PRIMARY KEY CLUSTERED 
(
	[BuildID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生产批次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LivcardBuildStream', @level2type=N'COLUMN',@level2name=N'BuildID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LivcardBuildStream', @level2type=N'COLUMN',@level2name=N'AdminName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'卡类型标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LivcardBuildStream', @level2type=N'COLUMN',@level2name=N'CardTypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'卡价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LivcardBuildStream', @level2type=N'COLUMN',@level2name=N'CardPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'卡金币数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LivcardBuildStream', @level2type=N'COLUMN',@level2name=N'Currency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生产数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LivcardBuildStream', @level2type=N'COLUMN',@level2name=N'BuildCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生产地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LivcardBuildStream', @level2type=N'COLUMN',@level2name=N'BuildAddr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生产日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LivcardBuildStream', @level2type=N'COLUMN',@level2name=N'BuildDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下载次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LivcardBuildStream', @level2type=N'COLUMN',@level2name=N'DownLoadCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LivcardBuildStream', @level2type=N'COLUMN',@level2name=N'NoteInfo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员卡数据' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LivcardBuildStream', @level2type=N'COLUMN',@level2name=N'BuildCardPacket'
GO
/****** 对象:  Table [dbo].[RoomCardConfig]    脚本日期: 03/17/2017 10:17:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomCardConfig](
	[ConfigID] [int] IDENTITY(1,1) NOT NULL,
	[RoomCard] [int] NOT NULL CONSTRAINT [DF_RoomCardConfig_RoomCard]  DEFAULT ((0)),
	[Currency] [decimal](18, 2) NOT NULL CONSTRAINT [DF_RoomCardConfig_Currency]  DEFAULT ((0)),
	[Amount] [decimal](18, 2) NOT NULL CONSTRAINT [DF_RoomCardConfig_Amount]  DEFAULT ((0)),
	[SortID] [int] NOT NULL CONSTRAINT [DF_RoomCardConfig_SortID]  DEFAULT ((0)),
	[Nullity] [tinyint] NOT NULL CONSTRAINT [DF_RoomCardConfig_Nullity]  DEFAULT ((0)),
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_RoomCardConfig_CollectDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_RoomCardConfig] PRIMARY KEY CLUSTERED 
(
	[ConfigID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配置标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoomCardConfig', @level2type=N'COLUMN',@level2name=N'ConfigID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房卡数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoomCardConfig', @level2type=N'COLUMN',@level2name=N'RoomCard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'花费游戏豆' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoomCardConfig', @level2type=N'COLUMN',@level2name=N'Currency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoomCardConfig', @level2type=N'COLUMN',@level2name=N'Amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoomCardConfig', @level2type=N'COLUMN',@level2name=N'SortID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否禁用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoomCardConfig', @level2type=N'COLUMN',@level2name=N'Nullity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配置时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoomCardConfig', @level2type=N'COLUMN',@level2name=N'CollectDate'
GO
/****** 对象:  Table [dbo].[TransferReturnConfig]    脚本日期: 03/17/2017 10:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransferReturnConfig](
	[ConfigID] [int] IDENTITY(1,1) NOT NULL,
	[ReturnType] [tinyint] NOT NULL CONSTRAINT [DF_TransferReturnConfig_ReturnType]  DEFAULT ((0)),
	[ReturnPercent] [int] NOT NULL CONSTRAINT [DF_TransferReturnConfig_ReturnPercent]  DEFAULT ((0)),
	[ConfigDescribe] [nvarchar](32) NOT NULL CONSTRAINT [DF_TransferReturnConfig_ConfigDescribe]  DEFAULT (''),
 CONSTRAINT [PK_TransferReturnConfig] PRIMARY KEY CLUSTERED 
(
	[ConfigID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配置标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TransferReturnConfig', @level2type=N'COLUMN',@level2name=N'ConfigID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返回类型（0、元宝  1、魅力值）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TransferReturnConfig', @level2type=N'COLUMN',@level2name=N'ReturnType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返还百分比（实际值需要除以100）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TransferReturnConfig', @level2type=N'COLUMN',@level2name=N'ReturnPercent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配置描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TransferReturnConfig', @level2type=N'COLUMN',@level2name=N'ConfigDescribe'
GO
/****** 对象:  Table [dbo].[LivcardAssociator]    脚本日期: 03/17/2017 10:16:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LivcardAssociator](
	[CardID] [int] IDENTITY(1,1) NOT NULL,
	[SerialID] [nvarchar](31) NOT NULL,
	[Password] [nchar](32) NOT NULL,
	[BuildID] [int] NOT NULL,
	[CardTypeID] [int] NOT NULL,
	[CardPrice] [decimal](18, 2) NOT NULL,
	[Currency] [decimal](18, 2) NOT NULL,
	[ValidDate] [datetime] NOT NULL CONSTRAINT [DF_LivcardAssociator_ValidDate]  DEFAULT (getdate()+(180)),
	[BuildDate] [datetime] NOT NULL CONSTRAINT [DF_LivcardAssociator_BuildDate]  DEFAULT (getdate()),
	[ApplyDate] [datetime] NULL,
	[UseRange] [int] NOT NULL CONSTRAINT [DF_LivcardAssociator_Range]  DEFAULT ((0)),
	[SalesPerson] [nvarchar](31) NOT NULL CONSTRAINT [DF_LivcardAssociator_SalesPerson]  DEFAULT (''),
	[Nullity] [tinyint] NOT NULL CONSTRAINT [DF_LivcardAssociator_Nullity]  DEFAULT ((0)),
	[Gold] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_LivcardAssociator] PRIMARY KEY CLUSTERED 
(
	[CardID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员卡索引' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LivcardAssociator', @level2type=N'COLUMN',@level2name=N'CardID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'卡号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LivcardAssociator', @level2type=N'COLUMN',@level2name=N'SerialID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LivcardAssociator', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生产批次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LivcardAssociator', @level2type=N'COLUMN',@level2name=N'BuildID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员卡类型标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LivcardAssociator', @level2type=N'COLUMN',@level2name=N'CardTypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员卡价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LivcardAssociator', @level2type=N'COLUMN',@level2name=N'CardPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员卡货币数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LivcardAssociator', @level2type=N'COLUMN',@level2name=N'Currency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LivcardAssociator', @level2type=N'COLUMN',@level2name=N'ValidDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生产日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LivcardAssociator', @level2type=N'COLUMN',@level2name=N'BuildDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LivcardAssociator', @level2type=N'COLUMN',@level2name=N'ApplyDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0:全部用户,1:新注册用户,2:第一次充值用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LivcardAssociator', @level2type=N'COLUMN',@level2name=N'UseRange'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销售商' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LivcardAssociator', @level2type=N'COLUMN',@level2name=N'SalesPerson'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'禁用标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LivcardAssociator', @level2type=N'COLUMN',@level2name=N'Nullity'
GO
/****** 对象:  Table [dbo].[StreamScoreInfo]    脚本日期: 03/17/2017 10:17:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StreamScoreInfo](
	[DateID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[WinCount] [int] NOT NULL CONSTRAINT [DF_StreamScoreInfo_WinCount]  DEFAULT ((0)),
	[LostCount] [int] NOT NULL CONSTRAINT [DF_StreamScoreInfo_LostCount]  DEFAULT ((0)),
	[Revenue] [bigint] NOT NULL CONSTRAINT [DF_StreamScoreInfo_Revenue]  DEFAULT ((0)),
	[PlayTimeCount] [int] NOT NULL CONSTRAINT [DF_StreamScoreInfo_PlayTimeCount_1]  DEFAULT ((0)),
	[OnlineTimeCount] [int] NOT NULL,
	[FirstCollectDate] [datetime] NOT NULL CONSTRAINT [DF_StreamScoreInfo_FirstCollectDate]  DEFAULT (getdate()),
	[LastCollectDate] [datetime] NOT NULL CONSTRAINT [DF_StreamScoreInfo_LastCollectDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_StreamScoreInfo] PRIMARY KEY CLUSTERED 
(
	[DateID] ASC,
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamScoreInfo', @level2type=N'COLUMN',@level2name=N'DateID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamScoreInfo', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'税收' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamScoreInfo', @level2type=N'COLUMN',@level2name=N'Revenue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏时长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamScoreInfo', @level2type=N'COLUMN',@level2name=N'PlayTimeCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'在线时长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamScoreInfo', @level2type=N'COLUMN',@level2name=N'OnlineTimeCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始统计时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamScoreInfo', @level2type=N'COLUMN',@level2name=N'FirstCollectDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后统计时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamScoreInfo', @level2type=N'COLUMN',@level2name=N'LastCollectDate'
GO
/****** 对象:  Table [dbo].[StreamShareInfo]    脚本日期: 03/17/2017 10:18:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StreamShareInfo](
	[DateID] [int] NOT NULL,
	[ShareID] [int] NOT NULL,
	[ShareTotals] [int] NOT NULL CONSTRAINT [DF_StreamShareInfo_ShareTotals]  DEFAULT ((0)),
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_StreamShareInfo_CollectDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_StreamShareInfo] PRIMARY KEY CLUSTERED 
(
	[DateID] ASC,
	[ShareID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[RecordVideoPlayerInfo]    Script Date: 05/19/2017 17:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO

-- 判断要创建的表名是否存在
IF EXISTS  (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[RecordVideoPlayerInfo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
-- 删除表
drop table [dbo].[RecordVideoPlayerInfo]
GO

CREATE TABLE [dbo].[RecordVideoPlayerInfo](
	[UserID] [int] NOT NULL,
	[VideoNumber] [varchar](22) NOT NULL,
	[BuildVideoTime] [datetime] NOT NULL CONSTRAINT [DF_RecordVideoPlayerInfo_BuildVideoTime]  DEFAULT (getdate()) ,
	[Score] [bigint] NOT NULL,
	[PlayBackCode] [int] NOT NULL CONSTRAINT [DF_RecordVideoPlayerInfo_PlayBackCode]  DEFAULT ((0)) ,
	[ChairID] [int] NOT NULL,
	[KindID] [int] NOT NULL,
 CONSTRAINT [PK_RecordVideoPlayerInfo] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[VideoNumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'玩家ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordVideoPlayerInfo', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录像id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordVideoPlayerInfo', @level2type=N'COLUMN',@level2name=N'VideoNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建录像时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordVideoPlayerInfo', @level2type=N'COLUMN',@level2name=N'BuildVideoTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'玩家积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordVideoPlayerInfo', @level2type=N'COLUMN',@level2name=N'Score'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回放码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordVideoPlayerInfo', @level2type=N'COLUMN',@level2name=N'PlayBackCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'座位id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordVideoPlayerInfo', @level2type=N'COLUMN',@level2name=N'ChairID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordVideoPlayerInfo', @level2type=N'COLUMN',@level2name=N'KindID'
GO


/****** Object:  Table [RecordVideoInfo]    Script Date: 2017/6/6 9:31:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

-- 判断要创建的表名是否存在
IF EXISTS  (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[RecordVideoInfo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
-- 删除表
drop table [dbo].[RecordVideoInfo]
GO

CREATE TABLE [RecordVideoInfo](
	[VideoNumber] [varchar](22) NOT NULL,
	[RoomID] [int] NOT NULL,
	[TableId] [int] NOT NULL,
	[VideoData] [varbinary](max) NOT NULL,
	[VideoBuildTime] [datetime] NOT NULL CONSTRAINT [DF_RecordVideoInfo_VideoBuildTime]  DEFAULT (getdate()),
 CONSTRAINT [PK_RecordVideoInfo] PRIMARY KEY CLUSTERED 
(
	[VideoNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'唯一标识ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordVideoInfo', @level2type=N'COLUMN',@level2name=N'VideoNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordVideoInfo', @level2type=N'COLUMN',@level2name=N'RoomID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'桌子ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordVideoInfo', @level2type=N'COLUMN',@level2name=N'TableId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'视频数据' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordVideoInfo', @level2type=N'COLUMN',@level2name=N'VideoData'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立视频时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordVideoInfo', @level2type=N'COLUMN',@level2name=N'VideoBuildTime'
GO
