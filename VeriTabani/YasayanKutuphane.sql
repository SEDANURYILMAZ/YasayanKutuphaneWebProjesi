USE [master]
GO
/****** Object:  Database [YasayanKutuphane]    Script Date: 25.8.2020 21:11:26 ******/
CREATE DATABASE [YasayanKutuphane]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'YasayanKutuphane', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\YasayanKutuphane.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'YasayanKutuphane_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\YasayanKutuphane_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
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
EXEC sys.sp_db_vardecimal_storage_format N'YasayanKutuphane', N'ON'
GO
ALTER DATABASE [YasayanKutuphane] SET QUERY_STORE = OFF
GO
USE [YasayanKutuphane]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 25.8.2020 21:11:26 ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 25.8.2020 21:11:26 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 25.8.2020 21:11:26 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 25.8.2020 21:11:26 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 25.8.2020 21:11:26 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 25.8.2020 21:11:26 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 25.8.2020 21:11:26 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 25.8.2020 21:11:26 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cevirmen]    Script Date: 25.8.2020 21:11:26 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dil]    Script Date: 25.8.2020 21:11:26 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KapakTipi]    Script Date: 25.8.2020 21:11:26 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategori]    Script Date: 25.8.2020 21:11:26 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kitap]    Script Date: 25.8.2020 21:11:26 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KitapCevirmen]    Script Date: 25.8.2020 21:11:26 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KitapTuru]    Script Date: 25.8.2020 21:11:26 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KitapYazar]    Script Date: 25.8.2020 21:11:26 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ulke]    Script Date: 25.8.2020 21:11:26 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yayinevi]    Script Date: 25.8.2020 21:11:26 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yazar]    Script Date: 25.8.2020 21:11:26 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yorum]    Script Date: 25.8.2020 21:11:26 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6103b52b-b8d8-4507-b7cb-e68bd1402e59', N'sdn@gmail.com', N'SDN@GMAIL.COM', N'sdn@gmail.com', N'SDN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEMgWnYEvxnDWOTRqIHodRCtyrnu6DXPRc5DpBm9IKyEYPS5J79UiStVX7Zmje8XvXg==', N'WFJNE4EPDKI627D47GAX74WYQ4UKYMK2', N'406e7ecd-4067-425b-852b-e4255957427c', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a08aecbc-29b3-48bc-8f13-7b102f447c67', N'b161210115@sakarya.edu.tr', N'B161210115@SAKARYA.EDU.TR', N'b161210115@sakarya.edu.tr', N'B161210115@SAKARYA.EDU.TR', 1, N'AQAAAAEAACcQAAAAEJ5BD7GuhNyOhI4uBL/f2SxePyNBVaDz9bD8eLSEp6GbVXXeAw4Z16ryLoVUQKK8ig==', N'CRZKYDPFBGPRR4IA2LB2EGWMEXMK3UL5', N'c85b9140-cc90-4777-888b-66cf64c00aed', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Cevirmen] ON 

INSERT [dbo].[Cevirmen] ([ID], [UlkeID], [Isim], [Soyisim], [DogumTarihi], [Cinsiyet]) VALUES (1, 2, N'Belgin Selen ', N'Haktanır', CAST(N'1989-11-16T00:00:00.0000000' AS DateTime2), 2)
SET IDENTITY_INSERT [dbo].[Cevirmen] OFF
GO
SET IDENTITY_INSERT [dbo].[Dil] ON 

INSERT [dbo].[Dil] ([ID], [Isim], [DisplayOrder]) VALUES (1, N'Türkçe', 1)
INSERT [dbo].[Dil] ([ID], [Isim], [DisplayOrder]) VALUES (2, N'İngilizce', 2)
SET IDENTITY_INSERT [dbo].[Dil] OFF
GO
SET IDENTITY_INSERT [dbo].[KapakTipi] ON 

INSERT [dbo].[KapakTipi] ([ID], [Isim], [DisplayOrder]) VALUES (1, N'Ciltli', 1)
INSERT [dbo].[KapakTipi] ([ID], [Isim], [DisplayOrder]) VALUES (2, N'Ciltsiz', 2)
SET IDENTITY_INSERT [dbo].[KapakTipi] OFF
GO
SET IDENTITY_INSERT [dbo].[Kategori] ON 

INSERT [dbo].[Kategori] ([ID], [Isim], [DisplayOrder]) VALUES (1, N'Kişisel Gelişim', 10)
INSERT [dbo].[Kategori] ([ID], [Isim], [DisplayOrder]) VALUES (2, N'Polisiye', 6)
INSERT [dbo].[Kategori] ([ID], [Isim], [DisplayOrder]) VALUES (3, N'Edebiyat', 15)
SET IDENTITY_INSERT [dbo].[Kategori] OFF
GO
SET IDENTITY_INSERT [dbo].[Kitap] ON 

INSERT [dbo].[Kitap] ([ID], [KategoriID], [DilID], [YayineviID], [KapakTipiID], [KitapTuruID], [Isim], [Tanitim], [KapakFotografi], [BasimTarihi], [SayfaSayisi], [Puan]) VALUES (1, 1, 1, 1, 1, 5, N'Köpek Gibi Büyütülmüş Çocuk', N'BİR ÇOCUK PSİKİYATRİSTİNİN NOT DEFTERİNDEN SIRA DIŞI ÖYKÜLER Küçük bir çocuğun beyni travmadan nasıl etkilenir? Korku ve şiddet çocuğun beyninde nasıl bir tahribata yol açar ve bu beyin iyileştirilebilir mi? Dr. Bruce Perry, olağandışı durumlara maruz kalmış çocuklara yardım ederek onları hayata yeniden kazandıran dünyaca ünlü bir çocuk psikiyatristidir. Köpek Gibi Büyütülmüş Çocuk’ta, karşılaştığı travma vakalarını bilimsel bir gözle irdeleyerek ve bunları herkesin kolaylıkla anlayabileceği hikayelere dökerek, aşırı strese maruz kalan beyinde tam olarak ne olduğunu açıklıyor ve bu beynin akıl almaz iyileşme kapasitesini ortaya koyuyor. Perry’nin stratejilerini öğrendiğinizde, travma geçirmiş çocukların fiziksel, ruhsal ve duygusal bakımdan nasıl iyileştirileceğinin ve sağlıklı bireylere dönüştürüleceğinin formülünü de elinizde tutuyor olacaksınız. Beynin içinde olanları anlayabilmenin, psikolojik olarak en uç durumdaki çocuklar için bile bir umut ışığı olacağını gösteren bu kitap uzun süre hafızanızdan çıkmayacak.', N'\img\Kitap\41dc9769-4559-400f-8ffb-892c561a9bbd.jpg', CAST(N'2017-11-06T20:59:00.0000000' AS DateTime2), 456, 45)
INSERT [dbo].[Kitap] ([ID], [KategoriID], [DilID], [YayineviID], [KapakTipiID], [KitapTuruID], [Isim], [Tanitim], [KapakFotografi], [BasimTarihi], [SayfaSayisi], [Puan]) VALUES (2, 2, 1, 1, 1, 2, N'16.50 Treni', N'Sıradan bir günde, herşeyin olması gerektiği gibi olduğu bir anda inanılmaz bir olay yaşanır.  Yan yana gelen iki trende ancak korku filmlerinde rastlanacak türden bir cinayet vakası yaşanmaktadır. Ve tüm bunların tek tanığı bir kadındır.  Elspeth çaresizlik içinde baktığı vagonun penceresinden bir adamın bir kadının boğazını hunharca sıktığını görür. Zavallı kadının bir süre sonra cansız bedeni yere yığılır ve o anda tren hareket eder.  Bu düğümü çözebilecek tek kişi Jane Marple'' dan başkası değildir. Ve belki de Elspeth'' e inanacak tek kişi... Çünkü ortada ne şüpheli, ne başka tanık, ne de ceset vardır.  "Bu romanı okurken bir an bile sıkılmayacaksınız." - The Times-', N'\img\Kitap\586b6a44-361e-4fbc-8052-4ca0235083b4.jpg', CAST(N'2016-06-17T21:03:00.0000000' AS DateTime2), 345, 87)
INSERT [dbo].[Kitap] ([ID], [KategoriID], [DilID], [YayineviID], [KapakTipiID], [KitapTuruID], [Isim], [Tanitim], [KapakFotografi], [BasimTarihi], [SayfaSayisi], [Puan]) VALUES (3, 2, 1, 2, 2, 1, N'Ölümle Randevu', N'Petra’nın sarp kayalıklarının tepesindeki şişmiş ceset, iğrenç bir Buda heykeline benziyordu. Bayan Boynton’un bileğindeki minik iğne izi onun cinayete kurban gittiğini gösteren tek kanıttı. Cinayetin 24 saat içinde çözülmesi gerekiyordu. Hercule Poirot, Kudüs’te kulak misafiri olduğu sözleri anımsadı. Onun bir an önce ölmesi gerek, anlıyorsun değil mi? Bayan Boynton, Poirot’nun tanıdığı en iğrenç kadındı...', N'\img\Kitap\700d3cf9-f83c-4bde-9d69-7d89a998d07b.jpg', CAST(N'2010-05-31T21:05:00.0000000' AS DateTime2), 146, 25)
SET IDENTITY_INSERT [dbo].[Kitap] OFF
GO
SET IDENTITY_INSERT [dbo].[KitapTuru] ON 

INSERT [dbo].[KitapTuru] ([ID], [Isim], [DisplayOrder]) VALUES (1, N'E-Kitap', 1)
INSERT [dbo].[KitapTuru] ([ID], [Isim], [DisplayOrder]) VALUES (2, N'Roman', 2)
INSERT [dbo].[KitapTuru] ([ID], [Isim], [DisplayOrder]) VALUES (3, N'Edebiyat', 2)
INSERT [dbo].[KitapTuru] ([ID], [Isim], [DisplayOrder]) VALUES (4, N'Bilim', 1)
INSERT [dbo].[KitapTuru] ([ID], [Isim], [DisplayOrder]) VALUES (5, N'Eğitim', 5)
SET IDENTITY_INSERT [dbo].[KitapTuru] OFF
GO
SET IDENTITY_INSERT [dbo].[Ulke] ON 

INSERT [dbo].[Ulke] ([ID], [Isim], [DisplayOrder]) VALUES (1, N'ABD', 1)
INSERT [dbo].[Ulke] ([ID], [Isim], [DisplayOrder]) VALUES (2, N'Türkiye', 2)
INSERT [dbo].[Ulke] ([ID], [Isim], [DisplayOrder]) VALUES (3, N'Fransa', 3)
SET IDENTITY_INSERT [dbo].[Ulke] OFF
GO
SET IDENTITY_INSERT [dbo].[Yayinevi] ON 

INSERT [dbo].[Yayinevi] ([ID], [Isim], [DisplayOrder]) VALUES (1, N'Koridor Yayıncılık', 1)
INSERT [dbo].[Yayinevi] ([ID], [Isim], [DisplayOrder]) VALUES (2, N'Elma Yayıncılık', 2)
SET IDENTITY_INSERT [dbo].[Yayinevi] OFF
GO
SET IDENTITY_INSERT [dbo].[Yazar] ON 

INSERT [dbo].[Yazar] ([ID], [UlkeID], [Isim], [Soyisim], [DogumTarihi], [Cinsiyet], [Hayati]) VALUES (1, 1, N'Maia ', N'Szalavitz', CAST(N'1965-08-05T00:00:00.0000000' AS DateTime2), 2, N'1965 ABD''de doğumlu Maia Szalavitz, bilim, bağımlılık tedavileri ve kamu kurumları üzerine çalışmalar yapan, gazeteci ve yazardır.  New York''ta yetişen yazar, Monroe Woodbury Lisesinden 1993 yılında mezun olmuş ardından Columbia üniversitesinde eğitimine devam etmiştir.')
INSERT [dbo].[Yazar] ([ID], [UlkeID], [Isim], [Soyisim], [DogumTarihi], [Cinsiyet], [Hayati]) VALUES (2, 1, N'Agatha ', N'Christie', CAST(N'1890-09-05T00:00:00.0000000' AS DateTime2), 2, N'Agatha Christie dünyanın en tanınmış polisiye romanları yazarıdır. Eserleri 45 dile çevrilmiş olan yazarın kitap satışları milyarları bulmuştur. Kutsal kitaplar (Kuran ve İncil) ile Shakespeare''dan sonra en çok satan yazardır. Agatha Miller, İngiltere''nin Torquay şehrinde 15 Eylül 1890''da doğmuştur. 1914 yılında Kraliyet Hava Kuvvetleri''nden Archibald Christie ile evlenmiştir. 1928 yılında boşanan çiftin Rosalind adında bir kızları vardır. Yarım yüzyıla aşkın süren yazarlık hayatında, 79 roman ve kısa hikâyelerden oluşan kitap yazmıştır. Ayrıca 25 Kasım 1952''de Londra''da perdelerini açan ve bugüne kadarki en uzun süreyle oynanan tiyatro eseri olan Fare Kapanı''nın da yer aldığı bir düzineden fazla oyuna imza atmıştır.')
SET IDENTITY_INSERT [dbo].[Yazar] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 25.8.2020 21:11:26 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 25.8.2020 21:11:26 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 25.8.2020 21:11:26 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 25.8.2020 21:11:26 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 25.8.2020 21:11:26 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 25.8.2020 21:11:26 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 25.8.2020 21:11:26 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Cevirmen_UlkeID]    Script Date: 25.8.2020 21:11:26 ******/
CREATE NONCLUSTERED INDEX [IX_Cevirmen_UlkeID] ON [dbo].[Cevirmen]
(
	[UlkeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Kitap_DilID]    Script Date: 25.8.2020 21:11:26 ******/
CREATE NONCLUSTERED INDEX [IX_Kitap_DilID] ON [dbo].[Kitap]
(
	[DilID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Kitap_KapakTipiID]    Script Date: 25.8.2020 21:11:26 ******/
CREATE NONCLUSTERED INDEX [IX_Kitap_KapakTipiID] ON [dbo].[Kitap]
(
	[KapakTipiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Kitap_KategoriID]    Script Date: 25.8.2020 21:11:26 ******/
CREATE NONCLUSTERED INDEX [IX_Kitap_KategoriID] ON [dbo].[Kitap]
(
	[KategoriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Kitap_KitapTuruID]    Script Date: 25.8.2020 21:11:26 ******/
CREATE NONCLUSTERED INDEX [IX_Kitap_KitapTuruID] ON [dbo].[Kitap]
(
	[KitapTuruID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Kitap_YayineviID]    Script Date: 25.8.2020 21:11:26 ******/
CREATE NONCLUSTERED INDEX [IX_Kitap_YayineviID] ON [dbo].[Kitap]
(
	[YayineviID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_KitapCevirmen_CevirmenID]    Script Date: 25.8.2020 21:11:26 ******/
CREATE NONCLUSTERED INDEX [IX_KitapCevirmen_CevirmenID] ON [dbo].[KitapCevirmen]
(
	[CevirmenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_KitapCevirmen_KitapID]    Script Date: 25.8.2020 21:11:26 ******/
CREATE NONCLUSTERED INDEX [IX_KitapCevirmen_KitapID] ON [dbo].[KitapCevirmen]
(
	[KitapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_KitapYazar_KitapID]    Script Date: 25.8.2020 21:11:26 ******/
CREATE NONCLUSTERED INDEX [IX_KitapYazar_KitapID] ON [dbo].[KitapYazar]
(
	[KitapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_KitapYazar_YazarID]    Script Date: 25.8.2020 21:11:26 ******/
CREATE NONCLUSTERED INDEX [IX_KitapYazar_YazarID] ON [dbo].[KitapYazar]
(
	[YazarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Yazar_UlkeID]    Script Date: 25.8.2020 21:11:26 ******/
CREATE NONCLUSTERED INDEX [IX_Yazar_UlkeID] ON [dbo].[Yazar]
(
	[UlkeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Yorum_KitapID]    Script Date: 25.8.2020 21:11:26 ******/
CREATE NONCLUSTERED INDEX [IX_Yorum_KitapID] ON [dbo].[Yorum]
(
	[KitapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
