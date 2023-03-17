USE [master]
GO
/****** Object:  Database [bangiay]    Script Date: 3/8/2023 7:43:32 PM ******/
CREATE DATABASE [bangiay]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bangiay', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\bangiay.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'bangiay_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\bangiay_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [bangiay] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bangiay].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bangiay] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bangiay] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bangiay] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bangiay] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bangiay] SET ARITHABORT OFF 
GO
ALTER DATABASE [bangiay] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [bangiay] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bangiay] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bangiay] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bangiay] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bangiay] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bangiay] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bangiay] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bangiay] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bangiay] SET  ENABLE_BROKER 
GO
ALTER DATABASE [bangiay] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bangiay] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bangiay] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bangiay] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bangiay] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bangiay] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [bangiay] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bangiay] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [bangiay] SET  MULTI_USER 
GO
ALTER DATABASE [bangiay] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bangiay] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bangiay] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bangiay] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [bangiay] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [bangiay] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [bangiay] SET QUERY_STORE = OFF
GO
USE [bangiay]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3/8/2023 7:43:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChatLieu]    Script Date: 3/8/2023 7:43:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatLieu](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](50) NULL,
	[Ten] [nvarchar](50) NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK_ChatLieu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietSP]    Script Date: 3/8/2023 7:43:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietSP](
	[Id] [uniqueidentifier] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[Mavach] [nvarchar](100) NULL,
	[Anh] [varchar](100) NULL,
	[Ma] [varchar](100) NULL,
	[GiaNhap] [float] NOT NULL,
	[GiaBan] [float] NOT NULL,
	[TrangThai] [int] NOT NULL,
	[Mota] [nvarchar](100) NULL,
	[IdchatLieu] [uniqueidentifier] NOT NULL,
	[IdNsx] [uniqueidentifier] NOT NULL,
	[IdDongSP] [uniqueidentifier] NOT NULL,
	[IdMauSac] [uniqueidentifier] NOT NULL,
	[IdSp] [uniqueidentifier] NOT NULL,
	[IdSize] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_ChiTietSP] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 3/8/2023 7:43:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](50) NULL,
	[Ten] [nvarchar](50) NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DongSP]    Script Date: 3/8/2023 7:43:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DongSP](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](30) NULL,
	[Ten] [nvarchar](100) NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK_DongSP] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 3/8/2023 7:43:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](50) NULL,
	[NgayTao] [varchar](50) NULL,
	[NgayThanhToan] [varchar](30) NULL,
	[TenNguoiNhan] [varchar](30) NULL,
	[SdtKhanh] [varchar](30) NULL,
	[TrangThai] [int] NULL,
	[IdNV] [uniqueidentifier] NOT NULL,
	[IdKH] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHangChiTiet]    Script Date: 3/8/2023 7:43:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHangChiTiet](
	[ID] [uniqueidentifier] NOT NULL,
	[IdChiTietSp] [uniqueidentifier] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [float] NULL,
	[GiamGia] [float] NULL,
	[IdGioHang] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_GioHangChiTiet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 3/8/2023 7:43:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](50) NULL,
	[NgayLap] [datetime] NOT NULL,
	[NgayNhan] [datetime] NOT NULL,
	[NgayThanhToan] [datetime] NOT NULL,
	[IdNhanVien] [uniqueidentifier] NOT NULL,
	[IdKhachHang] [uniqueidentifier] NULL,
	[TrangThai] [int] NOT NULL,
	[NgayShip] [datetime] NULL,
	[NguoiBan] [nvarchar](20) NULL,
	[SdtKhach] [varchar](10) NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonChiTiet]    Script Date: 3/8/2023 7:43:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonChiTiet](
	[Id] [uniqueidentifier] NOT NULL,
	[DonGia] [float] NULL,
	[SoLuong] [int] NULL,
	[GiamGia] [float] NULL,
	[ThanhTien] [float] NULL,
	[IdhoaDon] [uniqueidentifier] NOT NULL,
	[TrangThai] [int] NULL,
	[IdChiTIetSp] [uniqueidentifier] NOT NULL,
	[ChiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_HoaDonChiTiet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhacHang]    Script Date: 3/8/2023 7:43:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhacHang](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](50) NULL,
	[Ten] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[ThanhPho] [nvarchar](50) NULL,
	[QuocGia] [nvarchar](50) NULL,
	[SDT] [varchar](50) NULL,
	[TrangThai] [int] NOT NULL,
	[DiemTieuDung] [float] NOT NULL,
 CONSTRAINT [PK_KhacHang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 3/8/2023 7:43:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](50) NULL,
	[Ten] [nvarchar](50) NULL,
	[LoaiGiamGia] [nvarchar](100) NOT NULL,
	[MucGiamGia] [decimal](18, 0) NULL,
	[Start] [datetime] NULL,
	[End] [datetime] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_KhuyenMai] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MauSac]    Script Date: 3/8/2023 7:43:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MauSac](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](50) NULL,
	[Ten] [nvarchar](50) NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK_MauSac] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 3/8/2023 7:43:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](50) NULL,
	[TenNhanVien] [nvarchar](50) NULL,
	[GioiTinh] [int] NOT NULL,
	[NamSinh] [datetime] NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Pass] [varchar](50) NULL,
	[QueQuan] [nvarchar](100) NULL,
	[SoCmnd] [nvarchar](50) NULL,
	[DienThoai] [varchar](50) NULL,
	[TrangThai] [int] NOT NULL,
	[Anh] [nvarchar](100) NULL,
	[IdChucVu] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nsx]    Script Date: 3/8/2023 7:43:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nsx](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](50) NULL,
	[Ten] [nvarchar](50) NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK_Nsx] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 3/8/2023 7:43:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](50) NULL,
	[Ten] [nvarchar](50) NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPhamKhuyenMai]    Script Date: 3/8/2023 7:43:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPhamKhuyenMai](
	[Id] [uniqueidentifier] NOT NULL,
	[TrangThai] [int] NULL,
	[IdKhuyenMai] [uniqueidentifier] NULL,
	[IdSanPham] [uniqueidentifier] NULL,
 CONSTRAINT [PK_SanPhamKhuyenMai] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sizes]    Script Date: 3/8/2023 7:43:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sizes](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [nvarchar](50) NULL,
	[SizeGiay] [nvarchar](50) NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK_Sizes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_ChiTietSP_IdchatLieu]    Script Date: 3/8/2023 7:43:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietSP_IdchatLieu] ON [dbo].[ChiTietSP]
(
	[IdchatLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ChiTietSP_IdDongSP]    Script Date: 3/8/2023 7:43:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietSP_IdDongSP] ON [dbo].[ChiTietSP]
(
	[IdDongSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ChiTietSP_IdMauSac]    Script Date: 3/8/2023 7:43:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietSP_IdMauSac] ON [dbo].[ChiTietSP]
(
	[IdMauSac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ChiTietSP_IdNsx]    Script Date: 3/8/2023 7:43:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietSP_IdNsx] ON [dbo].[ChiTietSP]
(
	[IdNsx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ChiTietSP_IdSize]    Script Date: 3/8/2023 7:43:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietSP_IdSize] ON [dbo].[ChiTietSP]
(
	[IdSize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ChiTietSP_IdSp]    Script Date: 3/8/2023 7:43:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietSP_IdSp] ON [dbo].[ChiTietSP]
(
	[IdSp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_GioHang_IdKH]    Script Date: 3/8/2023 7:43:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_GioHang_IdKH] ON [dbo].[GioHang]
(
	[IdKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_GioHang_IdNV]    Script Date: 3/8/2023 7:43:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_GioHang_IdNV] ON [dbo].[GioHang]
(
	[IdNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_GioHangChiTiet_IdChiTietSp]    Script Date: 3/8/2023 7:43:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_GioHangChiTiet_IdChiTietSp] ON [dbo].[GioHangChiTiet]
(
	[IdChiTietSp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_GioHangChiTiet_IdGioHang]    Script Date: 3/8/2023 7:43:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_GioHangChiTiet_IdGioHang] ON [dbo].[GioHangChiTiet]
(
	[IdGioHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_HoaDon_IdKhachHang]    Script Date: 3/8/2023 7:43:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_HoaDon_IdKhachHang] ON [dbo].[HoaDon]
(
	[IdKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_HoaDon_IdNhanVien]    Script Date: 3/8/2023 7:43:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_HoaDon_IdNhanVien] ON [dbo].[HoaDon]
(
	[IdNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_HoaDonChiTiet_IdChiTIetSp]    Script Date: 3/8/2023 7:43:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_HoaDonChiTiet_IdChiTIetSp] ON [dbo].[HoaDonChiTiet]
(
	[IdChiTIetSp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_HoaDonChiTiet_IdhoaDon]    Script Date: 3/8/2023 7:43:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_HoaDonChiTiet_IdhoaDon] ON [dbo].[HoaDonChiTiet]
(
	[IdhoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_NhanVien_IdChucVu]    Script Date: 3/8/2023 7:43:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_NhanVien_IdChucVu] ON [dbo].[NhanVien]
(
	[IdChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SanPhamKhuyenMai_IdKhuyenMai]    Script Date: 3/8/2023 7:43:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_SanPhamKhuyenMai_IdKhuyenMai] ON [dbo].[SanPhamKhuyenMai]
(
	[IdKhuyenMai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SanPhamKhuyenMai_IdSanPham]    Script Date: 3/8/2023 7:43:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_SanPhamKhuyenMai_IdSanPham] ON [dbo].[SanPhamKhuyenMai]
(
	[IdSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSP_ChatLieu_IdchatLieu] FOREIGN KEY([IdchatLieu])
REFERENCES [dbo].[ChatLieu] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietSP] CHECK CONSTRAINT [FK_ChiTietSP_ChatLieu_IdchatLieu]
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSP_DongSP_IdDongSP] FOREIGN KEY([IdDongSP])
REFERENCES [dbo].[DongSP] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietSP] CHECK CONSTRAINT [FK_ChiTietSP_DongSP_IdDongSP]
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSP_MauSac_IdMauSac] FOREIGN KEY([IdMauSac])
REFERENCES [dbo].[MauSac] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietSP] CHECK CONSTRAINT [FK_ChiTietSP_MauSac_IdMauSac]
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSP_Nsx_IdNsx] FOREIGN KEY([IdNsx])
REFERENCES [dbo].[Nsx] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietSP] CHECK CONSTRAINT [FK_ChiTietSP_Nsx_IdNsx]
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSP_SanPham_IdSp] FOREIGN KEY([IdSp])
REFERENCES [dbo].[SanPham] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietSP] CHECK CONSTRAINT [FK_ChiTietSP_SanPham_IdSp]
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSP_Sizes_IdSize] FOREIGN KEY([IdSize])
REFERENCES [dbo].[Sizes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietSP] CHECK CONSTRAINT [FK_ChiTietSP_Sizes_IdSize]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_KhacHang_IdKH] FOREIGN KEY([IdKH])
REFERENCES [dbo].[KhacHang] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_KhacHang_IdKH]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_NhanVien_IdNV] FOREIGN KEY([IdNV])
REFERENCES [dbo].[NhanVien] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_NhanVien_IdNV]
GO
ALTER TABLE [dbo].[GioHangChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_GioHangChiTiet_ChiTietSP_IdChiTietSp] FOREIGN KEY([IdChiTietSp])
REFERENCES [dbo].[ChiTietSP] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GioHangChiTiet] CHECK CONSTRAINT [FK_GioHangChiTiet_ChiTietSP_IdChiTietSp]
GO
ALTER TABLE [dbo].[GioHangChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_GioHangChiTiet_GioHang_IdGioHang] FOREIGN KEY([IdGioHang])
REFERENCES [dbo].[GioHang] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GioHangChiTiet] CHECK CONSTRAINT [FK_GioHangChiTiet_GioHang_IdGioHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhacHang_IdKhachHang] FOREIGN KEY([IdKhachHang])
REFERENCES [dbo].[KhacHang] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhacHang_IdKhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien_IdNhanVien] FOREIGN KEY([IdNhanVien])
REFERENCES [dbo].[NhanVien] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien_IdNhanVien]
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonChiTiet_ChiTietSP_IdChiTIetSp] FOREIGN KEY([IdChiTIetSp])
REFERENCES [dbo].[ChiTietSP] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [FK_HoaDonChiTiet_ChiTietSP_IdChiTIetSp]
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonChiTiet_HoaDon_IdhoaDon] FOREIGN KEY([IdhoaDon])
REFERENCES [dbo].[HoaDon] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [FK_HoaDonChiTiet_HoaDon_IdhoaDon]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVu_IdChucVu] FOREIGN KEY([IdChucVu])
REFERENCES [dbo].[ChucVu] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChucVu_IdChucVu]
GO
ALTER TABLE [dbo].[SanPhamKhuyenMai]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamKhuyenMai_KhuyenMai_IdKhuyenMai] FOREIGN KEY([IdKhuyenMai])
REFERENCES [dbo].[KhuyenMai] ([Id])
GO
ALTER TABLE [dbo].[SanPhamKhuyenMai] CHECK CONSTRAINT [FK_SanPhamKhuyenMai_KhuyenMai_IdKhuyenMai]
GO
ALTER TABLE [dbo].[SanPhamKhuyenMai]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamKhuyenMai_SanPham_IdSanPham] FOREIGN KEY([IdSanPham])
REFERENCES [dbo].[SanPham] ([Id])
GO
ALTER TABLE [dbo].[SanPhamKhuyenMai] CHECK CONSTRAINT [FK_SanPhamKhuyenMai_SanPham_IdSanPham]
GO
USE [master]
GO
ALTER DATABASE [bangiay] SET  READ_WRITE 
GO
