USE [master]
GO
/****** Object:  Database [WebsiteDatBan]    Script Date: 6/17/2021 12:47:49 PM ******/
CREATE DATABASE [WebsiteDatBan]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebsiteDatBan', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.TONYLOC\MSSQL\DATA\WebsiteDatBan.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WebsiteDatBan_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.TONYLOC\MSSQL\DATA\WebsiteDatBan_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WebsiteDatBan] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebsiteDatBan].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebsiteDatBan] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebsiteDatBan] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebsiteDatBan] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebsiteDatBan] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebsiteDatBan] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebsiteDatBan] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WebsiteDatBan] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebsiteDatBan] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebsiteDatBan] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebsiteDatBan] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebsiteDatBan] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebsiteDatBan] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebsiteDatBan] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebsiteDatBan] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebsiteDatBan] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WebsiteDatBan] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebsiteDatBan] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebsiteDatBan] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebsiteDatBan] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebsiteDatBan] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebsiteDatBan] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebsiteDatBan] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebsiteDatBan] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebsiteDatBan] SET  MULTI_USER 
GO
ALTER DATABASE [WebsiteDatBan] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebsiteDatBan] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebsiteDatBan] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebsiteDatBan] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WebsiteDatBan] SET DELAYED_DURABILITY = DISABLED 
GO
USE [WebsiteDatBan]
GO
/****** Object:  Table [dbo].[Ban]    Script Date: 6/17/2021 12:47:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ban](
	[maBan] [int] IDENTITY(1,1) NOT NULL,
	[soChoNgoi] [int] NOT NULL,
	[tenBan] [nvarchar](255) NULL,
	[trangThai] [nvarchar](255) NULL,
	[maKhuVuc] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietDatBan]    Script Date: 6/17/2021 12:47:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDatBan](
	[maBan] [int] NOT NULL,
	[maPhieuDatBan] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maBan] ASC,
	[maPhieuDatBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietDatMonAn]    Script Date: 6/17/2021 12:47:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDatMonAn](
	[maMonAn] [int] NOT NULL,
	[maPhieuDatBan] [int] NOT NULL,
	[soLuong] [int] NOT NULL,
	[thanhtien] [numeric](19, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[maMonAn] ASC,
	[maPhieuDatBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hibernate_sequence]    Script Date: 6/17/2021 12:47:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hibernate_sequence](
	[next_val] [numeric](19, 0) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 6/17/2021 12:47:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[maHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[ngayLap] [datetime] NULL,
	[tongTien] [numeric](19, 0) NOT NULL,
	[trangThai] [nvarchar](255) NULL,
	[maNguoiDung] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhuVuc]    Script Date: 6/17/2021 12:47:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuVuc](
	[maKhuVuc] [int] IDENTITY(1,1) NOT NULL,
	[tenKhuVuc] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[maKhuVuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiMonAn]    Script Date: 6/17/2021 12:47:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiMonAn](
	[maLoaiMonAn] [int] NOT NULL,
	[tenLoaiMonAn] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[maLoaiMonAn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MonAn]    Script Date: 6/17/2021 12:47:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MonAn](
	[maMonAn] [int] IDENTITY(1,1) NOT NULL,
	[donGia] [numeric](19, 0) NOT NULL,
	[donViTinh] [nvarchar](255) NULL,
	[tenMonAn] [nvarchar](255) NULL,
	[trangThai] [nvarchar](255) NULL,
	[urlHinhAnh] [varchar](255) NULL,
	[maLoaiMonAn] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maMonAn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 6/17/2021 12:47:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[maNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[diaChi] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[hoTen] [nvarchar](255) NULL,
	[soDT] [nvarchar](255) NULL,
	[maTaiKhoan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuDatBan]    Script Date: 6/17/2021 12:47:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhieuDatBan](
	[maPhieuDatBan] [int] IDENTITY(1,1) NOT NULL,
	[ghiChu] [nvarchar](255) NULL,
	[loaiTiec] [varchar](255) NULL,
	[soNguoi] [int] NOT NULL,
	[maHoaDon] [int] NULL,
	[maKhachHang] [int] NULL,
	[maThoiGianDatBan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maPhieuDatBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 6/17/2021 12:47:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[maTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[loaiTaiKhoan] [nvarchar](255) NULL,
	[matKhau] [nvarchar](255) NULL,
	[tenDangNhap] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[maTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThoiGianDatBan]    Script Date: 6/17/2021 12:47:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThoiGianDatBan](
	[mathoiGian] [int] IDENTITY(1,1) NOT NULL,
	[gioDat] [nvarchar](255) NULL,
	[ngayDat] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[mathoiGian] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Ban]  WITH CHECK ADD  CONSTRAINT [FKew68dei75ppysnqrleny4ao6b] FOREIGN KEY([maKhuVuc])
REFERENCES [dbo].[KhuVuc] ([maKhuVuc])
GO
ALTER TABLE [dbo].[Ban] CHECK CONSTRAINT [FKew68dei75ppysnqrleny4ao6b]
GO
ALTER TABLE [dbo].[ChiTietDatBan]  WITH CHECK ADD  CONSTRAINT [FK4ny02l8inv3dxa2kx9n6ylssj] FOREIGN KEY([maPhieuDatBan])
REFERENCES [dbo].[PhieuDatBan] ([maPhieuDatBan])
GO
ALTER TABLE [dbo].[ChiTietDatBan] CHECK CONSTRAINT [FK4ny02l8inv3dxa2kx9n6ylssj]
GO
ALTER TABLE [dbo].[ChiTietDatBan]  WITH CHECK ADD  CONSTRAINT [FKitx3b6uwgga5jdwsofngroet] FOREIGN KEY([maBan])
REFERENCES [dbo].[Ban] ([maBan])
GO
ALTER TABLE [dbo].[ChiTietDatBan] CHECK CONSTRAINT [FKitx3b6uwgga5jdwsofngroet]
GO
ALTER TABLE [dbo].[ChiTietDatMonAn]  WITH CHECK ADD  CONSTRAINT [FK5dfn82pdhmovkf6ol9a5v14wg] FOREIGN KEY([maMonAn])
REFERENCES [dbo].[MonAn] ([maMonAn])
GO
ALTER TABLE [dbo].[ChiTietDatMonAn] CHECK CONSTRAINT [FK5dfn82pdhmovkf6ol9a5v14wg]
GO
ALTER TABLE [dbo].[ChiTietDatMonAn]  WITH CHECK ADD  CONSTRAINT [FK5freaeglur5leqsc26briag1] FOREIGN KEY([maPhieuDatBan])
REFERENCES [dbo].[PhieuDatBan] ([maPhieuDatBan])
GO
ALTER TABLE [dbo].[ChiTietDatMonAn] CHECK CONSTRAINT [FK5freaeglur5leqsc26briag1]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FKcwuixoyu8e1u2bq3xyn3smfc1] FOREIGN KEY([maNguoiDung])
REFERENCES [dbo].[NguoiDung] ([maNguoiDung])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FKcwuixoyu8e1u2bq3xyn3smfc1]
GO
ALTER TABLE [dbo].[MonAn]  WITH CHECK ADD  CONSTRAINT [FKhi7ok7esnj02hn7m8v88nrh4h] FOREIGN KEY([maLoaiMonAn])
REFERENCES [dbo].[LoaiMonAn] ([maLoaiMonAn])
GO
ALTER TABLE [dbo].[MonAn] CHECK CONSTRAINT [FKhi7ok7esnj02hn7m8v88nrh4h]
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK11456ttt1tv3bhgi7fub7snuy] FOREIGN KEY([maTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([maTaiKhoan])
GO
ALTER TABLE [dbo].[NguoiDung] CHECK CONSTRAINT [FK11456ttt1tv3bhgi7fub7snuy]
GO
ALTER TABLE [dbo].[PhieuDatBan]  WITH CHECK ADD  CONSTRAINT [FKou88wnr483m9ysi8919u3lwdn] FOREIGN KEY([maThoiGianDatBan])
REFERENCES [dbo].[ThoiGianDatBan] ([mathoiGian])
GO
ALTER TABLE [dbo].[PhieuDatBan] CHECK CONSTRAINT [FKou88wnr483m9ysi8919u3lwdn]
GO
ALTER TABLE [dbo].[PhieuDatBan]  WITH CHECK ADD  CONSTRAINT [FKsscn1vkr04oy7um69xj86mefy] FOREIGN KEY([maKhachHang])
REFERENCES [dbo].[NguoiDung] ([maNguoiDung])
GO
ALTER TABLE [dbo].[PhieuDatBan] CHECK CONSTRAINT [FKsscn1vkr04oy7um69xj86mefy]
GO
ALTER TABLE [dbo].[PhieuDatBan]  WITH CHECK ADD  CONSTRAINT [FKtr3nf43hoke4vxak27nmovbso] FOREIGN KEY([maHoaDon])
REFERENCES [dbo].[HoaDon] ([maHoaDon])
GO
ALTER TABLE [dbo].[PhieuDatBan] CHECK CONSTRAINT [FKtr3nf43hoke4vxak27nmovbso]
GO
USE [master]
GO
ALTER DATABASE [WebsiteDatBan] SET  READ_WRITE 
GO
