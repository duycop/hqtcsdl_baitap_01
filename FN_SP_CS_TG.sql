USE [QLBH]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_tongtien_hd]    Script Date: 2026-04-22 6:57:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[fn_tongtien_hd](@maHD varchar(10))
returns money
as
begin
	declare @tongTien money;
	select @tongTien=sum(C.SoLuong*H.DonGia)
		from ChiTietHD C inner join HangHoa H 
		  on H.maHH=C.maHH
		where maHD=@maHD;
	return @tongtien;
end
GO
/****** Object:  Table [dbo].[ChiTietHD]    Script Date: 2026-04-22 6:57:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHD](
	[MaHD] [varchar](10) NOT NULL,
	[MaHH] [varchar](10) NOT NULL,
	[SoLuong] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangHoa]    Script Date: 2026-04-22 6:57:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangHoa](
	[MaHH] [varchar](10) NOT NULL,
	[TenHH] [nvarchar](100) NOT NULL,
	[DonGia] [decimal](18, 2) NULL,
	[SlTon] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 2026-04-22 6:57:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [varchar](10) NOT NULL,
	[NgayLap] [datetime] NULL,
	[TongTien] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD001', N'HH011', 48)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD001', N'HH024', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD001', N'HH046', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD001', N'HH050', 39)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD001', N'HH064', 2)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD001', N'HH072', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD001', N'HH080', 46)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD001', N'HH088', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD001', N'HH095', 23)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD002', N'HH002', 22)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD002', N'HH013', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD002', N'HH025', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD002', N'HH069', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD002', N'HH072', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD002', N'HH083', 26)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD002', N'HH085', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD002', N'HH091', 2)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD002', N'HH093', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD002', N'HH097', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD003', N'HH024', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD003', N'HH029', 13)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD003', N'HH085', 2)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD003', N'HH094', 2)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD004', N'HH029', 17)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD004', N'HH035', 19)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD004', N'HH044', 27)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD004', N'HH075', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD004', N'HH094', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD004', N'HH097', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD005', N'HH001', 2)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD005', N'HH022', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD005', N'HH023', 33)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD005', N'HH057', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD005', N'HH071', 48)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD005', N'HH097', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD006', N'HH009', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD006', N'HH019', 2)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD006', N'HH028', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD006', N'HH044', 27)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD006', N'HH054', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD006', N'HH070', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD007', N'HH017', 26)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD007', N'HH030', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD007', N'HH041', 31)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD008', N'HH010', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD008', N'HH013', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD008', N'HH019', 2)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD008', N'HH021', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD008', N'HH037', 2)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD008', N'HH044', 42)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD008', N'HH057', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD008', N'HH060', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD008', N'HH095', 14)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD009', N'HH003', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD009', N'HH037', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD009', N'HH048', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD009', N'HH051', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD009', N'HH082', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD009', N'HH092', 29)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD009', N'HH099', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD009', N'HH100', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD010', N'HH024', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD010', N'HH030', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD010', N'HH044', 32)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD010', N'HH065', 20)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD010', N'HH082', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD010', N'HH092', 31)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD011', N'HH008', 40)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD011', N'HH020', 38)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD011', N'HH040', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD011', N'HH047', 18)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD011', N'HH052', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD011', N'HH057', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD011', N'HH065', 31)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD011', N'HH074', 10)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD012', N'HH001', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD012', N'HH004', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD012', N'HH017', 37)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD012', N'HH027', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD012', N'HH031', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD012', N'HH043', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD012', N'HH044', 27)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD013', N'HH013', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD013', N'HH017', 15)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD013', N'HH023', 13)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD013', N'HH028', 2)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD013', N'HH081', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD013', N'HH085', 2)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD013', N'HH099', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD014', N'HH021', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD014', N'HH025', 2)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD014', N'HH026', 41)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD014', N'HH029', 12)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD015', N'HH003', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD015', N'HH013', 2)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD015', N'HH044', 40)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD015', N'HH048', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD015', N'HH060', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD015', N'HH084', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD015', N'HH087', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD015', N'HH093', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD016', N'HH016', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD016', N'HH052', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD016', N'HH094', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD017', N'HH016', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD017', N'HH023', 17)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD017', N'HH035', 20)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD017', N'HH044', 14)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD017', N'HH062', 28)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD017', N'HH063', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD017', N'HH093', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD017', N'HH099', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD018', N'HH014', 11)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD018', N'HH036', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD018', N'HH040', 2)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD018', N'HH074', 34)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD018', N'HH082', 2)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD019', N'HH002', 13)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD019', N'HH008', 27)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD019', N'HH012', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD019', N'HH048', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD019', N'HH057', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD019', N'HH060', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD019', N'HH085', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD020', N'HH013', 2)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD020', N'HH032', 24)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD020', N'HH051', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD020', N'HH060', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD020', N'HH096', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD021', N'HH011', 32)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD021', N'HH018', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD021', N'HH030', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD021', N'HH040', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD021', N'HH079', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD021', N'HH089', 43)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD021', N'HH097', 2)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD021', N'HH100', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD022', N'HH011', 44)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD022', N'HH013', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD022', N'HH041', 29)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD022', N'HH072', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD022', N'HH073', 2)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD022', N'HH082', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD023', N'HH008', 33)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD023', N'HH048', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD023', N'HH095', 44)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD023', N'HH097', 2)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD024', N'HH027', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD024', N'HH035', 39)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD024', N'HH060', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD024', N'HH067', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD024', N'HH100', 11)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD025', N'HH012', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD025', N'HH013', 2)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD025', N'HH025', 2)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD025', N'HH031', 2)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD025', N'HH059', 10)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD025', N'HH088', 2)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD025', N'HH092', 42)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD025', N'HH096', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD025', N'HH097', 2)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD025', N'HH099', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD026', N'HH074', 17)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD026', N'HH076', 2)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD026', N'HH082', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD026', N'HH099', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD027', N'HH058', 2)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD027', N'HH076', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD027', N'HH081', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD027', N'HH088', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD027', N'HH100', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD028', N'HH018', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD028', N'HH029', 26)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD028', N'HH037', 2)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD028', N'HH047', 35)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD028', N'HH051', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD028', N'HH061', 2)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD028', N'HH065', 23)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD028', N'HH078', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD028', N'HH095', 19)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD028', N'HH098', 32)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD029', N'HH005', 33)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD029', N'HH028', 2)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD029', N'HH031', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD029', N'HH044', 25)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD029', N'HH071', 18)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD030', N'HH018', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD030', N'HH019', 2)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD030', N'HH075', 1)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [SoLuong]) VALUES (N'HD031', N'HH100', 90)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH001', N'Linh kien 1', CAST(3000000.00 AS Decimal(18, 2)), 101)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH002', N'Van phong pham 2', CAST(92000.00 AS Decimal(18, 2)), 102)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH003', N'May tinh 3', CAST(21000000.00 AS Decimal(18, 2)), 103)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH004', N'Linh kien 4', CAST(1700000.00 AS Decimal(18, 2)), 104)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH005', N'Van phong pham 5', CAST(45000.00 AS Decimal(18, 2)), 105)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH006', N'May tinh 6', CAST(27000000.00 AS Decimal(18, 2)), 106)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH007', N'Linh kien 7', CAST(2700000.00 AS Decimal(18, 2)), 107)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH008', N'Van phong pham 8', CAST(99000.00 AS Decimal(18, 2)), 108)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH009', N'May tinh 9', CAST(13000000.00 AS Decimal(18, 2)), 109)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH010', N'Linh kien 10', CAST(4300000.00 AS Decimal(18, 2)), 110)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH011', N'Van phong pham 11', CAST(25000.00 AS Decimal(18, 2)), 111)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH012', N'May tinh 12', CAST(21000000.00 AS Decimal(18, 2)), 112)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH013', N'Linh kien 13', CAST(900000.00 AS Decimal(18, 2)), 113)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH014', N'Van phong pham 14', CAST(38000.00 AS Decimal(18, 2)), 114)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH015', N'May tinh 15', CAST(29000000.00 AS Decimal(18, 2)), 115)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH016', N'Linh kien 16', CAST(4800000.00 AS Decimal(18, 2)), 116)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH017', N'Van phong pham 17', CAST(28000.00 AS Decimal(18, 2)), 117)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH018', N'May tinh 18', CAST(25000000.00 AS Decimal(18, 2)), 118)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH019', N'Linh kien 19', CAST(3500000.00 AS Decimal(18, 2)), 119)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH020', N'Van phong pham 20', CAST(38000.00 AS Decimal(18, 2)), 120)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH021', N'May tinh 21', CAST(15000000.00 AS Decimal(18, 2)), 121)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH022', N'Linh kien 22', CAST(200000.00 AS Decimal(18, 2)), 122)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH023', N'Van phong pham 23', CAST(5000.00 AS Decimal(18, 2)), 123)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH024', N'May tinh 24', CAST(24000000.00 AS Decimal(18, 2)), 124)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH025', N'Linh kien 25', CAST(1700000.00 AS Decimal(18, 2)), 125)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH026', N'Van phong pham 26', CAST(58000.00 AS Decimal(18, 2)), 126)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH027', N'May tinh 27', CAST(28000000.00 AS Decimal(18, 2)), 127)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH028', N'Linh kien 28', CAST(4200000.00 AS Decimal(18, 2)), 128)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH029', N'Van phong pham 29', CAST(16000.00 AS Decimal(18, 2)), 129)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH030', N'May tinh 30', CAST(24000000.00 AS Decimal(18, 2)), 130)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH031', N'Linh kien 31', CAST(1800000.00 AS Decimal(18, 2)), 131)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH032', N'Van phong pham 32', CAST(41000.00 AS Decimal(18, 2)), 132)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH033', N'May tinh 33', CAST(15000000.00 AS Decimal(18, 2)), 133)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH034', N'Linh kien 34', CAST(2700000.00 AS Decimal(18, 2)), 134)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH035', N'Van phong pham 35', CAST(17000.00 AS Decimal(18, 2)), 135)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH036', N'May tinh 36', CAST(10000000.00 AS Decimal(18, 2)), 136)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH037', N'Linh kien 37', CAST(4700000.00 AS Decimal(18, 2)), 137)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH038', N'Van phong pham 38', CAST(23000.00 AS Decimal(18, 2)), 138)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH039', N'May tinh 39', CAST(29000000.00 AS Decimal(18, 2)), 139)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH040', N'Linh kien 40', CAST(3700000.00 AS Decimal(18, 2)), 140)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH041', N'Van phong pham 41', CAST(16000.00 AS Decimal(18, 2)), 141)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH042', N'May tinh 42', CAST(10000000.00 AS Decimal(18, 2)), 142)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH043', N'Linh kien 43', CAST(500000.00 AS Decimal(18, 2)), 143)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH044', N'Van phong pham 44', CAST(8000.00 AS Decimal(18, 2)), 144)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH045', N'May tinh 45', CAST(17000000.00 AS Decimal(18, 2)), 145)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH046', N'Linh kien 46', CAST(200000.00 AS Decimal(18, 2)), 146)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH047', N'Van phong pham 47', CAST(35000.00 AS Decimal(18, 2)), 147)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH048', N'May tinh 48', CAST(16000000.00 AS Decimal(18, 2)), 148)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH049', N'Linh kien 49', CAST(2500000.00 AS Decimal(18, 2)), 149)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH050', N'Van phong pham 50', CAST(39000.00 AS Decimal(18, 2)), 100)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH051', N'May tinh 51', CAST(24000000.00 AS Decimal(18, 2)), 101)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH052', N'Linh kien 52', CAST(4200000.00 AS Decimal(18, 2)), 102)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH053', N'Van phong pham 53', CAST(67000.00 AS Decimal(18, 2)), 103)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH054', N'May tinh 54', CAST(29000000.00 AS Decimal(18, 2)), 104)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH055', N'Linh kien 55', CAST(3600000.00 AS Decimal(18, 2)), 105)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH056', N'Van phong pham 56', CAST(34000.00 AS Decimal(18, 2)), 106)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH057', N'May tinh 57', CAST(13000000.00 AS Decimal(18, 2)), 107)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH058', N'Linh kien 58', CAST(800000.00 AS Decimal(18, 2)), 108)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH059', N'Van phong pham 59', CAST(35000.00 AS Decimal(18, 2)), 109)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH060', N'May tinh 60', CAST(18000000.00 AS Decimal(18, 2)), 110)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH061', N'Linh kien 61', CAST(1300000.00 AS Decimal(18, 2)), 111)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH062', N'Van phong pham 62', CAST(6000.00 AS Decimal(18, 2)), 112)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH063', N'May tinh 63', CAST(15000000.00 AS Decimal(18, 2)), 113)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH064', N'Linh kien 64', CAST(4500000.00 AS Decimal(18, 2)), 114)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH065', N'Van phong pham 65', CAST(62000.00 AS Decimal(18, 2)), 115)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH066', N'May tinh 66', CAST(11000000.00 AS Decimal(18, 2)), 116)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH067', N'Linh kien 67', CAST(3700000.00 AS Decimal(18, 2)), 117)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH068', N'Van phong pham 68', CAST(11000.00 AS Decimal(18, 2)), 118)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH069', N'May tinh 69', CAST(15000000.00 AS Decimal(18, 2)), 119)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH070', N'Linh kien 70', CAST(3900000.00 AS Decimal(18, 2)), 120)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH071', N'Van phong pham 71', CAST(34000.00 AS Decimal(18, 2)), 121)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH072', N'May tinh 72', CAST(10000000.00 AS Decimal(18, 2)), 122)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH073', N'Linh kien 73', CAST(3700000.00 AS Decimal(18, 2)), 123)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH074', N'Van phong pham 74', CAST(6000.00 AS Decimal(18, 2)), 124)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH075', N'May tinh 75', CAST(12000000.00 AS Decimal(18, 2)), 125)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH076', N'Linh kien 76', CAST(2800000.00 AS Decimal(18, 2)), 126)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH077', N'Van phong pham 77', CAST(35000.00 AS Decimal(18, 2)), 127)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH078', N'May tinh 78', CAST(29000000.00 AS Decimal(18, 2)), 128)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH079', N'Linh kien 79', CAST(600000.00 AS Decimal(18, 2)), 129)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH080', N'Van phong pham 80', CAST(71000.00 AS Decimal(18, 2)), 130)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH081', N'May tinh 81', CAST(22000000.00 AS Decimal(18, 2)), 131)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH082', N'Linh kien 82', CAST(500000.00 AS Decimal(18, 2)), 132)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH083', N'Van phong pham 83', CAST(22000.00 AS Decimal(18, 2)), 133)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH084', N'May tinh 84', CAST(18000000.00 AS Decimal(18, 2)), 134)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH085', N'Linh kien 85', CAST(4500000.00 AS Decimal(18, 2)), 135)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH086', N'Van phong pham 86', CAST(18000.00 AS Decimal(18, 2)), 136)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH087', N'May tinh 87', CAST(17000000.00 AS Decimal(18, 2)), 137)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH088', N'Linh kien 88', CAST(3100000.00 AS Decimal(18, 2)), 138)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH089', N'Van phong pham 89', CAST(5000.00 AS Decimal(18, 2)), 139)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH090', N'May tinh 90', CAST(21000000.00 AS Decimal(18, 2)), 140)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH091', N'Linh kien 91', CAST(1400000.00 AS Decimal(18, 2)), 141)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH092', N'Van phong pham 92', CAST(42000.00 AS Decimal(18, 2)), 142)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH093', N'May tinh 93', CAST(22000000.00 AS Decimal(18, 2)), 143)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH094', N'Linh kien 94', CAST(2700000.00 AS Decimal(18, 2)), 144)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH095', N'Van phong pham 95', CAST(85000.00 AS Decimal(18, 2)), 145)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH096', N'May tinh 96', CAST(24000000.00 AS Decimal(18, 2)), 146)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH097', N'Linh kien 97', CAST(300000.00 AS Decimal(18, 2)), 147)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH098', N'Van phong pham 98', CAST(88000.00 AS Decimal(18, 2)), 148)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH099', N'May tinh 99', CAST(21000000.00 AS Decimal(18, 2)), 149)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonGia], [SlTon]) VALUES (N'HH100', N'Linh kien 100', CAST(1000000.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien]) VALUES (N'HD001', CAST(N'2026-03-06T09:01:35.000' AS DateTime), CAST(54242000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien]) VALUES (N'HD002', CAST(N'2026-03-10T07:50:58.000' AS DateTime), CAST(59796000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien]) VALUES (N'HD003', CAST(N'2026-03-20T10:59:12.000' AS DateTime), CAST(38608000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien]) VALUES (N'HD004', CAST(N'2026-03-26T05:28:26.000' AS DateTime), CAST(15811000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien]) VALUES (N'HD005', CAST(N'2026-04-21T11:33:22.000' AS DateTime), CAST(21297000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien]) VALUES (N'HD006', CAST(N'2026-03-18T11:21:36.000' AS DateTime), CAST(57316000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien]) VALUES (N'HD007', CAST(N'2026-03-09T05:16:03.000' AS DateTime), CAST(25224000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien]) VALUES (N'HD008', CAST(N'2026-03-30T14:46:55.000' AS DateTime), CAST(69126000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien]) VALUES (N'HD009', CAST(N'2026-03-02T10:24:39.000' AS DateTime), CAST(89418000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien]) VALUES (N'HD010', CAST(N'2026-03-01T12:03:52.000' AS DateTime), CAST(51298000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien]) VALUES (N'HD011', CAST(N'2026-03-17T06:30:28.000' AS DateTime), CAST(28916000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien]) VALUES (N'HD012', CAST(N'2026-03-08T06:45:12.000' AS DateTime), CAST(36252000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien]) VALUES (N'HD013', CAST(N'2026-03-20T02:25:05.000' AS DateTime), CAST(61785000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien]) VALUES (N'HD014', CAST(N'2026-04-21T01:45:12.000' AS DateTime), CAST(20970000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien]) VALUES (N'HD015', CAST(N'2026-04-29T11:17:22.000' AS DateTime), CAST(114120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien]) VALUES (N'HD016', CAST(N'2026-04-25T18:24:04.000' AS DateTime), CAST(11700000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien]) VALUES (N'HD017', CAST(N'2026-03-21T13:18:55.000' AS DateTime), CAST(63505000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien]) VALUES (N'HD018', CAST(N'2026-04-11T08:37:34.000' AS DateTime), CAST(19022000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien]) VALUES (N'HD019', CAST(N'2026-04-12T06:49:34.000' AS DateTime), CAST(76369000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien]) VALUES (N'HD020', CAST(N'2026-04-10T11:06:05.000' AS DateTime), CAST(68784000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien]) VALUES (N'HD021', CAST(N'2026-03-12T23:24:59.000' AS DateTime), CAST(55915000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien]) VALUES (N'HD022', CAST(N'2026-04-26T18:19:49.000' AS DateTime), CAST(20364000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien]) VALUES (N'HD023', CAST(N'2026-03-13T23:47:39.000' AS DateTime), CAST(23607000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien]) VALUES (N'HD024', CAST(N'2026-04-14T03:30:10.000' AS DateTime), CAST(61363000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien]) VALUES (N'HD025', CAST(N'2026-04-27T23:04:04.000' AS DateTime), CAST(83714000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien]) VALUES (N'HD026', CAST(N'2026-03-26T04:32:19.000' AS DateTime), CAST(27202000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien]) VALUES (N'HD027', CAST(N'2026-03-01T17:11:39.000' AS DateTime), CAST(30500000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien]) VALUES (N'HD028', CAST(N'2026-04-21T09:34:43.000' AS DateTime), CAST(97498000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien]) VALUES (N'HD029', CAST(N'2026-03-02T17:24:59.000' AS DateTime), CAST(12497000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien]) VALUES (N'HD030', CAST(N'2026-04-01T14:50:51.000' AS DateTime), CAST(44000000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien]) VALUES (N'HD031', CAST(N'2026-04-22T17:16:24.400' AS DateTime), CAST(90000000.00 AS Decimal(18, 2)))
GO
ALTER TABLE [dbo].[HangHoa] ADD  DEFAULT ((0)) FOR [DonGia]
GO
ALTER TABLE [dbo].[HangHoa] ADD  DEFAULT ((0)) FOR [SlTon]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (getdate()) FOR [NgayLap]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT ((0)) FOR [TongTien]
GO
ALTER TABLE [dbo].[ChiTietHD]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietHD]  WITH CHECK ADD FOREIGN KEY([MaHH])
REFERENCES [dbo].[HangHoa] ([MaHH])
GO
ALTER TABLE [dbo].[HangHoa]  WITH CHECK ADD  CONSTRAINT [CK_HangHoa_SLTON_DUONG] CHECK  (([SLTon]>=(0)))
GO
ALTER TABLE [dbo].[HangHoa] CHECK CONSTRAINT [CK_HangHoa_SLTON_DUONG]
GO
/****** Object:  StoredProcedure [dbo].[sp_tinh_tien]    Script Date: 2026-04-22 6:57:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_tinh_tien]
as
begin
declare c cursor for 
	select MaHD,NgayLap from HoaDon
	where DATEPART(weekday,ngaylap) in (1,7);
open c;
declare @MaHD varchar(10),@NgayLap datetime;
fetch next from c into @MaHD,@NgayLap;
while @@FETCH_STATUS=0
begin
	
	declare @tongTien money=dbo.fn_tongtien_hd(@maHD);
	if(@tongTien>40e6)
	begin
		--cap nhat tong tien vao hoa don neu tong>5tr
		update HoaDon set TongTien=@tongTien
		where maHD=@maHD;
	end
	
	fetch next from c into @MaHD,@NgayLap;
end
close c;
deallocate c;
end;
GO
/****** Object:  Trigger [dbo].[TG_SLTON]    Script Date: 2026-04-22 6:57:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Do Duy Cop
-- Create date: 22-04-2026
-- Description: Tự động cập nhật số lượng tồn trong bảng HangHoa
-- khi có thay đổi (Thêm, Sửa, Xóa) tại ChiTietHD
-- =============================================
CREATE TRIGGER [dbo].[TG_SLTON]
   ON [dbo].[ChiTietHD]
   AFTER INSERT, DELETE, UPDATE
AS 
BEGIN
    SET NOCOUNT ON;

    -- 1. Hoàn lại số lượng tồn từ các bản ghi bị xóa hoặc bản ghi cũ (trước khi update)
    -- Cộng thêm số lượng đã "tạm lấy ra" từ bảng HangHoa trước đó
    IF EXISTS (SELECT * FROM Deleted)
    BEGIN
        UPDATE HangHoa
        SET SlTon = SlTon + d.SoLuong
        FROM HangHoa hh
        JOIN Deleted d ON hh.MaHH = d.MaHH;
    END

    -- 2. Trừ bớt số lượng tồn từ các bản ghi mới chèn vào hoặc bản ghi mới (sau khi update)
    -- Trừ đi số lượng thực tế vừa bán
    IF EXISTS (SELECT * FROM Inserted)
    BEGIN
        UPDATE HangHoa
        SET SlTon = SlTon - i.SoLuong
        FROM HangHoa hh
        JOIN Inserted i ON hh.MaHH = i.MaHH;
    END

    -- 3. CẬP NHẬT TỔNG TIỀN TRONG BẢNG HOADON
    -- Lấy danh sách các MaHD có sự thay đổi (dùng UNION để loại bỏ trùng lặp)
	-- tận dụng hàm fn_tongtien_hd đã có trước đó
    UPDATE HoaDon
    SET TongTien = dbo.fn_tongtien_hd(HoaDon.MaHD)
    WHERE MaHD IN (
        SELECT MaHD FROM Inserted
        UNION
        SELECT MaHD FROM Deleted
    );
END
GO
ALTER TABLE [dbo].[ChiTietHD] ENABLE TRIGGER [TG_SLTON]
GO
--
