USE [master]
GO
/****** Object:  Database [YasayanKutuphane]    Script Date: 25.08.2020 15:34:23 ******/
CREATE DATABASE [YasayanKutuphane]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'YasayanKutuphane', FILENAME = N'D:\Program Files\SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\YasayanKutuphane.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'YasayanKutuphane_log', FILENAME = N'D:\Program Files\SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\YasayanKutuphane_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [YasayanKutuphane] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [YasayanKutuphane].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [YasayanKutuphane] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [YasayanKutuphane] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [YasayanKutuphane] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [YasayanKutuphane] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [YasayanKutuphane] SET ARITHABORT OFF 
GO
ALTER DATABASE [YasayanKutuphane] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [YasayanKutuphane] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [YasayanKutuphane] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [YasayanKutuphane] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [YasayanKutuphane] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [YasayanKutuphane] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [YasayanKutuphane] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [YasayanKutuphane] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [YasayanKutuphane] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [YasayanKutuphane] SET  ENABLE_BROKER 
GO
ALTER DATABASE [YasayanKutuphane] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [YasayanKutuphane] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [YasayanKutuphane] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [YasayanKutuphane] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [YasayanKutuphane] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [YasayanKutuphane] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [YasayanKutuphane] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [YasayanKutuphane] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [YasayanKutuphane] SET  MULTI_USER 
GO
ALTER DATABASE [YasayanKutuphane] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [YasayanKutuphane] SET DB_CHAINING OFF 
GO
ALTER DATABASE [YasayanKutuphane] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [YasayanKutuphane] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [YasayanKutuphane] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [YasayanKutuphane] SET QUERY_STORE = OFF
GO
USE [YasayanKutuphane]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 25.08.2020 15:34:23 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 25.08.2020 15:34:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 25.08.2020 15:34:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 25.08.2020 15:34:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 25.08.2020 15:34:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 25.08.2020 15:34:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 25.08.2020 15:34:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 25.08.2020 15:34:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cevirmen]    Script Date: 25.08.2020 15:34:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cevirmen](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UlkeID] [int] NOT NULL,
	[Isim] [nvarchar](max) NULL,
	[Soyisim] [nvarchar](max) NULL,
	[DogumTarihi] [datetime2](7) NOT NULL,
	[Cinsiyet] [int] NOT NULL,
 CONSTRAINT [PK_Cevirmen] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dil]    Script Date: 25.08.2020 15:34:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dil](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Isim] [nvarchar](max) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_Dil] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KapakTipi]    Script Date: 25.08.2020 15:34:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KapakTipi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Isim] [nvarchar](max) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_KapakTipi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategori]    Script Date: 25.08.2020 15:34:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategori](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Isim] [nvarchar](max) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_Kategori] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kitap]    Script Date: 25.08.2020 15:34:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kitap](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KategoriID] [int] NOT NULL,
	[DilID] [int] NOT NULL,
	[YayineviID] [int] NOT NULL,
	[KapakTipiID] [int] NOT NULL,
	[KitapTuruID] [int] NOT NULL,
	[Isim] [nvarchar](max) NULL,
	[Tanitim] [nvarchar](max) NULL,
	[KapakFotografi] [nvarchar](max) NULL,
	[BasimTarihi] [datetime2](7) NOT NULL,
	[SayfaSayisi] [int] NOT NULL,
	[Puan] [float] NOT NULL,
 CONSTRAINT [PK_Kitap] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KitapCevirmen]    Script Date: 25.08.2020 15:34:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KitapCevirmen](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CevirmenID] [int] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[KitapID] [int] NOT NULL,
 CONSTRAINT [PK_KitapCevirmen] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KitapTuru]    Script Date: 25.08.2020 15:34:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KitapTuru](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Isim] [nvarchar](max) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_KitapTuru] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KitapYazar]    Script Date: 25.08.2020 15:34:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KitapYazar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[YazarID] [int] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[KitapID] [int] NOT NULL,
 CONSTRAINT [PK_KitapYazar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ulke]    Script Date: 25.08.2020 15:34:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ulke](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Isim] [nvarchar](max) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_Ulke] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yayinevi]    Script Date: 25.08.2020 15:34:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yayinevi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Isim] [nvarchar](max) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_Yayinevi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yazar]    Script Date: 25.08.2020 15:34:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yazar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UlkeID] [int] NOT NULL,
	[Isim] [nvarchar](max) NULL,
	[Soyisim] [nvarchar](max) NULL,
	[DogumTarihi] [datetime2](7) NOT NULL,
	[Cinsiyet] [int] NOT NULL,
	[Hayati] [nvarchar](max) NULL,
 CONSTRAINT [PK_Yazar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yorum]    Script Date: 25.08.2020 15:34:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yorum](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KitapID] [int] NOT NULL,
	[YorumTarihi] [datetime2](7) NOT NULL,
	[Icerik] [nvarchar](max) NULL,
 CONSTRAINT [PK_Yorum] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 25.08.2020 15:34:23 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 25.08.2020 15:34:23 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 25.08.2020 15:34:23 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 25.08.2020 15:34:23 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 25.08.2020 15:34:23 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 25.08.2020 15:34:23 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 25.08.2020 15:34:23 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Cevirmen_UlkeID]    Script Date: 25.08.2020 15:34:23 ******/
CREATE NONCLUSTERED INDEX [IX_Cevirmen_UlkeID] ON [dbo].[Cevirmen]
(
	[UlkeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Kitap_DilID]    Script Date: 25.08.2020 15:34:23 ******/
CREATE NONCLUSTERED INDEX [IX_Kitap_DilID] ON [dbo].[Kitap]
(
	[DilID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Kitap_KapakTipiID]    Script Date: 25.08.2020 15:34:23 ******/
CREATE NONCLUSTERED INDEX [IX_Kitap_KapakTipiID] ON [dbo].[Kitap]
(
	[KapakTipiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Kitap_KategoriID]    Script Date: 25.08.2020 15:34:23 ******/
CREATE NONCLUSTERED INDEX [IX_Kitap_KategoriID] ON [dbo].[Kitap]
(
	[KategoriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Kitap_KitapTuruID]    Script Date: 25.08.2020 15:34:23 ******/
CREATE NONCLUSTERED INDEX [IX_Kitap_KitapTuruID] ON [dbo].[Kitap]
(
	[KitapTuruID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Kitap_YayineviID]    Script Date: 25.08.2020 15:34:23 ******/
CREATE NONCLUSTERED INDEX [IX_Kitap_YayineviID] ON [dbo].[Kitap]
(
	[YayineviID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_KitapCevirmen_CevirmenID]    Script Date: 25.08.2020 15:34:23 ******/
CREATE NONCLUSTERED INDEX [IX_KitapCevirmen_CevirmenID] ON [dbo].[KitapCevirmen]
(
	[CevirmenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_KitapCevirmen_KitapID]    Script Date: 25.08.2020 15:34:23 ******/
CREATE NONCLUSTERED INDEX [IX_KitapCevirmen_KitapID] ON [dbo].[KitapCevirmen]
(
	[KitapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_KitapYazar_KitapID]    Script Date: 25.08.2020 15:34:23 ******/
CREATE NONCLUSTERED INDEX [IX_KitapYazar_KitapID] ON [dbo].[KitapYazar]
(
	[KitapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_KitapYazar_YazarID]    Script Date: 25.08.2020 15:34:23 ******/
CREATE NONCLUSTERED INDEX [IX_KitapYazar_YazarID] ON [dbo].[KitapYazar]
(
	[YazarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Yazar_UlkeID]    Script Date: 25.08.2020 15:34:23 ******/
CREATE NONCLUSTERED INDEX [IX_Yazar_UlkeID] ON [dbo].[Yazar]
(
	[UlkeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Yorum_KitapID]    Script Date: 25.08.2020 15:34:23 ******/
CREATE NONCLUSTERED INDEX [IX_Yorum_KitapID] ON [dbo].[Yorum]
(
	[KitapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Cevirmen]  WITH CHECK ADD  CONSTRAINT [FK_Cevirmen_Ulke_UlkeID] FOREIGN KEY([UlkeID])
REFERENCES [dbo].[Ulke] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cevirmen] CHECK CONSTRAINT [FK_Cevirmen_Ulke_UlkeID]
GO
ALTER TABLE [dbo].[Kitap]  WITH CHECK ADD  CONSTRAINT [FK_Kitap_Dil_DilID] FOREIGN KEY([DilID])
REFERENCES [dbo].[Dil] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Kitap] CHECK CONSTRAINT [FK_Kitap_Dil_DilID]
GO
ALTER TABLE [dbo].[Kitap]  WITH CHECK ADD  CONSTRAINT [FK_Kitap_KapakTipi_KapakTipiID] FOREIGN KEY([KapakTipiID])
REFERENCES [dbo].[KapakTipi] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Kitap] CHECK CONSTRAINT [FK_Kitap_KapakTipi_KapakTipiID]
GO
ALTER TABLE [dbo].[Kitap]  WITH CHECK ADD  CONSTRAINT [FK_Kitap_Kategori_KategoriID] FOREIGN KEY([KategoriID])
REFERENCES [dbo].[Kategori] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Kitap] CHECK CONSTRAINT [FK_Kitap_Kategori_KategoriID]
GO
ALTER TABLE [dbo].[Kitap]  WITH CHECK ADD  CONSTRAINT [FK_Kitap_KitapTuru_KitapTuruID] FOREIGN KEY([KitapTuruID])
REFERENCES [dbo].[KitapTuru] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Kitap] CHECK CONSTRAINT [FK_Kitap_KitapTuru_KitapTuruID]
GO
ALTER TABLE [dbo].[Kitap]  WITH CHECK ADD  CONSTRAINT [FK_Kitap_Yayinevi_YayineviID] FOREIGN KEY([YayineviID])
REFERENCES [dbo].[Yayinevi] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Kitap] CHECK CONSTRAINT [FK_Kitap_Yayinevi_YayineviID]
GO
ALTER TABLE [dbo].[KitapCevirmen]  WITH CHECK ADD  CONSTRAINT [FK_KitapCevirmen_Cevirmen_CevirmenID] FOREIGN KEY([CevirmenID])
REFERENCES [dbo].[Cevirmen] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KitapCevirmen] CHECK CONSTRAINT [FK_KitapCevirmen_Cevirmen_CevirmenID]
GO
ALTER TABLE [dbo].[KitapCevirmen]  WITH CHECK ADD  CONSTRAINT [FK_KitapCevirmen_Kitap_KitapID] FOREIGN KEY([KitapID])
REFERENCES [dbo].[Kitap] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KitapCevirmen] CHECK CONSTRAINT [FK_KitapCevirmen_Kitap_KitapID]
GO
ALTER TABLE [dbo].[KitapYazar]  WITH CHECK ADD  CONSTRAINT [FK_KitapYazar_Kitap_KitapID] FOREIGN KEY([KitapID])
REFERENCES [dbo].[Kitap] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KitapYazar] CHECK CONSTRAINT [FK_KitapYazar_Kitap_KitapID]
GO
ALTER TABLE [dbo].[KitapYazar]  WITH CHECK ADD  CONSTRAINT [FK_KitapYazar_Yazar_YazarID] FOREIGN KEY([YazarID])
REFERENCES [dbo].[Yazar] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KitapYazar] CHECK CONSTRAINT [FK_KitapYazar_Yazar_YazarID]
GO
ALTER TABLE [dbo].[Yazar]  WITH CHECK ADD  CONSTRAINT [FK_Yazar_Ulke_UlkeID] FOREIGN KEY([UlkeID])
REFERENCES [dbo].[Ulke] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Yazar] CHECK CONSTRAINT [FK_Yazar_Ulke_UlkeID]
GO
ALTER TABLE [dbo].[Yorum]  WITH CHECK ADD  CONSTRAINT [FK_Yorum_Kitap_KitapID] FOREIGN KEY([KitapID])
REFERENCES [dbo].[Kitap] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Yorum] CHECK CONSTRAINT [FK_Yorum_Kitap_KitapID]
GO
USE [master]
GO
ALTER DATABASE [YasayanKutuphane] SET  READ_WRITE 
GO
