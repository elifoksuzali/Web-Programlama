/*
Navicat SQL Server Data Transfer

Source Server         : MSSQLL
Source Server Version : 150000
Source Host           : ELIF:1433
Source Database       : Dernek_dbo
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 150000
File Encoding         : 65001

Date: 2021-06-02 13:29:40
*/


-- ----------------------------
-- Table structure for [dbo].[AnasayfaDetay]
-- ----------------------------
DROP TABLE [dbo].[AnasayfaDetay]
GO
CREATE TABLE [dbo].[AnasayfaDetay] (
[Id] int NOT NULL ,
[AciklamaResim] nvarchar(300) NULL ,
[AnaSayfaResimYolu] nvarchar(300) NOT NULL ,
[AnasayfaIcerik] nvarchar(MAX) NOT NULL ,
[AnaSayfaVideoYolu] nvarchar(1000) NOT NULL ,
[Baslik] nvarchar(500) NULL ,
[Baslik2] nvarchar(500) NULL 
)


GO

-- ----------------------------
-- Records of AnasayfaDetay
-- ----------------------------
INSERT INTO [dbo].[AnasayfaDetay] ([Id], [AciklamaResim], [AnaSayfaResimYolu], [AnasayfaIcerik], [AnaSayfaVideoYolu], [Baslik], [Baslik2]) VALUES (N'1', N'', N'/Uploads/IcerikResimleri/about.png', N'Dernek, başta Trabzon ili olmak üzere yurtiçi ve yurtdışında çeşitli eğitim kurumlarında Arapça eğitimi için eğitim metotları geliştirmek, Türk toplumunda Arapça öğrenmeyi amaçlayanlar için kaliteli bir Arapça eğitimi vermek, ana dili Arapça olmayıp Arapça konuşanlar için Arapça eğitim yöntemlerini geliştirmek ve yenilemek, Türk toplumunun Arapçaya ilişkin ihtiyaçları doğrultusunda hizmet sunmak, Türk toplumu ve Arap toplumu arasında Arapça vesilesiyle İslam Medeniyet Köprüleri kurmak.', N'/Uploads/GaleriVideolari/slider1.mp4', N'TRABZON ETKİN MUASIR', N'KUR''AN ve İLİM MERKEZİ');
GO

-- ----------------------------
-- Table structure for [dbo].[Cihazlar]
-- ----------------------------
DROP TABLE [dbo].[Cihazlar]
GO
CREATE TABLE [dbo].[Cihazlar] (
[Id] int NOT NULL IDENTITY(1,1) ,
[CihazAdi] nvarchar(250) NULL ,
[CihazOzellikleri] ntext NULL ,
[CihazResimYoluB] nvarchar(200) NULL ,
[CihazResimYoluK] nvarchar(200) NULL ,
[EkleyenKisiID] int NOT NULL ,
[EklemeTarihi] datetime NOT NULL DEFAULT (getdate()) ,
[Language] nvarchar(10) NULL DEFAULT ('tr-TR') 
)


GO
DBCC CHECKIDENT(N'[dbo].[Cihazlar]', RESEED, 7)
GO

-- ----------------------------
-- Records of Cihazlar
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Cihazlar] ON
GO
SET IDENTITY_INSERT [dbo].[Cihazlar] OFF
GO

-- ----------------------------
-- Table structure for [dbo].[EkipDetay]
-- ----------------------------
DROP TABLE [dbo].[EkipDetay]
GO
CREATE TABLE [dbo].[EkipDetay] (
[Id] int NOT NULL ,
[Ad] nvarchar(300) NOT NULL ,
[Soyad] nvarchar(500) NOT NULL ,
[Instagram] nvarchar(500) NULL ,
[Twitter] nvarchar(500) NOT NULL ,
[Linkedln] nvarchar(500) NOT NULL ,
[Email] nvarchar(500) NOT NULL ,
[Icerik] nvarchar(600) NOT NULL ,
[Facebook] nvarchar(600) NOT NULL ,
[EkipResimYolu] nvarchar(600) NULL 
)


GO

-- ----------------------------
-- Records of EkipDetay
-- ----------------------------
INSERT INTO [dbo].[EkipDetay] ([Id], [Ad], [Soyad], [Instagram], [Twitter], [Linkedln], [Email], [Icerik], [Facebook], [EkipResimYolu]) VALUES (N'10', N'Prof.Dr. Muhammed ', N'Reyyan', N'', N'https://twitter.com/flyengineergirl', N'https://www.linkedin.com/in/elif-%C3%B6ks%C3%BCzali-602320196/', N'https://mail.google.com/mail/u/2/#inbox', N'İngilizce,Arapça ve Türkçe eğitmeni', N'https://mail.google.com/mail/u/3/#inbox', N'/Uploads/ProjeResimleri/team-1.jpg');
GO
INSERT INTO [dbo].[EkipDetay] ([Id], [Ad], [Soyad], [Instagram], [Twitter], [Linkedln], [Email], [Icerik], [Facebook], [EkipResimYolu]) VALUES (N'11', N'Ömer', N'Reyyan', N'', N'https://twitter.com/flyengineergirl', N'https://www.linkedin.com/in/elif-%C3%B6ks%C3%BCzali-https://www.linkedin.com/in/elif-%C3%B6ks%C3%BCzali-602320196/', N'https://mail.google.com/mail/u/2/#inbox', N' İngilizce,Arapça ve Türkçe eğitmeni', N'https://mail.google.com/mail/u/3/#inbox', N'/Uploads/ProjeResimleri/team-4.jpg');
GO
INSERT INTO [dbo].[EkipDetay] ([Id], [Ad], [Soyad], [Instagram], [Twitter], [Linkedln], [Email], [Icerik], [Facebook], [EkipResimYolu]) VALUES (N'12', N'Büşra', N'Demirtaş', null, N'https://twitter.com/flyengineergirl', N'https://www.linkedin.com/in/elif-%C3%B6ks%C3%BCzali-602320196/', N'https://mail.google.com/mail/u/2/#inbox', N'Arapça eğitmeni', N'https://mail.google.com/mail/u/3/#inbox', N'/Uploads/ProjeResimleri/team-2.jpg');
GO
INSERT INTO [dbo].[EkipDetay] ([Id], [Ad], [Soyad], [Instagram], [Twitter], [Linkedln], [Email], [Icerik], [Facebook], [EkipResimYolu]) VALUES (N'14', N'Eda ', N'Çabuk', null, N'https://twitter.com/flyengineergirl', N'https://www.linkedin.com/in/elif-%C3%B6ks%C3%BCzali-602320196/', N'https://mail.google.com/mail/u/2/#inbox', N'Arapça eğitmeni', N'https://mail.google.com/mail/u/3/#inbox', N'/Uploads/ProjeResimleri/team-3.jpg');
GO

-- ----------------------------
-- Table structure for [dbo].[FormDanGelenMesajlar]
-- ----------------------------
DROP TABLE [dbo].[FormDanGelenMesajlar]
GO
CREATE TABLE [dbo].[FormDanGelenMesajlar] (
[Id] int NOT NULL ,
[MesajIcerik] nvarchar(MAX) NOT NULL ,
[GonderenAdSoyad] nvarchar(MAX) NOT NULL ,
[KonuBaslik] nvarchar(200) NOT NULL ,
[GonderenEmail] nvarchar(500) NOT NULL 
)


GO

-- ----------------------------
-- Records of FormDanGelenMesajlar
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[Formlar]
-- ----------------------------
DROP TABLE [dbo].[Formlar]
GO
CREATE TABLE [dbo].[Formlar] (
[Id] int NOT NULL IDENTITY(1,1) ,
[EkleyenKisiID] int NOT NULL ,
[EklemeTarihi] datetime NOT NULL ,
[FormAd] nvarchar(1000) NULL ,
[Download] nvarchar(1000) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[Formlar]', RESEED, 6)
GO

-- ----------------------------
-- Records of Formlar
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Formlar] ON
GO
SET IDENTITY_INSERT [dbo].[Formlar] OFF
GO

-- ----------------------------
-- Table structure for [dbo].[Galeriler]
-- ----------------------------
DROP TABLE [dbo].[Galeriler]
GO
CREATE TABLE [dbo].[Galeriler] (
[Id] int NOT NULL IDENTITY(1,1) ,
[GaleriAdi] nvarchar(300) NULL ,
[Aciklama] nvarchar(1000) NULL ,
[GaleriResimYolu] nvarchar(200) NULL ,
[EkleyenKisiID] int NOT NULL ,
[EklemeTarihi] datetime NOT NULL DEFAULT (getdate()) 
)


GO
DBCC CHECKIDENT(N'[dbo].[Galeriler]', RESEED, 7)
GO

-- ----------------------------
-- Records of Galeriler
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Galeriler] ON
GO
INSERT INTO [dbo].[Galeriler] ([Id], [GaleriAdi], [Aciklama], [GaleriResimYolu], [EkleyenKisiID], [EklemeTarihi]) VALUES (N'3', N'TEMKİN', null, null, N'1016', N'2021-05-29 20:01:09.000');
GO
INSERT INTO [dbo].[Galeriler] ([Id], [GaleriAdi], [Aciklama], [GaleriResimYolu], [EkleyenKisiID], [EklemeTarihi]) VALUES (N'4', N'FAALİYET DERNEK', null, null, N'1016', N'2020-04-09 20:02:22.000');
GO
INSERT INTO [dbo].[Galeriler] ([Id], [GaleriAdi], [Aciklama], [GaleriResimYolu], [EkleyenKisiID], [EklemeTarihi]) VALUES (N'5', N'ANASAYFA', null, null, N'1016', N'2021-05-29 20:14:47.000');
GO
INSERT INTO [dbo].[Galeriler] ([Id], [GaleriAdi], [Aciklama], [GaleriResimYolu], [EkleyenKisiID], [EklemeTarihi]) VALUES (N'6', N'HAKKIMIZDA', null, null, N'1016', N'2021-05-29 20:15:05.000');
GO
INSERT INTO [dbo].[Galeriler] ([Id], [GaleriAdi], [Aciklama], [GaleriResimYolu], [EkleyenKisiID], [EklemeTarihi]) VALUES (N'7', N'PROJELER', null, null, N'1016', N'2021-05-29 20:15:27.000');
GO
SET IDENTITY_INSERT [dbo].[Galeriler] OFF
GO

-- ----------------------------
-- Table structure for [dbo].[GaleriResimler]
-- ----------------------------
DROP TABLE [dbo].[GaleriResimler]
GO
CREATE TABLE [dbo].[GaleriResimler] (
[Id] int NOT NULL IDENTITY(1,1) ,
[GaleriID] int NOT NULL ,
[KucukResim] nvarchar(250) NULL ,
[ResimYolu] nvarchar(250) NULL ,
[Aciklama] nvarchar(500) NULL ,
[EkleyenKisiID] int NOT NULL ,
[EklemeTarihi] datetime NOT NULL DEFAULT (getdate()) 
)


GO
DBCC CHECKIDENT(N'[dbo].[GaleriResimler]', RESEED, 23)
GO

-- ----------------------------
-- Records of GaleriResimler
-- ----------------------------
SET IDENTITY_INSERT [dbo].[GaleriResimler] ON
GO
INSERT INTO [dbo].[GaleriResimler] ([Id], [GaleriID], [KucukResim], [ResimYolu], [Aciklama], [EkleyenKisiID], [EklemeTarihi]) VALUES (N'5', N'3', N'/Uploads/GaleriResimleri/1.png', N'/Uploads/GaleriResimleri/1.png', N'Trabzon', N'1016', N'2021-05-29 20:01:26.000');
GO
INSERT INTO [dbo].[GaleriResimler] ([Id], [GaleriID], [KucukResim], [ResimYolu], [Aciklama], [EkleyenKisiID], [EklemeTarihi]) VALUES (N'7', N'4', N'/Uploads/GaleriResimleri/2.png', N'/Uploads/GaleriResimleri/2.png', N'Akçaabat', N'1016', N'2021-05-29 20:03:07.000');
GO
INSERT INTO [dbo].[GaleriResimler] ([Id], [GaleriID], [KucukResim], [ResimYolu], [Aciklama], [EkleyenKisiID], [EklemeTarihi]) VALUES (N'9', N'4', N'/Uploads/GaleriResimleri/3.png', N'/Uploads/GaleriResimleri/3.png', N'Yomra', N'1016', N'2021-05-29 10:41:16.000');
GO
INSERT INTO [dbo].[GaleriResimler] ([Id], [GaleriID], [KucukResim], [ResimYolu], [Aciklama], [EkleyenKisiID], [EklemeTarihi]) VALUES (N'10', N'3', N'/Uploads/GaleriResimleri/4.png', N'/Uploads/GaleriResimleri/4.png', N'Trabzon', N'1016', N'2021-05-29 15:59:47.000');
GO
INSERT INTO [dbo].[GaleriResimler] ([Id], [GaleriID], [KucukResim], [ResimYolu], [Aciklama], [EkleyenKisiID], [EklemeTarihi]) VALUES (N'14', N'3', N'/Uploads/GaleriResimleri/5.png', N'/Uploads/GaleriResimleri/5.png', N'Yomra', N'1016', N'2021-05-29 16:00:40.000');
GO
INSERT INTO [dbo].[GaleriResimler] ([Id], [GaleriID], [KucukResim], [ResimYolu], [Aciklama], [EkleyenKisiID], [EklemeTarihi]) VALUES (N'15', N'3', N'/Uploads/GaleriResimleri/6.png', N'/Uploads/GaleriResimleri/6.png', N'Akçaabat', N'1016', N'2021-05-29 16:06:18.000');
GO
INSERT INTO [dbo].[GaleriResimler] ([Id], [GaleriID], [KucukResim], [ResimYolu], [Aciklama], [EkleyenKisiID], [EklemeTarihi]) VALUES (N'16', N'4', N'/Uploads/GaleriResimleri/7.png', N'/Uploads/GaleriResimleri/7.png', N'Yomra', N'1016', N'2021-05-29 16:06:53.000');
GO
INSERT INTO [dbo].[GaleriResimler] ([Id], [GaleriID], [KucukResim], [ResimYolu], [Aciklama], [EkleyenKisiID], [EklemeTarihi]) VALUES (N'17', N'3', N'/Uploads/GaleriResimleri/8.png', N'/Uploads/GaleriResimleri/8.png', N'Yomra', N'1016', N'2021-05-29 16:07:26.000');
GO
INSERT INTO [dbo].[GaleriResimler] ([Id], [GaleriID], [KucukResim], [ResimYolu], [Aciklama], [EkleyenKisiID], [EklemeTarihi]) VALUES (N'18', N'4', N'/Uploads/GaleriResimleri/9.png', N'/Uploads/GaleriResimleri/9.png', N'Trabzon', N'1016', N'2021-05-29 16:07:57.000');
GO
INSERT INTO [dbo].[GaleriResimler] ([Id], [GaleriID], [KucukResim], [ResimYolu], [Aciklama], [EkleyenKisiID], [EklemeTarihi]) VALUES (N'19', N'3', N'/Uploads/GaleriResimleri/10.png', N'/Uploads/GaleriResimleri/10.png', N'Akçaabat', N'1016', N'2021-05-29 16:08:26.000');
GO
INSERT INTO [dbo].[GaleriResimler] ([Id], [GaleriID], [KucukResim], [ResimYolu], [Aciklama], [EkleyenKisiID], [EklemeTarihi]) VALUES (N'23', N'5', N'/Uploads/IcerikResimleri/about.png', N'/Uploads/IcerikResimleri/about.png', null, N'1016', N'2021-05-29 20:16:54.000');
GO
SET IDENTITY_INSERT [dbo].[GaleriResimler] OFF
GO

-- ----------------------------
-- Table structure for [dbo].[Genel_Ayarlar]
-- ----------------------------
DROP TABLE [dbo].[Genel_Ayarlar]
GO
CREATE TABLE [dbo].[Genel_Ayarlar] (
[Id] int NOT NULL IDENTITY(1,1) ,
[EkleyenKisiID] int NOT NULL ,
[EklemeTarihi] datetime NOT NULL DEFAULT (getdate()) ,
[SiteAdi] nvarchar(150) NOT NULL ,
[MetaAuthor] nvarchar(50) NULL ,
[MetaKeyWords] ntext NULL ,
[Facebook] nvarchar(500) NULL ,
[Twitter] nvarchar(500) NULL ,
[Instagram] nvarchar(500) NULL ,
[Linkedln] nvarchar(500) NULL ,
[Youtube] nvarchar(500) NULL ,
[Tel] nvarchar(30) NULL ,
[Email] nvarchar(50) NULL ,
[WebAdres] nvarchar(40) NULL ,
[DuzenleyenKisiID] int NOT NULL ,
[DuzenlemeTarihi] datetime NULL ,
[Adres] ntext NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[Genel_Ayarlar]', RESEED, 2)
GO

-- ----------------------------
-- Records of Genel_Ayarlar
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Genel_Ayarlar] ON
GO
INSERT INTO [dbo].[Genel_Ayarlar] ([Id], [EkleyenKisiID], [EklemeTarihi], [SiteAdi], [MetaAuthor], [MetaKeyWords], [Facebook], [Twitter], [Instagram], [Linkedln], [Youtube], [Tel], [Email], [WebAdres], [DuzenleyenKisiID], [DuzenlemeTarihi], [Adres]) VALUES (N'1', N'1016', N'2021-05-30 10:51:28.000', N'Temkin-Trabzon Etkin Muasır Kur''an ve İlim Merkezi', N'TEMKİN', N'Temkin-Trabzon', N'https://mail.google.com/mail/u/3/#inbox', N'https://twitter.com/flyengineergirl', N'https://www.instagram.com/erzurumteknikuni/', N'https://www.linkedin.com/in/elif-%C3%B6ks%C3%BCzali-602320196/', N'#', N'0553 255 97 61', N'elif.oksuzali39@erzurum.edu.tr', N'#', N'1016', N'2021-05-30 20:34:34.000', N'Yomra /TRABZON');
GO
SET IDENTITY_INSERT [dbo].[Genel_Ayarlar] OFF
GO

-- ----------------------------
-- Table structure for [dbo].[HakkimizdaDetay]
-- ----------------------------
DROP TABLE [dbo].[HakkimizdaDetay]
GO
CREATE TABLE [dbo].[HakkimizdaDetay] (
[Id] int NOT NULL ,
[HakkimizdaResimYolu] nvarchar(300) NOT NULL ,
[HakkimizdaIcerik] nvarchar(MAX) NULL ,
[YayimSayisi] int NOT NULL ,
[Baslik] nvarchar(500) NULL ,
[Baslik2] nvarchar(500) NULL ,
[OgrenciSayisi] int NOT NULL ,
[DilSayisi] int NOT NULL ,
[AkademisyenSayisi] int NOT NULL 
)


GO

-- ----------------------------
-- Records of HakkimizdaDetay
-- ----------------------------
INSERT INTO [dbo].[HakkimizdaDetay] ([Id], [HakkimizdaResimYolu], [HakkimizdaIcerik], [YayimSayisi], [Baslik], [Baslik2], [OgrenciSayisi], [DilSayisi], [AkademisyenSayisi]) VALUES (N'1', N'/Uploads/IcerikResimleri/about.png', N'                        Dernek, başta Trabzon ili olmak üzere yurtiçi ve yurtdışında çeşitli eğitim kurumlarında Arapça eğitimi için eğitim metotları geliştirmek, Türk toplumunda Arapça öğrenmeyi amaçlayanlar için kaliteli bir Arapça eğitimi vermek, ana dili Arapça olmayıp Arapça konuşanlar için Arapça eğitim yöntemlerini geliştirmek ve yenilemek, Türk toplumunun Arapçaya ilişkin ihtiyaçları doğrultusunda hizmet sunmak, Türk toplumu ve Arap toplumu arasında Arapça vesilesiyle İslam Medeniyet Köprüleri kurmak.

                        Dil Eğitim ve Öğretimi alanında faaliyetler düzenleyerek başta gençlere olmak üzere Türk toplumuna ve tüm dünyaya Arapçayı sevdirmek, Arapça ile ilgili faaliyetlere yönlendirmek, Arapça konuşma alışkanlığı kazandırmak, sosyal , kültürel, sanatsal, eğitsel etkinliklerde bulunmak amacıyla farklı resmi ve özel kurumlarla iş birliği yapmak ve bu amaç doğrultusunda yazılı ve görsel yayınlarda bulunmak, yayınevi ve matbaa açmak amacı ile kurulmuştur.
', N'1', N'TRABZON ETKİN MUASIR', N'KUR''AN ve İLİM MERKEZİ', N'232', N'3', N'15');
GO

-- ----------------------------
-- Table structure for [dbo].[IcerikDiger]
-- ----------------------------
DROP TABLE [dbo].[IcerikDiger]
GO
CREATE TABLE [dbo].[IcerikDiger] (
[Id] int NOT NULL ,
[Icerik] nvarchar(MAX) NULL ,
[TurId] int NULL ,
[UstMenuId] int NULL ,
[EkleyenKisiID] int NULL ,
[EklemeTarihi] datetime NOT NULL ,
[DuzenleyenKisiID] int NULL ,
[DuzenlemeTarihi] datetime NULL ,
[Language] nvarchar(10) NOT NULL ,
[KucukResimYolu] nvarchar(300) NULL ,
[AnaSayfaVideoYolu] nvarchar(MAX) NULL 
)


GO

-- ----------------------------
-- Records of IcerikDiger
-- ----------------------------
INSERT INTO [dbo].[IcerikDiger] ([Id], [Icerik], [TurId], [UstMenuId], [EkleyenKisiID], [EklemeTarihi], [DuzenleyenKisiID], [DuzenlemeTarihi], [Language], [KucukResimYolu], [AnaSayfaVideoYolu]) VALUES (N'1', N'  Dernek, başta Trabzon ili olmak üzere yurtiçi ve yurtdışında çeşitli eğitim kurumlarında Arapça eğitimi için eğitim metotları geliştirmek, Türk toplumunda Arapça öğrenmeyi amaçlayanlar için kaliteli bir Arapça eğitimi vermek, ana dili Arapça olmayıp Arapça konuşanlar için Arapça eğitim yöntemlerini geliştirmek ve yenilemek, Türk toplumunun Arapçaya ilişkin ihtiyaçları doğrultusunda hizmet sunmak, Türk toplumu ve Arap toplumu arasında Arapça vesilesiyle İslam Medeniyet Köprüleri kurmak.

                        Dil Eğitim ve Öğretimi alanında faaliyetler düzenleyerek başta gençlere olmak üzere Türk toplumuna ve tüm dünyaya Arapçayı sevdirmek, Arapça ile ilgili faaliyetlere yönlendirmek, Arapça konuşma alışkanlığı kazandırmak, sosyal , kültürel, sanatsal, eğitsel etkinliklerde bulunmak amacıyla farklı resmi ve özel kurumlarla iş birliği yapmak ve bu amaç doğrultusunda yazılı ve görsel yayınlarda bulunmak, yayınevi ve matbaa açmak amacı ile kurulmuştur.
', N'10', N'2', N'1016', N'2021-06-01 23:26:20.000', N'1016', N'2021-06-01 23:26:29.000', N'tr-TR', N'/Uploads/IcerikResimleri/about.png', N'/Uploads/GaleriVideolari/slider1.mp4');
GO
INSERT INTO [dbo].[IcerikDiger] ([Id], [Icerik], [TurId], [UstMenuId], [EkleyenKisiID], [EklemeTarihi], [DuzenleyenKisiID], [DuzenlemeTarihi], [Language], [KucukResimYolu], [AnaSayfaVideoYolu]) VALUES (N'2', N'  Dernek, başta Trabzon ili olmak üzere yurtiçi ve yurtdışında çeşitli eğitim kurumlarında Arapça eğitimi için eğitim metotları geliştirmek, Türk toplumunda Arapça öğrenmeyi amaçlayanlar için kaliteli bir Arapça eğitimi vermek, ana dili Arapça olmayıp Arapça konuşanlar için Arapça eğitim yöntemlerini geliştirmek ve yenilemek, Türk toplumunun Arapçaya ilişkin ihtiyaçları doğrultusunda hizmet sunmak, Türk toplumu ve Arap toplumu arasında Arapça vesilesiyle İslam Medeniyet Köprüleri kurmak.

                        Dil Eğitim ve Öğretimi alanında faaliyetler düzenleyerek başta gençlere olmak üzere Türk toplumuna ve tüm dünyaya Arapçayı sevdirmek, Arapça ile ilgili faaliyetlere yönlendirmek, Arapça konuşma alışkanlığı kazandırmak, sosyal , kültürel, sanatsal, eğitsel etkinliklerde bulunmak amacıyla farklı resmi ve özel kurumlarla iş birliği yapmak ve bu amaç doğrultusunda yazılı ve görsel yayınlarda bulunmak, yayınevi ve matbaa açmak amacı ile kurulmuştur.
', N'10', N'7', N'1016', N'2021-06-02 00:18:45.000', null, null, N'tr-TR', N'/Uploads/IcerikResimleri/about.png', N'');
GO

-- ----------------------------
-- Table structure for [dbo].[Iletisim]
-- ----------------------------
DROP TABLE [dbo].[Iletisim]
GO
CREATE TABLE [dbo].[Iletisim] (
[Id] int NOT NULL ,
[Konum] nvarchar(MAX) NOT NULL ,
[Telefon] nvarchar(45) NOT NULL ,
[Email] nvarchar(400) NOT NULL ,
[Adres] nvarchar(MAX) NOT NULL 
)


GO

-- ----------------------------
-- Records of Iletisim
-- ----------------------------
INSERT INTO [dbo].[Iletisim] ([Id], [Konum], [Telefon], [Email], [Adres]) VALUES (N'1', N'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3014.122996113387!2d40.050541215411855!3d40.9349714793082!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40642d70cf5749e1%3A0x14dd78bd68d36e5a!2sMerkez%2C%20Eski%20S%C3%BCrmene%20Cd.%20No%3A91%2C%2061700%20Arakl%C4%B1%2FTrabzon!5e0!3m2!1str!2str!4v1621724815538!5m2!1str!2str', N'05532559761', N'temkin@temkin.org.tr', N'Yomra-Merkez/Trabzon');
GO

-- ----------------------------
-- Table structure for [dbo].[KadroYonetim]
-- ----------------------------
DROP TABLE [dbo].[KadroYonetim]
GO
CREATE TABLE [dbo].[KadroYonetim] (
[Id] int NOT NULL IDENTITY(1,1) ,
[AdSoyad] nvarchar(MAX) NULL ,
[Email] nvarchar(MAX) NULL ,
[Resim] nvarchar(MAX) NULL ,
[Link] nvarchar(MAX) NULL ,
[Statu] nvarchar(MAX) NULL ,
[Sira] int NULL DEFAULT ((0)) ,
[EkleyenKisiID] int NOT NULL ,
[EklemeTarihi] datetime NOT NULL ,
[DuzenleyenKisiID] int NULL ,
[DuzenlemeTarihi] datetime NULL ,
[PersonelMi] bit NOT NULL DEFAULT ((0)) ,
[PersonelStatu] nvarchar(MAX) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[KadroYonetim]', RESEED, 21)
GO

-- ----------------------------
-- Records of KadroYonetim
-- ----------------------------
SET IDENTITY_INSERT [dbo].[KadroYonetim] ON
GO
INSERT INTO [dbo].[KadroYonetim] ([Id], [AdSoyad], [Email], [Resim], [Link], [Statu], [Sira], [EkleyenKisiID], [EklemeTarihi], [DuzenleyenKisiID], [DuzenlemeTarihi], [PersonelMi], [PersonelStatu]) VALUES (N'1', N'Prof.Dr Muhammed Reyyan', N'https://mail.google.com/mail/u/2/#inbox', N'/Uploads/ProjeResimleri/team-1.jpg', N'https://localhost:44353/Ekip/Ekip/#team', N'Yönetici', N'1', N'1', N'2019-05-07 13:05:20.000', N'1016', N'2021-05-30 11:46:41.000', N'1', N'Yönetici');
GO
INSERT INTO [dbo].[KadroYonetim] ([Id], [AdSoyad], [Email], [Resim], [Link], [Statu], [Sira], [EkleyenKisiID], [EklemeTarihi], [DuzenleyenKisiID], [DuzenlemeTarihi], [PersonelMi], [PersonelStatu]) VALUES (N'6', N'Ömer Reyyan', N'https://mail.google.com/mail/u/2/#inbox', N'/Uploads/ProjeResimleri/team-4.jpg', N'https://localhost:44353/Ekip/Ekip/#team', N'Üye', N'5', N'1', N'2019-05-07 13:05:20.000', N'1016', N'2021-05-30 00:36:23.000', N'0', N'Öğretmen');
GO
INSERT INTO [dbo].[KadroYonetim] ([Id], [AdSoyad], [Email], [Resim], [Link], [Statu], [Sira], [EkleyenKisiID], [EklemeTarihi], [DuzenleyenKisiID], [DuzenlemeTarihi], [PersonelMi], [PersonelStatu]) VALUES (N'7', N'Büşra Demirtaş', N'https://mail.google.com/mail/u/2/#inbox', N'/Uploads/ProjeResimleri/team-2.jpg', N'https://localhost:44353/Ekip/Ekip/#team', N'Üye', N'6', N'1', N'2019-05-07 13:05:20.000', N'1016', N'2021-05-30 00:38:05.000', N'0', N'Öğretmen');
GO
INSERT INTO [dbo].[KadroYonetim] ([Id], [AdSoyad], [Email], [Resim], [Link], [Statu], [Sira], [EkleyenKisiID], [EklemeTarihi], [DuzenleyenKisiID], [DuzenlemeTarihi], [PersonelMi], [PersonelStatu]) VALUES (N'17', N'Elif Öksüzali', N'https://mail.google.com/mail/u/2/#inbox', N'/Uploads/ProjeResimleri/team-3.jpg', N'https://localhost:44353/Ekip/Ekip/#team', N'Üye', N'7', N'1016', N'2020-04-05 22:41:45.240', N'1016', N'2021-05-30 11:46:59.000', N'1', N'Yönetici');
GO
INSERT INTO [dbo].[KadroYonetim] ([Id], [AdSoyad], [Email], [Resim], [Link], [Statu], [Sira], [EkleyenKisiID], [EklemeTarihi], [DuzenleyenKisiID], [DuzenlemeTarihi], [PersonelMi], [PersonelStatu]) VALUES (N'21', N'Eda Çabuk', N'https://mail.google.com/mail/u/2/#inbox', N'/Uploads/ProjeResimleri/team-3.jpg', N'https://localhost:44353/Ekip/Ekip/#team', N'Yönetici', N'9', N'1016', N'2021-05-30 00:36:13.000', N'1016', N'2021-05-30 00:36:19.000', N'0', N'Öğretmen');
GO
SET IDENTITY_INSERT [dbo].[KadroYonetim] OFF
GO

-- ----------------------------
-- Table structure for [dbo].[Kullanicilar]
-- ----------------------------
DROP TABLE [dbo].[Kullanicilar]
GO
CREATE TABLE [dbo].[Kullanicilar] (
[Id] int NOT NULL IDENTITY(1,1) ,
[Ad] nvarchar(200) NOT NULL ,
[Soyad] nvarchar(200) NOT NULL ,
[Kurum] nvarchar(300) NOT NULL ,
[Parola] nvarchar(200) NOT NULL ,
[Email] nvarchar(200) NOT NULL ,
[KucukResimYolu] nvarchar(200) NOT NULL ,
[EklemeTarihi] datetime NOT NULL DEFAULT (getdate()) ,
[Rol] int NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[Kullanicilar]', RESEED, 1024)
GO

-- ----------------------------
-- Records of Kullanicilar
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Kullanicilar] ON
GO
INSERT INTO [dbo].[Kullanicilar] ([Id], [Ad], [Soyad], [Kurum], [Parola], [Email], [KucukResimYolu], [EklemeTarihi], [Rol]) VALUES (N'1006', N'Prof. Dr. Muhammed ', N'Reyyan', N'Trabzon Temkin Derneği', N'123456', N'elif.oksuzali39@erzurum.edu.tr', N'/Uploads/KullaniciResimleri/irfankaymaz.png', N'2021-05-30 17:49:37.000', N'1');
GO
INSERT INTO [dbo].[Kullanicilar] ([Id], [Ad], [Soyad], [Kurum], [Parola], [Email], [KucukResimYolu], [EklemeTarihi], [Rol]) VALUES (N'1016', N'Elif ', N'Öksüzali', N'Trabzon Temkin Derneği', N'123456', N'elif.oksuzali39@erzurum.edu.tr', N'/Uploads/KullaniciResimleri/emrecnts.JPG', N'2021-05-30 17:49:37.000', N'1');
GO
SET IDENTITY_INSERT [dbo].[Kullanicilar] OFF
GO

-- ----------------------------
-- Table structure for [dbo].[ProjeDetay]
-- ----------------------------
DROP TABLE [dbo].[ProjeDetay]
GO
CREATE TABLE [dbo].[ProjeDetay] (
[Id] int NOT NULL ,
[ProjeResimYolu] nvarchar(300) NOT NULL ,
[ProjeIcerik] nvarchar(MAX) NOT NULL ,
[Baslik] nvarchar(4000) NULL ,
[Baslik2] nvarchar(4000) NULL 
)


GO

-- ----------------------------
-- Records of ProjeDetay
-- ----------------------------
INSERT INTO [dbo].[ProjeDetay] ([Id], [ProjeResimYolu], [ProjeIcerik], [Baslik], [Baslik2]) VALUES (N'1', N'/Uploads/IcerikResimleri/service.png', N'Forum,sempozyum,panel gibi etkinlikler
                                düzenlemek aynı zamanda,Hikaye,roman,
                                dergi gibi eserlerin tercümesini yapmak', N'Planlanan Yayımlar', N'Geleceğimiz için planladıklarımızı inceleyebilir bizlere fikir önerisinde bulunabilirsiniz!');
GO
INSERT INTO [dbo].[ProjeDetay] ([Id], [ProjeResimYolu], [ProjeIcerik], [Baslik], [Baslik2]) VALUES (N'2', N'/Uploads/IcerikResimleri/service.png', N'İlahiyat Fakülteleri,Proje okulları,İmam
                        Hatip Okulları.Başta Trabzon olmak üzere
                        Türkiyenin çeşitli şehirlerinde Arapça
                        Kıraathane inşası ve hayata geçen projede
                        istenilen içerikleri oluşturmak.', N'Planlanan Projeler', null);
GO
INSERT INTO [dbo].[ProjeDetay] ([Id], [ProjeResimYolu], [ProjeIcerik], [Baslik], [Baslik2]) VALUES (N'3', N'/Uploads/IcerikResimleri/service.png', N'Medya da arapça için eğitim
                        faaliyetlerinde bulunmak.
                        Arapça festivaller düzenlemek
                        medyatik kuruluşlar ile işbirliği yapmak
                        bu kuruluşlar sayesinde gençlerin
                        arapçaya ilgisini arttırmak hedeflenmekte', N'Planlanan Hedefler', null);
GO

-- ----------------------------
-- Table structure for [dbo].[sysdiagrams]
-- ----------------------------
DROP TABLE [dbo].[sysdiagrams]
GO
CREATE TABLE [dbo].[sysdiagrams] (
[name] sysname NOT NULL ,
[principal_id] int NOT NULL ,
[diagram_id] int NOT NULL IDENTITY(1,1) ,
[version] int NULL ,
[definition] varbinary(MAX) NULL 
)


GO

-- ----------------------------
-- Records of sysdiagrams
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sysdiagrams] ON
GO
INSERT INTO [dbo].[sysdiagrams] ([name], [principal_id], [diagram_id], [version], [definition]) VALUES (N'ETUYUTAM', N'1', N'1', N'1', 0xD0CF11E0A1B11AE1000000000000000000000000000000003E000300FEFF0900060000000000000000000000010000000100000000000000001000003000000001000000FEFFFFFF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFF32000000030000000400000005000000060000000700000008000000090000000A0000000B0000000C000000FEFFFFFF0E0000000F000000100000001100000012000000130000001400000015000000160000001700000018000000190000001A0000001B0000001C0000001D0000001E0000001F000000200000002100000022000000230000002400000025000000260000002700000028000000290000002A0000002B0000002C0000002D0000002E0000002F000000FEFFFFFFFEFFFFFF4F000000FEFFFFFF3400000035000000360000003700000038000000390000003A0000003B0000003C0000003D0000003E0000003F000000400000004100000042000000430000004400000045000000460000004700000048000000490000004A0000004B0000004C0000004D0000004E000000FEFFFFFF5000000051000000FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52006F006F007400200045006E00740072007900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016000500FFFFFFFFFFFFFFFF0200000000000000000000000000000000000000000000000000000000000000603254751E39D2013100000080060000000000006600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000201FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000200000012150000000000006F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040002010100000004000000FFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000D000000BC44000000000000010043006F006D0070004F0062006A0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012000201FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000005F00000000000000000434000A1E500C050000805F0000000F00FFFF5F0000005F000000007D00005D5B00008159000063820100983401001A4F0000276F0000DE805B10F195D011B0A000AA00BDCB5C000008003000000000020000030000003C006B0000000900000000000000D9E6B0E91C81D011AD5100A0C90F5739F43B7F847F61C74385352986E1D552F8A0327DB2D86295428D98273C25A2DA2D00002800430000000000000053444DD2011FD1118E63006097D2DF4834C9D2777977D811907000065B840D9C00002800430000000000000051444DD2011FD1118E63006097D2DF4834C9D2777977D811907000065B840D9C430000001C14000000C3016700003400A50900000700008001000000AA020000008000000C000080536368477269640046050000E83500004B756C6C616E6963696C617200003000A50900000700008002000000A202000000800000080000805363684772696400529FFFFF6A950000436968617A6C617200007800A5090000070000800300000062000000018000004D000080436F6E74726F6C00EFB2FFFF4354000052656C6174696F6E736869702027464B5F436968617A6C61725F4B756C6C616E6963696C617227206265747765656E20274B756C6C616E6963696C61722720616E642027436968617A6C61722700000000002800B50100000700008004000000310000006300000002800000436F6E74726F6C0074EFFFFFF888000000003800A50900000700008005000000AC020000008000000D00008053636847726964004CD2FFFF6A950000436968617A526573696D6C657208000000007800A5090000070000800600000052000000018000004F000080436F6E74726F6C00CDC7FFFFE3A1000052656C6174696F6E736869702027464B5F436968617A526573696D6C65725F436968617A6C617227206265747765656E2027436968617A6C61722720616E642027436968617A526573696D6C6572270000002800B50100000700008007000000310000006500000002800000436F6E74726F6C006EC6FFFF29A4000000008000A50900000700008008000000620000000180000057000080436F6E74726F6C00E9E5FFFF4354000052656C6174696F6E736869702027464B5F436968617A526573696D6C65725F4B756C6C616E6963696C617227206265747765656E20274B756C6C616E6963696C61722720616E642027436968617A526573696D6C6572270000002800B50100000700008009000000310000006D00000002800000436F6E74726F6C00700900000E58000000003400A5090000070000800A000000A402000000800000090000805363684772696400D638000064E7FFFF4475797572756C617200000000007800A5090000070000800C00000062000000018000004F000080436F6E74726F6C00891A0000B9FBFFFF52656C6174696F6E736869702027464B5F4475797572756C61725F4B756C6C616E6963696C617227206265747765656E20274B756C6C616E6963696C61722720616E6420274475797572756C6172270000002800B5010000070000800D000000310000006500000002800000436F6E74726F6C00CF1C0000F501000000003400A5090000070000800E000000A402000000800000090000805363684772696400DC0500001EE2FFFF47616C6572696C657200000000007800A5090000070000800F00000062000000018000004F000080436F6E74726F6C00C7180000D8F8FFFF52656C6174696F6E736869702027464B5F47616C6572696C65725F4B756C6C616E6963696C617227206265747765656E20274B756C6C616E6963696C61722720616E64202747616C6572696C6572270000002800B50100000700008010000000310000006500000002800000436F6E74726F6C000D1B0000EC19000000003800A50900000700008011000000AE020000008000000E0000805363684772696400E2D2FFFF30DFFFFF47616C657269526573696D6C6572000000008400A50900000700008012000000620000000180000059000080436F6E74726F6C007FE6FFFF9AFBFFFF52656C6174696F6E736869702027464B5F47616C657269526573696D6C65725F4B756C6C616E6963696C617227206265747765656E20274B756C6C616E6963696C61722720616E64202747616C657269526573696D6C65722700000000002800B50100000700008013000000310000006F00000002800000436F6E74726F6C004B190000CCFFFFFF00007C00A50900000700008014000000520000000180000053000080436F6E74726F6C0077FBFFFF6BEDFFFF52656C6174696F6E736869702027464B5F47616C657269526573696D6C65725F47616C6572696C657227206265747765656E202747616C6572696C65722720616E64202747616C657269526573696D6C6572270000002800B50100000700008015000000310000006900000002800000436F6E74726F6C00EDF9FFFFFBECFFFF00003000A50900000700008016000000A20200000080000008000080536368477269647246050000F88E000048616265726C657200007800A5090000070000801800000062000000018000004D000080436F6E74726F6C00E31800004354000052656C6174696F6E736869702027464B5F48616265726C65725F4B756C6C616E6963696C617227206265747765656E20274B756C6C616E6963696C61722720616E64202748616265726C65722700000000002800B50100000700008019000000310000006300000002800000436F6E74726F6C00040E00007972000000003800A5090000070000801A000000AC020000008000000D000080536368477269640040380000129300004861626572526573696D6C657208000000007800A5090000070000801B00000052000000018000004F000080436F6E74726F6C00C52D0000C99D000052656C6174696F6E736869702027464B5F4861626572526573696D6C65725F48616265726C657227206265747765656E202748616265726C65722720616E6420274861626572526573696D6C6572270000002800B5010000070000801C000000310000006500000002800000436F6E74726F6C000C2C00000FA0000000008000A5090000070000801D000000620000000180000057000080436F6E74726F6C00B51B00004354000052656C6174696F6E736869702027464B5F4861626572526573696D6C65725F4B756C6C616E6963696C617227206265747765656E20274B756C6C616E6963696C61722720616E6420274861626572526573696D6C6572270000002800B5010000070000801E000000310000006D00000002800000436F6E74726F6C009E0C0000677E000000003000A5090000070000801F000000A2020000008000000800008053636847726964006C390000D06B0000566964656F6C617200007800A5090000070000802000000062000000018000004D000080436F6E74726F6C00FE2E00001147000052656C6174696F6E736869702027464B5F566964656F6C61725F4B756C6C616E6963696C617227206265747765656E20274B756C6C616E6963696C61722720616E642027566964656F6C61722772270000002800B50100000700008021000000310000006300000002800000436F6E74726F6C0062290000965F000000003000A50900000700008022000000A202000000800000080000805363684772696400EE6CFFFF74AAFFFF4D6573616A6C617200003000A50900000700008023000000A2020000008000000800008053636847726964724CD2FFFF2E3B000050726F6A656C657200007800A5090000070000802400000062000000018000004D000080436F6E74726F6C72C7FAFFFFB944000052656C6174696F6E736869702027464B5F50726F6A656C65725F4B756C6C616E6963696C617227206265747765656E20274B756C6C616E6963696C61722720616E64202750726F6A656C65722700000000002800B50100000700008025000000310000006300000002800000436F6E74726F6C72D1F2FFFF4944000000003800A50900000700008026000000AC020000008000000D00008053636847726964724CD2FFFF0618000050726F6A65526573696D6C657208000000007800A5090000070000802700000052000000018000004F000080436F6E74726F6C72CDE5FFFFC02E000052656C6174696F6E736869702027464B5F50726F6A65526573696D6C65725F50726F6A656C657227206265747765656E202750726F6A656C65722720616E64202750726F6A65526573696D6C6572270000002800B50100000700008028000000310000006500000002800000436F6E74726F6C7213E8FFFFA835000000008000A50900000700008029000000620000000180000057000080436F6E74726F6C00C7FAFFFF6F23000052656C6174696F6E736869702027464B5F50726F6A65526573696D6C65725F4B756C6C616E6963696C617227206265747765656E20274B756C6C616E6963696C61722720616E64202750726F6A65526573696D6C6572270000002800B5010000070000802A000000310000006D00000002800000436F6E74726F6C00F0EDFFFFDE37000000003000A5090000070000802C000000A2020000008000000800008053636847726964004CD2FFFFC05D0000476F7275736C657200007800A5090000070000803000000062000000018000004D000080436F6E74726F6C00C7FAFFFF7B46000052656C6174696F6E736869702027464B5F476F7275736C65725F4B756C6C616E6963696C617227206265747765656E20274B756C6C616E6963696C61722720616E642027476F7275736C65722700000000002800B50100000700008031000000310000006300000002800000436F6E74726F6C0074F1FFFFFF54000000003800A50900000700008037000000AE020000008000000E00008053636847726964006C390000C62A00004C61626F726174757661726C6172000000003000A50900000700008038000000A2020000008000000800008053636847726964726C3900009E0700004C6162526573696D00007C00A50900000700008039000000520000000180000051000080436F6E74726F6C72C14B0000581E000052656C6174696F6E736869702027464B5F4C6162526573696D5F4C61626F726174757661726C617227206265747765656E20274C61626F726174757661726C61722720616E6420274C6162526573696D2700000000002800B5010000070000803A000000310000006700000002800000436F6E74726F6C72074E00004025000000007800A5090000070000803B00000062000000018000004D000080436F6E74726F6C00FE2E00000713000052656C6174696F6E736869702027464B5F4C6162526573696D5F4B756C6C616E6963696C617227206265747765656E20274B756C6C616E6963696C61722720616E6420274C6162526573696D2700000000002800B5010000070000803C000000310000006300000002800000436F6E74726F6C0041370000682E000000008400A5090000070000803D000000620000000180000059000080436F6E74726F6C6DFE2E00000335000052656C6174696F6E736869702027464B5F4C61626F726174757661726C61725F4B756C6C616E6963696C617227206265747765656E20274B756C6C616E6963696C61722720616E6420274C61626F726174757661726C61722700000000002800B5010000070000803E000000310000006F00000002800000436F6E74726F6C00F5370000FB40000000003400A5090000070000803F000000A6020000008000000A0000805363684772696472EE6CFFFFF88E000052616E646576756C6172726C00007C00A50900000700008051000000620000000180000051000080436F6E74726F6C00C97EFFFF4354000052656C6174696F6E736869702027464B5F52616E646576756C61725F4B756C6C616E6963696C617227206265747765656E20274B756C6C616E6963696C61722720616E64202752616E646576756C61722700610000002800B50100000700008052000000310000006700000002800000436F6E74726F6C0068050000806E000000007400A50900000700008053000000520000000180000049000080436F6E74726F6C6D8F94FFFFE3A1000052656C6174696F6E736869702027464B5F52616E646576756C61725F436968617A6C617227206265747765656E2027436968617A6C61722720616E64202752616E646576756C6172276C617200002800B50100000700008054000000310000005F00000002800000436F6E74726F6C00F093FFFF73A1000000007C00A50900000700008055000000620000000180000052000080436F6E74726F6C008B80FFFF4354000052656C6174696F6E736869702027464B5F52616E646576756C61725F4B756C6C616E6963696C61723127206265747765656E20274B756C6C616E6963696C61722720616E64202752616E646576756C617227720000002800B50100000700008056000000310000006900000002800000436F6E74726F6C6DB0D3FFFF4488000000003800A50900000700008057000000AC020000008000000D000080536368477269646D3A6B0000F88E000047656E656C20417961726C617208000000008000A50900000700008058000000620000000180000057000080436F6E74726F6C00771D00004354000052656C6174696F6E736869702027464B5F47656E656C20417961726C61725F4B756C6C616E6963696C617227206265747765656E20274B756C6C616E6963696C61722720616E64202747656E656C20417961726C6172270000002800B50100000700008059000000310000006D00000002800000436F6E74726F6C7252270000628C000000003000A5090000070000805A000000A0020000008000000700008053636847726964006C390000004B0000466F726D6C61720000007400A5090000070000805B00000062000000018000004B000080436F6E74726F6C00FE2E00004F45000052656C6174696F6E736869702027464B5F466F726D6C61725F4B756C6C616E6963696C617227206265747765656E20274B756C6C616E6963696C61722720616E642027466F726D6C6172276C00002800B5010000070000805C000000310000006100000002800000436F6E74726F6C72F53700004D4A000000003000A5090000070000805D0000009E020000008000000600008053636847726964728CA00000F88E0000536C69646572647200007400A5090000070000805E000000620000000180000049000080436F6E74726F6C6D391F00004354000052656C6174696F6E736869702027464B5F536C696465725F4B756C6C616E6963696C617227206265747765656E20274B756C6C616E6963696C61722720616E642027536C696465722772276C00002800B5010000070000805F000000310000005F00000002800000436F6E74726F6C6DB85E0000AE8B0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002143341208000000E42A0000122100007856341207000000140100004B0075006C006C0061006E006900630069006C0061007200000000000000000018879A0805000000000000000300000000000000000000000001000000010000000000009862A066EC60A0669862A0665F50415553455F434F4E54494E5545000041636365707453746F70000B4000000B002800000003000000290000000A00008023080000006401000003000080220B000000FFFF6D01000022082000007D01000000626F6F6C65616E00004D617070696E67537472696E67730001000000850100000057696E33324150497C5365727669636520537472756374757265737C534552564943455F5354415455000000000000000000000000000005000000540000002C0000002C0000002C000000340000000000000000000000E42A000012210000000000002D0100000D0000000C000000070000001C010000F7080000530700000C030000DE030000B2020000DD040000CD05000075030000CD050000530700000A0500000000000001000000F2130000111C000000000000070000000700000002000000020000001C010000E80800000000000001000000F21300000804000000000000000000000000000002000000020000001C010000F70800000100000000000000F2130000CF03000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000006200000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000D0000004B0075006C006C0061006E006900630069006C006100720000002143341208000000A7290000F61B000078563412070000001401000043006900680061007A006C006100720000000000000000000068914000000000000010400100000000000000000000000E000000050000001801000000000000000000000000000000000000F80000000000000005000000000000000000000002000000000000000068914000000000000000000000000000689140000000000000004004000000200000003000000000000000000000000060914000000000000010400000000000000040000000000000004000000000000000000100000000000000050000000000000040000000010000000000000000000040000000000000104004000000200000002000000000000000000000000000000005000000540000002C0000002C0000002C000000340000000000000000000000A7290000F61B0000000000002D0100000D0000000C000000070000001C010000F7080000530700000C030000DE030000B2020000DD040000CD05000075030000CD050000530700000A0500000000000001000000F21300002D17000000000000060000000600000002000000020000001C010000E80800000000000001000000F21300000804000000000000000000000000000002000000020000001C010000F70800000100000000000000F2130000CF03000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000005A00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000900000043006900680061007A006C0061007200000004000B0006180000FA56000006180000FF8A00006AB4FFFFFF8A00006AB4FFFF6A9500000000000002000000F0F0F0000000000000000000000000000000000001000000040000000000000074EFFFFFF8880000810C00005801000031000000010000020000810C000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61180046004B005F0043006900680061007A006C00610072005F004B0075006C006C0061006E006900630069006C00610072002143341208000000A7290000F61B000078563412070000001401000043006900680061007A0052006500730069006D006C006500720000006E003D0032002E0030002E0030002E0030002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D0062003700370061003500630035003600310039003300340065003000380039000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000540000002C0000002C0000002C000000340000000000000000000000A7290000F61B0000000000002D0100000D0000000C000000070000001C010000F7080000530700000C030000DE030000B2020000DD040000CD05000075030000CD050000530700000A0500000000000001000000F21300002D17000000000000060000000600000002000000020000001C010000F70800000000000001000000F21300000804000000000000000000000000000002000000020000001C010000F70800000100000000000000F2130000CF03000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000006400000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000E00000043006900680061007A0052006500730069006D006C0065007200000002000B00F9C8FFFF7AA300004CD2FFFF7AA300000000000002000000F0F0F000000000000000000000000000000000000100000007000000000000006EC6FFFF29A400006B0E000058010000320000000100000200006B0E000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61190046004B005F0043006900680061007A0052006500730069006D006C00650072005F0043006900680061007A006C006100720004000B00C8190000FA560000C8190000B38B000064E7FFFFB38B000064E7FFFF6A9500000000000002000000F0F0F00000000000000000000000000000000000010000000900000000000000700900000E580000A90F00005801000001000000010000020000A90F000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D611D0046004B005F0043006900680061007A0052006500730069006D006C00650072005F004B0075006C006C0061006E006900630069006C00610072002143341208000000A7290000101700007856341207000000140100004400750079007500720075006C0061007200000064006F00770073002E0046006F0072006D0073002C002000560065007200730069006F006E003D0034002E0030002E0030002E0030002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D00620037003700610035006300350036003100390033003400650030003800390000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000540000002C0000002C0000002C000000340000000000000000000000A729000010170000000000002D0100000D0000000C000000070000001C010000F7080000530700000C030000DE030000B2020000DD040000CD05000075030000CD050000530700000A0500000000000001000000F21300002C12000000000000050000000500000002000000020000001C010000E80800000000000001000000F21300000804000000000000000000000000000002000000020000001C010000F70800000100000000000000F2130000CF03000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000005C00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000A0000004400750079007500720075006C0061007200000004000B00201C0000E8350000201C00002F010000EE4D00002F010000EE4D000074FEFFFF0000000002000000F0F0F00000000000000000000000000000000000010000000D00000000000000CF1C0000F5010000840D00005801000032000000010000020000840D000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61190046004B005F004400750079007500720075006C00610072005F004B0075006C006C0061006E006900630069006C00610072002143341208000000A729000075190000785634120700000014010000470061006C006500720069006C0065007200000064006F00770073002E0046006F0072006D0073002C002000560065007200730069006F006E003D0034002E0030002E0030002E0030002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D00620037003700610035006300350036003100390033003400650030003800390000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000540000002C0000002C0000002C000000340000000000000000000000A729000075190000000000002D0100000D0000000C000000070000001C010000F7080000530700000C030000DE030000B2020000DD040000CD05000075030000CD050000530700000A0500000000000001000000F2130000AC14000000000000060000000600000002000000020000001C010000E80800000000000001000000F21300000804000000000000000000000000000002000000020000001C010000F70800000100000000000000F2130000CF03000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000005C00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000A000000470061006C006500720069006C0065007200000004000B005E1A0000E83500005E1A00007B000000F41A00007B000000F41A000093FBFFFF0000000002000000F0F0F000000000000000000000000000000000000100000010000000000000000D1B0000EC1900009D0C0000580100002F0000000100000200009D0C000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61190046004B005F00470061006C006500720069006C00650072005F004B0075006C006C0061006E006900630069006C00610072002143341208000000C1290000251F0000785634120700000014010000470061006C0065007200690052006500730069006D006C006500720000000000000010400100000000000000000000000E000000050000001801000000000000000000000000000000000000F80000000000000005000000000000000000000002000000000000000068914000000000000000000000000000689140000000000000004004000000200000003000000000000000000000000060914000000000000010400000000000000040000000000000004000000000000000000100000000000000050000000000000040000000010000000000000000000040000000000000104004000000200000002000000000000000000000000000000005000000540000002C0000002C0000002C000000340000000000000000000000C1290000251F0000000000002D0100000D0000000C000000070000001C010000F7080000530700000C030000DE030000B2020000DD040000CD05000075030000CD050000530700000A0500000000000001000000F21300002D17000000000000060000000600000002000000020000001C010000F70800000000000001000000F2130000EC0C000000000000030000000300000002000000020000001C010000F70800000100000000000000F2130000CF03000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000006600000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000F000000470061006C0065007200690052006500730069006D006C0065007200000004000B009C180000E83500009C1800007B000000FAE7FFFF7B000000FAE7FFFF55FEFFFF0000000002000000F0F0F000000000000000000000000000000000000100000013000000000000004B190000CCFFFFFFC50F00005801000032000000010000020000C50F000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D611E0046004B005F00470061006C0065007200690052006500730069006D006C00650072005F004B0075006C006C0061006E006900630069006C006100720002000B00DC05000002EFFFFFA3FCFFFF02EFFFFF0000000002000000F0F0F00000000000000000000000000000000000010000001500000000000000EDF9FFFFFBECFFFFA50E00005801000032000000010000020000A50E000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D611B0046004B005F00470061006C0065007200690052006500730069006D006C00650072005F00470061006C006500720069006C00650072002143341208000000AB2900004B210000785634120700000014010000480061006200650072006C0065007200000065007200730069006F006E003D0032002E0030002E0030002E0030002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D0062003700370061003500630035003600310039003300340065003000380039000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000540000002C0000002C0000002C000000340000000000000000000000AB2900004B210000000000002D0100000D0000000C000000070000001C010000F7080000530700000C030000DE030000B2020000DD040000CD05000075030000CD050000530700000A0500000000000001000000F2130000AC14000000000000060000000600000002000000020000001C010000E80800000000000001000000F21300000804000000000000000000000000000002000000020000001C010000F70800000100000000000000F2130000CF03000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000005A00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F00000009000000480061006200650072006C0065007200000004000B008A1B0000FA5600008A1B0000678C00005E1A0000678C00005E1A0000F88E00000000000002000000F0F0F00000000000000000000000000000000000010000001900000000000000040E000079720000D70C00005801000032000000010000020000D70C000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61180046004B005F00480061006200650072006C00650072005F004B0075006C006C0061006E006900630069006C00610072002143341208000000A7290000751900007856341207000000140100004800610062006500720052006500730069006D006C006500720000002E0046006F0072006D0073002C002000560065007200730069006F006E003D0034002E0030002E0030002E0030002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D00620037003700610035006300350036003100390033003400650030003800390000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000540000002C0000002C0000002C000000340000000000000000000000A729000075190000000000002D0100000D0000000C000000070000001C010000F7080000530700000C030000DE030000B2020000DD040000CD05000075030000CD050000530700000A0500000000000001000000F2130000AC14000000000000060000000600000002000000020000001C010000E80800000000000001000000F21300000804000000000000000000000000000002000000020000001C010000F70800000100000000000000F2130000CF03000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000006400000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000E0000004800610062006500720052006500730069006D006C0065007200000002000B00F12E0000609F000040380000609F00000000000002000000F0F0F00000000000000000000000000000000000010000001C000000000000000C2C00000FA00000180F00005801000032000000010000020000180F000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61190046004B005F004800610062006500720052006500730069006D006C00650072005F00480061006200650072006C006500720004000B004C1D0000FA5600004C1D0000678C0000584D0000678C0000584D0000129300000000000002000000F0F0F00000000000000000000000000000000000010000001E000000000000009E0C0000677E0000FF0F00005801000024000000010000020000FF0F000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D611D0046004B005F004800610062006500720052006500730069006D006C00650072005F004B0075006C006C0061006E006900630069006C00610072002143341208000000A72900007519000078563412070000001401000056006900640065006F006C006100720000000000000000000068914000000000000010400100000000000000000000000E000000050000001801000000000000000000000000000000000000F80000000000000005000000000000000000000002000000000000000068914000000000000000000000000000689140000000000000004004000000200000003000000000000000000000000060914000000000000010400000000000000040000000000000004000000000000000000100000000000000050000000000000040000000010000000000000000000040000000000000104004000000200000002000000000000000000000000000000005000000540000002C0000002C0000002C000000340000000000000000000000A729000075190000000000002D0100000D0000000C000000070000001C010000F7080000530700000C030000DE030000B2020000DD040000CD05000075030000CD050000530700000A0500000000000001000000F2130000AC14000000000000060000000600000002000000020000001C010000E80800000000000001000000F21300000804000000000000000000000000000002000000020000001C010000F70800000100000000000000F2130000CF03000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000005A00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000900000056006900640065006F006C0061007200000004000B002A300000A848000092360000A848000092360000B47800006C390000B47800000000000002000000F0F0F0000000000000000000000000000000000001000000210000000000000062290000965F0000810C00005801000032000000010000020000810C000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61180046004B005F0056006900640065006F006C00610072005F004B0075006C006C0061006E006900630069006C00610072002143341208000000822C0000352500007856341207000000140100004D006500730061006A006C006100720000006E0064006F00770073002E0046006F0072006D0073002C002000560065007200730069006F006E003D0034002E0030002E0030002E0030002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D00620037003700610035006300350036003100390033003400650030003800390000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000540000002C0000002C0000002C000000340000000000000000000000822C000035250000000000002D0100000D0000000C000000070000001C010000F7080000530700000C030000DE030000B2020000DD040000CD05000075030000CD050000530700000A0500000000000001000000F21300009119000000000000090000000900000002000000020000001C010000E80800000000000001000000F21300002808000000000000010000000100000002000000020000001C010000F70800000100000000000000B1130000CF03000000000000000000000000000002000000020000001C010000F70800000000000000000000551F0000921E000000000000000000000D00000004000000040000001C01000028050000EB0500004803000078563412040000005A00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000090000004D006500730061006A006C006100720000002143341208000000A729000075190000785634120700000014010000500072006F006A0065006C006500720000000000A8EC4E1400000000A8EC4E14381B3C1405000000000000000300000000000000000000000001000000010000000000009062896AA037936A5425CA6AA840926A7C6A3A0DE0AA926A8840926AA840926A9062896A3861896A00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000540000002C0000002C0000002C000000340000000000000000000000A729000075190000000000002D0100000D0000000C000000070000001C010000F7080000530700000C030000DE030000B2020000DD040000CD05000075030000CD050000530700000A0500000000000001000000F2130000AC14000000000000060000000600000002000000020000001C010000F70800000000000001000000F21300000804000000000000000000000000000002000000020000001C010000F70800000100000000000000F2130000CF03000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000005A00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F00000009000000500072006F006A0065006C0065007200000004000B0046050000504600002AFEFFFF504600002AFEFFFF12480000F3FBFFFF124800000000000002000000F0F0F00000000000000000000000000000000000010000002500000000000000D1F2FFFF49440000630C00005801000032000000010000020000630C000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61180046004B005F00500072006F006A0065006C00650072005F004B0075006C006C0061006E006900630069006C00610072002143341208000000A729000075190000785634120700000014010000500072006F006A00650052006500730069006D006C006500720000002E0046006F0072006D0073002C002000560065007200730069006F006E003D0034002E0030002E0030002E0030002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D00620037003700610035006300350036003100390033003400650030003800390000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000540000002C0000002C0000002C000000340000000000000000000000A729000075190000000000002D0100000D0000000C000000070000001C010000F7080000530700000C030000DE030000B2020000DD040000CD05000075030000CD050000530700000A0500000000000001000000F2130000AC14000000000000060000000600000002000000020000001C010000F70800000000000001000000F21300000804000000000000000000000000000002000000020000001C010000F70800000100000000000000F2130000CF03000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000006400000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000E000000500072006F006A00650052006500730069006D006C0065007200000002000B0064E7FFFF2E3B000064E7FFFF7B3100000000000002000000F0F0F0000000000000000000000000000000000001000000280000000000000013E8FFFFA8350000320E00005801000032000000010000020000320E000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61190046004B005F00500072006F006A00650052006500730069006D006C00650072005F00500072006F006A0065006C006500720004000B00460500008E4400002AFEFFFF8E4400002AFEFFFFEA240000F3FBFFFFEA2400000000000002000000F0F0F00000000000000000000000000000000000010000002A00000000000000F0EDFFFFDE3700008B0F000058010000320000000100000200008B0F000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D611D0046004B005F00500072006F006A00650052006500730069006D006C00650072005F004B0075006C006C0061006E006900630069006C00610072002143341208000000A72900001017000078563412070000001401000047006F007200750073006C006500720000006E0064006F00770073002E0046006F0072006D0073002C002000560065007200730069006F006E003D0034002E0030002E0030002E0030002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D00620037003700610035006300350036003100390033003400650030003800390000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000540000002C0000002C0000002C000000340000000000000000000000A729000010170000000000002D0100000D0000000C000000070000001C010000F7080000530700000C030000DE030000B2020000DD040000CD05000075030000CD050000530700000A0500000000000001000000F21300002C12000000000000050000000500000002000000020000001C010000E80800000000000001000000F21300000804000000000000000000000000000002000000020000001C010000F70800000100000000000000F2130000CF03000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000005A00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000900000047006F007200750073006C0065007200000004000B004605000012480000DEFEFFFF12480000DEFEFFFF78690000F3FBFFFF786900000000000002000000F0F0F0000000000000000000000000000000000001000000310000000000000074F1FFFFFF540000BB0C00005801000032000000010000020000BB0C000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61180046004B005F0047006F007200750073006C00650072005F004B0075006C006C0061006E006900630069006C00610072002143341208000000CA270000101700007856341207000000140100004C00610062006F0072006100740075007600610072006C0061007200000046006F0072006D0073002C002000560065007200730069006F006E003D0034002E0030002E0030002E0030002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D00620037003700610035006300350036003100390033003400650030003800390000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000540000002C0000002C0000002C000000340000000000000000000000CA27000010170000000000002D0100000D0000000C000000070000001C0100007F080000F90600000C030000DE030000B2020000A1040000CD05000075030000CD050000530700000A05000000000000010000001F1300002C12000000000000050000000500000002000000020000001C0100006108000000000000010000001F1300000804000000000000000000000000000002000000020000001C0100007F08000001000000000000001F130000CF03000000000000000000000000000002000000020000001C0100007F0800000000000000000000F52F0000F823000000000000000000000D00000004000000040000001C0100007F080000140A00002706000078563412040000006600000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000F0000004C00610062006F0072006100740075007600610072006C006100720000002143341208000000CA270000751900007856341207000000140100004C006100620052006500730069006D00000000000000000000000000050000000100000000000000000000000000000000000000060000000A000000000000000000000000000000000000000000000001000000030000000000000000000000000000000000000000000000010000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000E45EF975FC2C1113FC2C1113000000000000000000000000040000000000000000000000010000000300000000000000302D11130000000000000000402D1113FEFFFFFF000000000C000000020000000100000000000000000000000000000005000000540000002C0000002C0000002C000000340000000000000000000000CA27000075190000000000002D0100000D0000000C000000070000001C0100007F080000F90600000C030000DE030000B2020000A1040000CD05000075030000CD050000530700000A05000000000000010000001F130000AC14000000000000060000000600000002000000020000001C0100007008000000000000010000001F1300000804000000000000000000000000000002000000020000001C0100007F08000001000000000000001F130000CF03000000000000000000000000000002000000020000001C0100007F0800000000000000000000F52F0000F823000000000000000000000D00000004000000040000001C0100007F080000140A00002706000078563412040000005A00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000090000004C006100620052006500730069006D00000002000B00584D0000C62A0000584D0000132100000000000002000000F0F0F00000000000000000000000000000000000010000003A00000000000000074E000040250000C50F00005801000032000000010000020000C50F000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D611A0046004B005F004C006100620052006500730069006D005F004C00610062006F0072006100740075007600610072006C006100720004000B002A30000062430000923600006243000092360000821400006C390000821400000000000002000000F0F0F00000000000000000000000000000000000010000003C0000000000000041370000682E00004A0D000058010000320000000100000200004A0D000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D61180046004B005F004C006100620052006500730069006D005F004B0075006C006C0061006E006900630069006C006100720004000B002A300000244500004637000024450000463700007E3600006C3900007E3600000000000002000000F0F0F00000000000000000000000000000000000010000003E00000000000000F5370000FB4000003810000058010000320000000100000200003810000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D611E0046004B005F004C00610062006F0072006100740075007600610072006C00610072005F004B0075006C006C0061006E006900630069006C00610072002143341208000000CD28000004290000785634120700000014010000520061006E0064006500760075006C0061007200000071006C005300650072007600650072002E004D0061006E006100670065006D0065006E0074002E0058004500760065006E0074002C002000560065007200730069006F006E003D00310031002E0030002E0030002E0030002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D00380039003800340035006400630064003800300038003000630063003900310000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000540000002C0000002C0000002C000000340000000000000000000000CD28000004290000000000002D0100000D0000000C000000070000001C0100007F080000F90600000C030000DE030000B2020000A1040000CD05000075030000CD050000530700000A05000000000000010000001F130000111C000000000000080000000800000002000000020000001C0100007008000000000000010000001F1300000804000000000000000000000000000002000000020000001C0100007F08000001000000000000001F130000CF03000000000000000000000000000002000000020000001C0100007F0800000000000000000000F52F0000F823000000000000000000000D00000004000000040000001C0100007F080000140A00002706000078563412040000005E00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000B000000520061006E0064006500760075006C0061007200000004000B0082140000FA56000082140000978900004480FFFF978900004480FFFFF88E00000000000002000000F0F0F0000000000000000000000000000000000001000000520000000000000068050000806E00006B0E0000580100000C0000000100000200006B0E000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D611A0046004B005F00520061006E0064006500760075006C00610072005F004B0075006C006C0061006E006900630069006C006100720002000B00529FFFFF7AA30000BB95FFFF7AA300000000000002000000F0F0F00000000000000000000000000000000000010000005400000000000000F093FFFF73A100002E0D000058010000320000000100000200002E0D000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D61160046004B005F00520061006E0064006500760075006C00610072005F0043006900680061007A006C006100720004000B0044160000FA560000441600004B8A00000682FFFF4B8A00000682FFFFF88E00000000000002000000F0F0F00000000000000000000000000000000000010000005600000000000000B0D3FFFF44880000180F00005801000032000000010000020000180F000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D611B0046004B005F00520061006E0064006500760075006C00610072005F004B0075006C006C0061006E006900630069006C0061007200310021433412080000002B2C000097180000785634120700000014010000470065006E0065006C00200041007900610072006C006100720000006E0061006D0065002C002000760061006C00750065002000460052004F004D0020007300790073002E0065007800740065006E006400650064005F00700072006F0070006500720074006900650073002000570048004500520045002000280063006C0061007300730020003D00200031002900200041004E004400200028006D0069006E006F0072005F006900640020003D00200030002900200041004E004400200028006D0061006A006F0072005F006900640020003D0020004F0042004A004500430054005F004900440028004E00000000000000000000000000000005000000540000002C0000002C0000002C0000003400000000000000000000002B2C000097180000000000002D0100000D0000000C000000070000001C0100007F080000F90600000C030000DE030000B2020000A1040000CD05000075030000CD050000530700000A05000000000000010000001F1300000804000000000000000000000000000002000000020000001C0100007F08000000000000010000001F1300000804000000000000000000000000000002000000020000001C0100007F08000001000000000000001F1300000804000000000000000000000000000002000000020000001C0100007F0800000000000000000000F52F0000F823000000000000000000000D00000004000000040000001C0100007F080000140A00002706000078563412040000006400000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000E000000470065006E0065006C00200041007900610072006C0061007200000004000B000E1F0000FA5600000E1F0000B38B00007E810000B38B00007E810000F88E00000000000002000000F0F0F0000000000000000000000000000000000001000000590000000000000052270000628C00008B0F000058010000320000000100000200008B0F000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D611D0046004B005F00470065006E0065006C00200041007900610072006C00610072005F004B0075006C006C0061006E006900630069006C00610072002143341208000000B52700009C17000078563412070000001401000046006F0072006D006C00610072000000560065007200730069006F006E003D0032002E0030002E0030002E0030002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D0062003700370061003500630035003600310039003300340065003000380039000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000540000002C0000002C0000002C000000340000000000000000000000B52700009C170000000000002D0100000D0000000C000000070000001C0100007F080000F90600000C030000DE030000B2020000A1040000CD05000075030000CD050000530700000A05000000000000010000001F1300000804000000000000000000000000000002000000020000001C0100007F08000000000000010000001F1300000804000000000000000000000000000002000000020000001C0100007F08000001000000000000001F1300000804000000000000000000000000000002000000020000001C0100007F0800000000000000000000F52F0000F823000000000000000000000D00000004000000040000001C0100007F080000140A00002706000078563412040000005800000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000800000046006F0072006D006C0061007200000004000B002A300000E646000046370000E646000046370000B85600006C390000B85600000000000002000000F0F0F00000000000000000000000000000000000010000005C00000000000000F53700004D4A0000470C00005801000032000000010000020000470C000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D61170046004B005F0046006F0072006D006C00610072005F004B0075006C006C0061006E006900630069006C00610072002143341208000000B5270000D916000078563412070000001401000053006C006900640065007200000000000001000010010000440000000200000001000000C800000000000000D800000003000000010000000001000000000000446174615F5053004D756C7469706C7952616469616C4772616469656E7443656E74657265645F5053315F436F6E7374616E745461626C6500666C48616C66546578656C53697A654E6F726D616C697A656400AB000003000100010001000000000000007D00000098000000050000000100010001000100A80000004C000000B0000000050000000100010001000100C00000004D756C7469706C7952616469616C4772616469656E7443656E74000000000000000000000000000005000000540000002C0000002C0000002C000000340000000000000000000000B5270000D9160000000000002D0100000D0000000C000000070000001C0100007F080000F90600000C030000DE030000B2020000A1040000CD05000075030000CD050000530700000A05000000000000010000001F1300000804000000000000000000000000000002000000020000001C0100007F08000000000000010000001F1300000804000000000000000000000000000002000000020000001C0100007F08000001000000000000001F1300000804000000000000000000000000000002000000020000001C0100007F0800000000000000000000F52F0000F823000000000000000000000D00000004000000040000001C0100007F080000140A00002706000078563412040000005600000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000700000053006C006900640065007200000004000B00D0200000FA560000D0200000FF8A000078B40000FF8A000078B40000F88E00000000000002000000F0F0F00000000000000000000000000000000000010000005F00000000000000B85E0000AE8B0000260B0000580100003E000000010000020000260B000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D61160046004B005F0053006C0069006400650072005F004B0075006C006C0061006E006900630069006C006100720000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000FEFFFFFFFEFFFFFF0400000005000000060000000700000008000000090000000A0000000B0000000C0000000D0000000E0000000F000000100000001100000012000000130000001400000015000000160000001700000018000000FEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0100FEFF030A0000FFFFFFFF00000000000000000000000000000000170000004D6963726F736F66742044445320466F726D20322E300010000000456D626564646564204F626A6563740000000000F439B271000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010003000000000000000C0000000B0000004E61BC00000000000000000000000000000000000000000000000000000000000000000000000000000000000000DBE6B0E91C81D011AD5100A0C90F573900000200407351751E39D201020200001048450000000000000000000000000000000000700100004400610074006100200053006F0075007200630065003D0055004700550052004B0049004C00490043005C004D005300530051004C003B0049006E0069007400690061006C00200043006100740061006C006F0067003D0045005400550059005500540041004D003B0049006E00740065006700720061007400650064002000530065006300750072006900740079003D0054007200750065003B004D0075006C007400690070006C00650041006300740069007600650052006500730075006C00740053006500740073003D00460061006C00730065003B005000610063006B00650074002000530069007A0065003D0034003000390036003B004100700070006C00690063000300440064007300530074007200650061006D000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000160002000300000006000000FFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000330000007C3600000000000053006300680065006D00610020005500440056002000440065006600610075006C0074000000000000000000000000000000000000000000000000000000000026000200FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000020000001600000000000000440053005200450046002D0053004300480045004D0041002D0043004F004E00540045004E0054005300000000000000000000000000000000000000000000002C0002010500000007000000FFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000003000000460500000000000053006300680065006D00610020005500440056002000440065006600610075006C007400200050006F007300740020005600360000000000000000000000000036000200FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000001900000012000000000000000C0000001A4F0000276F00000100260000007300630068005F006C006100620065006C0073005F00760069007300690062006C0065000000010000000B0000001E0000007757FFFFE98CFFFF0D4E00008A6D00006400000000000000000000000000000000000000000000000000010000000100000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200380030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C0031003600360035000000020000000200000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200380030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C0031003600360035000000030000000300000000000000420000000155831301000000640062006F00000046004B005F0043006900680061007A006C00610072005F004B0075006C006C0061006E006900630069006C006100720000000000000000000000C402000000000400000004000000030000000800000001265A0090265A000000000000000000AD070000000000050000000500000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C0031003600360035000000060000000600000000000000440000000155831301000000640062006F00000046004B005F0043006900680061007A0052006500730069006D006C00650072005F0043006900680061007A006C006100720000000000000000000000C402000000000700000007000000060000000800000001235A0010235A000000000000000000AD0700000000000800000008000000000000004C0000000102483601000000640062006F00000046004B005F0043006900680061007A0052006500730069006D006C00650072005F004B0075006C006C0061006E006900630069006C006100720000000000000000000000C402000000000900000009000000080000000800000001194602681946020000000000000000AD0700000000000A0000000A00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200380030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C00310036003600350000000C0000000C00000000000000440000000155831301000000640062006F00000046004B005F004400750079007500720075006C00610072005F004B0075006C006C0061006E006900630069006C006100720000000000000000000000C402000000000D0000000D0000000C00000008000000011E4602281E46020000000000000000AD0700000000000E0000000E00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200380030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C00310036003600350000000F0000000F00000000000000440000000155831301000000640062006F00000046004B005F00470061006C006500720069006C00650072005F004B0075006C006C0061006E006900630069006C006100720000000000000000000000C4020000000010000000100000000F0000000800000001184602281846020000000000000000AD070000000000110000001100000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C00310036003600350000001200000012000000000000004E000000014A825D01000000640062006F00000046004B005F00470061006C0065007200690052006500730069006D006C00650072005F004B0075006C006C0061006E006900630069006C006100720000000000000000000000C402000000001300000013000000120000000800000001DE3E08B0DE3E080000000000000000AD070000000000140000001400000000000000480000000155831301000000640062006F00000046004B005F00470061006C0065007200690052006500730069006D006C00650072005F00470061006C006500720069006C006500720000000000000000000000C402000000001500000015000000140000000800000001E83E08F0E83E080000000000000000AD070000000000160000001600000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200380030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C0031003600360035000000180000001800000000000000420000000100000001000000640062006F00000046004B005F00480061006200650072006C00650072005F004B0075006C006C0061006E006900630069006C006100720000000000000000000000C402000000001900000019000000180000000800000001ED3E08F0ED3E080000000000000000AD0700000000001A0000001A00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200380030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C00310036003600350000001B0000001B00000000000000440000000100000001000000640062006F00000046004B005F004800610062006500720052006500730069006D006C00650072005F00480061006200650072006C006500720000000000000000000000C402000000001C0000001C0000001B0000000800000001C0430868C043080000000000000000AD0700000000001D0000001D000000000000004C000000014A825D01000000640062006F00000046004B005F004800610062006500720052006500730069006D006C00650072005F004B0075006C006C0061006E006900630069006C006100720000000000000000000000C402000000001E0000001E0000001D0000000800000001C0430828C043080000000000000000AD0700000000001F0000001F00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200380030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C00310036003600350000002000000020000000000000004200000001906F5801000000640062006F00000046004B005F0056006900640065006F006C00610072005F004B0075006C006C0061006E006900630069006C006100720000000000000000000000C402000000002100000021000000200000000800000001C3430868C343080000000000000000AD070000000000220000002200000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200380030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003C00000034002C0030002C003200380034002C0030002C0031003300320030002C00310032002C0031003500310035002C00310031002C003800340030000000230000002300000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C00310036003600350000002400000024000000000000004200000001906F5801000000640062006F00000046004B005F00500072006F006A0065006C00650072005F004B0075006C006C0061006E006900630069006C006100720000000000000000000000C402000000002500000025000000240000000800000001BF430828BF43080000000000000000AD070000000000260000002600000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C0031003600360035000000270000002700000000000000440000000100000001000000640062006F00000046004B005F00500072006F006A00650052006500730069006D006C00650072005F00500072006F006A0065006C006500720000000000000000000000C402000000002800000028000000270000000800000001E65808F0E658080000000000000000AD0700000000002900000029000000000000004C000000014A825D01000000640062006F00000046004B005F00500072006F006A00650052006500730069006D006C00650072005F004B0075006C006C0061006E006900630069006C006100720000000000000000000000C402000000002A0000002A000000290000000800000001ED5808F0ED58080000000000000000AD0700000000002C0000002C00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200380030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C00310036003600350000003000000030000000000000004200000001C89A6701000000640062006F00000046004B005F0047006F007200750073006C00650072005F004B0075006C006C0061006E006900630069006C006100720000000000000000000000C402000000003100000031000000300000000800000001E95808B0E958080000000000000000AD070000000000370000003700000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003100370035002C0031002C0031003700380035002C0035002C0031003100380035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100340035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003100370035002C00310032002C0032003500380030002C00310031002C0031003500370035000000380000003800000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003100370035002C0031002C0031003700380035002C0035002C0031003100380035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100360030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003100370035002C00310032002C0032003500380030002C00310031002C00310035003700350000003900000039000000000000004600000001C89A6701000000640062006F00000046004B005F004C006100620052006500730069006D005F004C00610062006F0072006100740075007600610072006C006100720000000000000000000000C402000000003A0000003A000000390000000800000001E9580870E958080000000000000000AD0700000000003B0000003B00000000000000420000000100000001000000640062006F00000046004B005F004C006100620052006500730069006D005F004B0075006C006C0061006E006900630069006C006100720000000000000000000000C402000000003C0000003C0000003B0000000800000001E9580830E958080000000000000000AD0700000000003D0000003D000000000000004E00000001EE947401000000640062006F00000046004B005F004C00610062006F0072006100740075007600610072006C00610072005F004B0075006C006C0061006E006900630069006C006100720000000000000000000000C402000000003E0000003E0000003D0000000800000001E8580830E858080000000000000000AD0700000000003F0000003F00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003100370035002C0031002C0031003700380035002C0035002C0031003100380035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100360030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003100370035002C00310032002C0032003500380030002C00310031002C00310035003700350000005100000051000000000000004600000001C89A6701000000640062006F00000046004B005F00520061006E0064006500760075006C00610072005F004B0075006C006C0061006E006900630069006C006100720000000000000000000000C402000000005200000052000000510000000800000001E75808B0E758080000000000000000AD0700000000005300000053000000000000003E00000001FA3B5D01000000640062006F00000046004B005F00520061006E0064006500760075006C00610072005F0043006900680061007A006C006100720000000000000000000000C402000000005400000054000000530000000800000001EC5808B0EC58080000000000000000AD070000000000550000005500000000000000480000000111A13A01000000640062006F00000046004B005F00520061006E0064006500760075006C00610072005F004B0075006C006C0061006E006900630069006C0061007200310000000000000000000000C402000000005600000056000000550000000800000001E4580870E458080000000000000000AD070000000000570000005700000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003100370035002C0031002C0031003700380035002C0035002C0031003100380035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003100370035002C00310032002C0032003500380030002C00310031002C00310035003700350000005800000058000000000000004C0000000102483601000000640062006F00000046004B005F00470065006E0065006C00200041007900610072006C00610072005F004B0075006C006C0061006E006900630069006C006100720000000000000000000000C402000000005900000059000000580000000800000001E3580870E358080000000000000000AD0700000000005A0000005A00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003100370035002C0031002C0031003700380035002C0035002C0031003100380035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003100370035002C00310032002C0032003500380030002C00310031002C00310035003700350000005B0000005B000000000000004000000001FA3B5D01000000640062006F00000046004B005F0046006F0072006D006C00610072005F004B0075006C006C0061006E006900630069006C006100720000000000000000000000C402000000005C0000005C0000005B0000000800000001E2580870E258080000000000000000AD0700000000005D0000005D00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003100370035002C0031002C0031003700380035002C0035002C0031003100380035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003100370035002C00310032002C0032003500380030002C00310031002C00310035003700350000005E0000005E000000000000003E00000001FA3B5D01000000640062006F00000046004B005F0053006C0069006400650072005F004B0075006C006C0061006E006900630069006C006100720000000000000000000000C402000000005F0000005F0000005E0000000800000001BE951378BE95130000000000000000AD0F0000010000780000005E000000010000005D0000005D0000004200000030000000010000002C000000CC000000B300000020000000010000001F000000CF000000B60000001D000000010000001A00000051000000460000001800000001000000160000004B0000004600000012000000010000001100000040000000470000000F000000010000000E00000046000000470000000C000000010000000A0000004C0000004700000008000000010000000500000045000000460000000300000001000000020000003F00000046000000240000000100000023000000C6000000B7000000290000000100000026000000C0000000B70000003B0000000100000038000000BD000000B00000003D0000000100000037000000C3000000AC00000051000000010000003F000000330000004000000055000000010000003F0000003900000046000000580000000100000057000000570000004A0000005B000000010000005A000000C9000000AC000000060000000200000005000000BB000000BA00000053000000020000003F000000BA000000CD000000140000000E00000011000000B6000000C10000001B000000160000001A000000C3000000B400000027000000230000002600000046000000470000003900000037000000380000004200000043000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006100740069006F006E0020004E0061006D0065003D0022004D006900630072006F0073006F00660074002000530051004C00200053006500720076006500720020004D0061006E006100670065006D0065006E0074002000530074007500640069006F0022000000008005001200000045005400550059005500540041004D000000000226001000000046006F0072006D006C0061007200000008000000640062006F000000000226001C000000470065006E0065006C00200041007900610072006C0061007200000008000000640062006F0000000002260016000000520061006E0064006500760075006C0061007200000008000000640062006F00000000022600120000004C006100620052006500730069006D00000008000000640062006F000000000226001E0000004C00610062006F0072006100740075007600610072006C0061007200000008000000640062006F000000000226001200000047006F007200750073006C0065007200000008000000640062006F000000000226001C000000500072006F006A00650052006500730069006D006C0065007200000008000000640062006F0000000002260012000000500072006F006A0065006C0065007200000008000000640062006F00000000022600120000004D006500730061006A006C0061007200000008000000640062006F000000000226001200000056006900640065006F006C0061007200000008000000640062006F000000000226001C0000004800610062006500720052006500730069006D006C0065007200000008000000640062006F0000000002260012000000480061006200650072006C0065007200000008000000640062006F000000000226001E000000470061006C0065007200690052006500730069006D006C0065007200000008000000640062006F0000000002260014000000470061006C006500720069006C0065007200000008000000640062006F00000000022600140000004400750079007500720075006C0061007200000008000000640062006F000000000226001C00000043006900680061007A0052006500730069006D006C0065007200000008000000640062006F000000000226001200000043006900680061007A006C0061007200000008000000640062006F000000000226001A0000004B0075006C006C0061006E006900630069006C0061007200000008000000640062006F000000000224000E00000053006C006900640065007200000008000000640062006F00000001000000D68509B3BB6BF2459AB8371664F0327008004E0000007B00310036003300340043004400440037002D0030003800380038002D0034003200450033002D0039004600410032002D004200360044003300320035003600330042003900310044007D00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010003000000000000000C0000000B0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000062885214);
GO
SET IDENTITY_INSERT [dbo].[sysdiagrams] OFF
GO

-- ----------------------------
-- Table structure for [dbo].[UstMenu]
-- ----------------------------
DROP TABLE [dbo].[UstMenu]
GO
CREATE TABLE [dbo].[UstMenu] (
[Id] int NOT NULL IDENTITY(1,1) ,
[ParentId] int NULL ,
[Adi] nvarchar(60) NOT NULL ,
[Link] nvarchar(70) NULL ,
[Sira] int NOT NULL DEFAULT ((0)) ,
[AktifMi] bit NOT NULL DEFAULT ((1)) ,
[Language] nvarchar(10) NULL DEFAULT ('tr-TR') ,
[YeniSayfadaAc] bit NULL DEFAULT ((0)) 
)


GO
DBCC CHECKIDENT(N'[dbo].[UstMenu]', RESEED, 85)
GO

-- ----------------------------
-- Records of UstMenu
-- ----------------------------
SET IDENTITY_INSERT [dbo].[UstMenu] ON
GO
INSERT INTO [dbo].[UstMenu] ([Id], [ParentId], [Adi], [Link], [Sira], [AktifMi], [Language], [YeniSayfadaAc]) VALUES (N'2', null, N'Anasayfa', null, N'1', N'1', N'tr-TR', N'0');
GO
INSERT INTO [dbo].[UstMenu] ([Id], [ParentId], [Adi], [Link], [Sira], [AktifMi], [Language], [YeniSayfadaAc]) VALUES (N'7', null, N'Hakkımızda', null, N'2', N'1', N'tr-TR', N'0');
GO
INSERT INTO [dbo].[UstMenu] ([Id], [ParentId], [Adi], [Link], [Sira], [AktifMi], [Language], [YeniSayfadaAc]) VALUES (N'12', null, N'Galeri', null, N'3', N'1', N'tr-TR', N'0');
GO
INSERT INTO [dbo].[UstMenu] ([Id], [ParentId], [Adi], [Link], [Sira], [AktifMi], [Language], [YeniSayfadaAc]) VALUES (N'33', null, N'Ekip', null, N'4', N'1', N'tr-TR', N'0');
GO
INSERT INTO [dbo].[UstMenu] ([Id], [ParentId], [Adi], [Link], [Sira], [AktifMi], [Language], [YeniSayfadaAc]) VALUES (N'69', null, N'Projeler', null, N'5', N'1', N'tr-TR', N'0');
GO
INSERT INTO [dbo].[UstMenu] ([Id], [ParentId], [Adi], [Link], [Sira], [AktifMi], [Language], [YeniSayfadaAc]) VALUES (N'70', null, N'İletişim', N'/Iletisim/Iletisim/#contact', N'6', N'1', N'tr-TR', N'0');
GO
INSERT INTO [dbo].[UstMenu] ([Id], [ParentId], [Adi], [Link], [Sira], [AktifMi], [Language], [YeniSayfadaAc]) VALUES (N'71', null, N'Faaliyetler', null, N'7', N'0', N'tr-TR', N'0');
GO
SET IDENTITY_INSERT [dbo].[UstMenu] OFF
GO

-- ----------------------------
-- Table structure for [dbo].[Videolar]
-- ----------------------------
DROP TABLE [dbo].[Videolar]
GO
CREATE TABLE [dbo].[Videolar] (
[Id] int NOT NULL IDENTITY(1,1) ,
[VideoBaslik] nvarchar(1000) NULL ,
[VideoAciklama] ntext NULL ,
[VideoUrl] nvarchar(600) NULL ,
[EkleyenKisiID] int NOT NULL ,
[EklemeTarihi] datetime NOT NULL DEFAULT (getdate()) ,
[VideoResim] nvarchar(MAX) NULL ,
[Language] nvarchar(10) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[Videolar]', RESEED, 8)
GO

-- ----------------------------
-- Records of Videolar
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Videolar] ON
GO
INSERT INTO [dbo].[Videolar] ([Id], [VideoBaslik], [VideoAciklama], [VideoUrl], [EkleyenKisiID], [EklemeTarihi], [VideoResim], [Language]) VALUES (N'8', N'Temkin Dernek Tanıtım Videosu', N'Derneğin Bugüne kadar yapmış olduğu görüntülerden bazı kesitler', N'/Uploads/GaleriVideolari/slider1.mp4', N'1016', N'2021-05-29 17:58:59.000', null, null);
GO
SET IDENTITY_INSERT [dbo].[Videolar] OFF
GO

-- ----------------------------
-- Indexes structure for table AnasayfaDetay
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[AnasayfaDetay]
-- ----------------------------
ALTER TABLE [dbo].[AnasayfaDetay] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Indexes structure for table Cihazlar
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Cihazlar]
-- ----------------------------
ALTER TABLE [dbo].[Cihazlar] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Indexes structure for table EkipDetay
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[EkipDetay]
-- ----------------------------
ALTER TABLE [dbo].[EkipDetay] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Indexes structure for table FormDanGelenMesajlar
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[FormDanGelenMesajlar]
-- ----------------------------
ALTER TABLE [dbo].[FormDanGelenMesajlar] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Indexes structure for table Formlar
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Formlar]
-- ----------------------------
ALTER TABLE [dbo].[Formlar] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Indexes structure for table Galeriler
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Galeriler]
-- ----------------------------
ALTER TABLE [dbo].[Galeriler] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Indexes structure for table GaleriResimler
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[GaleriResimler]
-- ----------------------------
ALTER TABLE [dbo].[GaleriResimler] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Indexes structure for table Genel_Ayarlar
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Genel_Ayarlar]
-- ----------------------------
ALTER TABLE [dbo].[Genel_Ayarlar] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Indexes structure for table HakkimizdaDetay
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[HakkimizdaDetay]
-- ----------------------------
ALTER TABLE [dbo].[HakkimizdaDetay] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Indexes structure for table IcerikDiger
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[IcerikDiger]
-- ----------------------------
ALTER TABLE [dbo].[IcerikDiger] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Indexes structure for table Iletisim
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Iletisim]
-- ----------------------------
ALTER TABLE [dbo].[Iletisim] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Indexes structure for table KadroYonetim
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[KadroYonetim]
-- ----------------------------
ALTER TABLE [dbo].[KadroYonetim] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Indexes structure for table Kullanicilar
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Kullanicilar]
-- ----------------------------
ALTER TABLE [dbo].[Kullanicilar] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Indexes structure for table ProjeDetay
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[ProjeDetay]
-- ----------------------------
ALTER TABLE [dbo].[ProjeDetay] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Indexes structure for table sysdiagrams
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[sysdiagrams]
-- ----------------------------
ALTER TABLE [dbo].[sysdiagrams] ADD PRIMARY KEY ([diagram_id])
GO

-- ----------------------------
-- Uniques structure for table [dbo].[sysdiagrams]
-- ----------------------------
ALTER TABLE [dbo].[sysdiagrams] ADD UNIQUE ([principal_id] ASC, [name] ASC)
GO

-- ----------------------------
-- Indexes structure for table UstMenu
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[UstMenu]
-- ----------------------------
ALTER TABLE [dbo].[UstMenu] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Indexes structure for table Videolar
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Videolar]
-- ----------------------------
ALTER TABLE [dbo].[Videolar] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[Cihazlar]
-- ----------------------------
ALTER TABLE [dbo].[Cihazlar] ADD FOREIGN KEY ([EkleyenKisiID]) REFERENCES [dbo].[Kullanicilar] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[Cihazlar] ADD FOREIGN KEY ([EkleyenKisiID]) REFERENCES [dbo].[Kullanicilar] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[Cihazlar] ADD FOREIGN KEY ([EkleyenKisiID]) REFERENCES [dbo].[Kullanicilar] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[Formlar]
-- ----------------------------
ALTER TABLE [dbo].[Formlar] ADD FOREIGN KEY ([EkleyenKisiID]) REFERENCES [dbo].[Kullanicilar] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[Galeriler]
-- ----------------------------
ALTER TABLE [dbo].[Galeriler] ADD FOREIGN KEY ([EkleyenKisiID]) REFERENCES [dbo].[Kullanicilar] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[Galeriler] ADD FOREIGN KEY ([EkleyenKisiID]) REFERENCES [dbo].[Kullanicilar] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[Galeriler] ADD FOREIGN KEY ([EkleyenKisiID]) REFERENCES [dbo].[Kullanicilar] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[GaleriResimler]
-- ----------------------------
ALTER TABLE [dbo].[GaleriResimler] ADD FOREIGN KEY ([EkleyenKisiID]) REFERENCES [dbo].[Kullanicilar] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[GaleriResimler] ADD FOREIGN KEY ([GaleriID]) REFERENCES [dbo].[Galeriler] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[Genel_Ayarlar]
-- ----------------------------
ALTER TABLE [dbo].[Genel_Ayarlar] ADD FOREIGN KEY ([DuzenleyenKisiID]) REFERENCES [dbo].[Kullanicilar] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[Genel_Ayarlar] ADD FOREIGN KEY ([EkleyenKisiID]) REFERENCES [dbo].[Kullanicilar] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[Videolar]
-- ----------------------------
ALTER TABLE [dbo].[Videolar] ADD FOREIGN KEY ([EkleyenKisiID]) REFERENCES [dbo].[Kullanicilar] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
