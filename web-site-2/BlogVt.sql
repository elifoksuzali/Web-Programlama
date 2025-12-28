/*
Navicat SQL Server Data Transfer

Source Server         : MSSQL
Source Server Version : 150000
Source Host           : DESKTOP-AMNB307:1433
Source Database       : BlogVt
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 150000
File Encoding         : 65001

Date: 2021-06-07 23:53:47
*/


-- ----------------------------
-- Table structure for [dbo].[__EFMigrationsHistory]
-- ----------------------------
DROP TABLE [dbo].[__EFMigrationsHistory]
GO
CREATE TABLE [dbo].[__EFMigrationsHistory] (
[MigrationId] nvarchar(150) NOT NULL ,
[ProductVersion] nvarchar(32) NOT NULL 
)


GO

-- ----------------------------
-- Records of __EFMigrationsHistory
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[Genel_Ayarlar]
-- ----------------------------
DROP TABLE [dbo].[Genel_Ayarlar]
GO
CREATE TABLE [dbo].[Genel_Ayarlar] (
[Id] int NOT NULL IDENTITY(1,1) ,
[EkleyenKisiID] int NOT NULL ,
[SiteAdi] nvarchar(150) NOT NULL ,
[MetaAuthor] nvarchar(50) NULL ,
[MetaKeyWords] ntext NULL ,
[Facebook] nvarchar(500) NULL ,
[Twitter] nvarchar(500) NULL ,
[GooglePlus] nvarchar(500) NULL ,
[Instagram] nvarchar(500) NULL ,
[Tel] nvarchar(30) NULL ,
[EMail] nvarchar(50) NULL ,
[EklemeTarihi] datetime NOT NULL ,
[WebAdres] nvarchar(500) NULL ,
[Adres] nvarchar(500) NULL 
)


GO

-- ----------------------------
-- Records of Genel_Ayarlar
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Genel_Ayarlar] ON
GO
INSERT INTO [dbo].[Genel_Ayarlar] ([Id], [EkleyenKisiID], [SiteAdi], [MetaAuthor], [MetaKeyWords], [Facebook], [Twitter], [GooglePlus], [Instagram], [Tel], [EMail], [EklemeTarihi], [WebAdres], [Adres]) VALUES (N'1', N'1006', N'SELÇUK YILMAZ OFFİCİAL WEBSİTE BLOG', N'aaa', N'cc', N'https://www.facebook.com/', N'https://twitter.com/', N'https://google.com/', N'https://www.instagram.com/', N'05436589877', N'aaa@gmail.com', N'2021-06-07 20:20:56.787', N'www.yilmazselcuk55.com.tr', N'SAMSUN55');
GO
SET IDENTITY_INSERT [dbo].[Genel_Ayarlar] OFF
GO

-- ----------------------------
-- Table structure for [dbo].[Hakkimizda]
-- ----------------------------
DROP TABLE [dbo].[Hakkimizda]
GO
CREATE TABLE [dbo].[Hakkimizda] (
[Id] int NOT NULL IDENTITY(1,1) ,
[Icerik] ntext NULL ,
[ResimYolu] nvarchar(MAX) NULL 
)


GO

-- ----------------------------
-- Records of Hakkimizda
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Hakkimizda] ON
GO
INSERT INTO [dbo].[Hakkimizda] ([Id], [Icerik], [ResimYolu]) VALUES (N'1', N'HAKKIMDA SELÇUK YILMAZ', N'/Content/img/Bootstrap.jpg');
GO
SET IDENTITY_INSERT [dbo].[Hakkimizda] OFF
GO

-- ----------------------------
-- Table structure for [dbo].[Icerik]
-- ----------------------------
DROP TABLE [dbo].[Icerik]
GO
CREATE TABLE [dbo].[Icerik] (
[Id] int NOT NULL IDENTITY(1,1) ,
[IcerikAciklama] nvarchar(MAX) NULL ,
[TurId] int NULL DEFAULT ((0)) ,
[UstMenuId] int NULL ,
[EkleyenKisiID] int NOT NULL DEFAULT ((0)) ,
[EklemeTarihi] datetime NOT NULL DEFAULT (((1000)-(1))-(1)) ,
[DuzenleyenKisiID] int NULL ,
[DuzenlemeTarihi] datetime NULL ,
[Language] nvarchar(10) NULL DEFAULT ('tr-TR') ,
[KucukResimYolu] nvarchar(MAX) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[Icerik]', RESEED, 15)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Icerik', 
'COLUMN', N'TurId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'1-arastirmaaltgruplari 2-arastirmatanitim'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Icerik'
, @level2type = 'COLUMN', @level2name = N'TurId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'1-arastirmaaltgruplari 2-arastirmatanitim'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Icerik'
, @level2type = 'COLUMN', @level2name = N'TurId'
GO

-- ----------------------------
-- Records of Icerik
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Icerik] ON
GO
INSERT INTO [dbo].[Icerik] ([Id], [IcerikAciklama], [TurId], [UstMenuId], [EkleyenKisiID], [EklemeTarihi], [DuzenleyenKisiID], [DuzenlemeTarihi], [Language], [KucukResimYolu]) VALUES (N'1', N'<p>TEST Hakkımızda&nbsp;</p>
', null, N'2', N'1006', N'2021-06-06 22:06:48.730', null, null, N'tr-TR', N'/Content/img/Bootstrap.jpg');
GO
INSERT INTO [dbo].[Icerik] ([Id], [IcerikAciklama], [TurId], [UstMenuId], [EkleyenKisiID], [EklemeTarihi], [DuzenleyenKisiID], [DuzenlemeTarihi], [Language], [KucukResimYolu]) VALUES (N'13', N'<h1 style="text-align:left"><span style="font-size:30px"><span style="font-family:MyriadPro"><strong><span style="color:#ff0000"><strong>1. D&ouml;nem Sunuları</strong></span></strong></span></span></h1>

<ul>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/511b1-neden-bilisim-sunumu_6082514.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none"><strong>5.1.1.B1 - Neden Bilişim Sunumu</strong></a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/512a1-disinda-ne-var-icinde-ne-var-sunumu_6082535.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none"><strong>5.1.2.A1- Dışında Ne Var İ&ccedil;inde Ne Var Sunumu</strong></a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/512d1-verilerimi-sakliyorum-sunumu_6082546.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none"><strong>5.1.2.D1- &quot;Verilerimi Saklıyorum!&quot; Sunumu</strong></a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/513c1-dosya-nedir-sunumu_6082558.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none"><strong>5.1.3.C1- &quot;Dosya Nedir?&quot; Sunumu</strong></a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/514a1-etik-ve-internet-etigi-sunumu_6082568.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:underline"><strong>5.1.4.A1- Etik ve İnternet Etiği Sunumu</strong></a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/515a1-dijital-yurttaslik-vatandaslik-nedir-sunumu_6082577.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none"><strong>5.1.5.A1 - Dijital Yurttaşlık (Vatandaşlık) Nedir Sunumu</strong></a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/515c1-e-devlet-sunumu_6082585.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none"><strong>5.1.5.C1 - E-Devlet Sunumu</strong></a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/517b1-guclu-sifre-sunumu_6082596.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none"><strong>5.1.7.B1 - G&uuml;&ccedil;l&uuml; Şifre Sunumu</strong></a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/518b1-bilgisayar-agi-nedir-sunumu_6082606.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none"><strong>5.1.8.B1 - &quot;Bilgisayar Ağı Nedir?&quot; Sunumu</strong></a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/519c1-internette-aramayi-ogreniyorum-sunumu_6082615.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none"><strong>5.1.9.C1 - &quot;İnternette Aramayı &Ouml;ğreniyorum&quot; Sunumu</strong></a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/5110b1-eba-etkili-kullanim-kilavuzu-sunumu_6082626.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none"><strong>5.1.10.B1 - EBA Etkili Kullanım Kılavuzu Sunumu</strong></a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/5112b1-cizim-mi-yoksa-fotograf-mi-sunumu_6082640.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none"><strong>5.1.12.B1 - &Ccedil;izim mi yoksa Fotoğraf mı Sunumu</strong></a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/5113a1-kelime-islemci-programlar-sunumu_6082647.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none"><strong>5.1.13.A1 - Kelime İşlemci Programlar Sunumu</strong></a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/5113b1-google-dokumanlar-sunumu_6082677.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none"><strong>5.1.13.B1 - &quot;Google Dok&uuml;manlar&quot; Sunumu</strong></a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/5114a1-sunu-programlari-sunumu_6082683.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none"><strong>5.1.14.A1 - &quot;Sunu Programları&quot; Sunumu</strong></a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/5114b1-google-slaytlar-sunumu_6082688.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none"><strong>5.1.14.B1 - Google Slaytlar Sunumu</strong></a></li>
</ul>

<p style="text-align:left">&nbsp;</p>

<h1 style="text-align:left"><span style="font-size:30px"><span style="font-family:MyriadPro"><strong><span style="color:#ff0000"><strong>2. D&ouml;nem Sunuları</strong></span></strong></span></span></h1>

<ul>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/521d1-hanoi-kuleleri-kurallari-yansitma_6089422.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none"><strong>5.2.1.D1 - Hanoi Kuleleri Kuralları Yansıtma</strong></a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/521d3-hanoi-kuleleri-cozumleri_6089436.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none"><strong>5.2.1.D3 - Hanoi Kuleleri &Ccedil;&ouml;z&uuml;mleri</strong></a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/522c2-sular-kirleniyor-balik-kilcigi-cozumlemesi_6089444.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none"><strong>5.2.2.C2 - Sular Kirleniyor Balık Kıl&ccedil;ığı &Ccedil;&ouml;z&uuml;mlemesi</strong></a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/522c3-ornek-balik-kilcigi-cozumlemesi_6089465.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none"><strong>5.2.2.C3 - &Ouml;rnek Balık Kıl&ccedil;ığı &Ccedil;&ouml;z&uuml;mlemesi</strong></a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/527a1-akis-semasi-sunumu_6089478.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none"><strong>5.2.7.A1 - Akış Şeması Sunumu</strong></a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/5212b1-blok-tabanli-programlama-sunumu_6089490.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none"><strong>5.2.12.B1 -Blok Tabanlı Programlama Sunumu</strong></a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/5212d1-blockly-bulmaca-oyun-cozumleri-pdf-dokumani_6089498.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none"><strong>5.2.12.D1 - &quot;Blockly Bulmaca Oyun &Ccedil;&ouml;z&uuml;mleri&quot; pdf dok&uuml;manı</strong></a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/5213d1-blockly-labirent-oyun-cozumleri-pdf-dokumani_6089514.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none"><strong>5.2.13.D1 - &quot;Blockly Labirent Oyun &Ccedil;&ouml;z&uuml;mleri&quot; pdf dok&uuml;manı</strong></a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/5214a1-blockly-ile-labirentten-nasil-ciktik_6089526.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none"><strong>5.2.14.A1 - Blockly ile Labirentten Nasıl &Ccedil;ıktık_</strong></a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/5214d1-blockly-kus-oyun-cozumleri-pdf-dokumani_6089534.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none"><strong>5.2.14.D1 - &quot;Blockly Kuş Oyun &Ccedil;&ouml;z&uuml;mleri&quot; pdf dok&uuml;manı</strong></a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/5215a1-kus-yuvasina-giderken-sunumu_6089539.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none"><strong>5.2.15.A1 - Kuş Yuvasına Giderken Sunumu</strong></a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/5215c1-blockly-kaplumbaga-oyun-cozumleri_6089551.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none"><strong>5.2.15.C1 - &quot;Blockly Kaplumbağa Oyun &Ccedil;&ouml;z&uuml;mleri&quot;</strong></a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/5216b1-blockly-ile-neler-ogrendik_6089557.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none"><strong>5.2.16.B1 - Blockly İle Neler &Ouml;ğrendik_</strong></a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/5217b1-blockly-oyunlar-film-1-2-sunumu_6089568.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none"><strong>5.2.17.B1 - Blockly Oyunlar Film 1-2 Sunumu</strong></a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/5217c1-blockly-oyunlar-film-3-5-sunumu_6089582.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none"><strong>5.2.17.C1 - Blockly Oyunlar Film 3-5 Sunumu</strong></a></li>
	<li><strong><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/5217c2-blockly-film-oyun-cozumleri-pdf-dokumani_6089597.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">5.2.17.C2 -&quot;Blockly Film Oyun &Ccedil;&ouml;z&uuml;mleri&quot; pdf dok&uuml;manı</a></strong></li>
</ul>

<h1 style="text-align:left"><span style="font-size:30px"><span style="font-family:MyriadPro"><strong><span style="color:#ff0000"><strong>Videolar</strong></span></strong></span></span></h1>

<ul>
	<li><strong>&nbsp;<a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/515a1-2-dijital-yurttaslik-kurallar-videosu_6091574.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">5.1.5.A1_2 &ndash;Dijital Yurttaşlık Kurallar Videosu</a></strong></li>
	<li><strong>&nbsp;<a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/517d1-siber-tuzaklar-videosu_6091584.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">5.1.7.D1 -Siber Tuzaklar Videosu</a></strong></li>
	<li><strong>&nbsp;<a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/518e1-verinin-yolculugu-animasyon_6091590.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">5.1.8.E1 -Verinin Yolculuğu Animasyon</a></strong></li>
	<li><strong>&nbsp;<a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/521c4-kurt-kuzu-ot-animasyonu_6091602.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">5.2.1.C4 - Kurt Kuzu Ot Animasyonu</a></strong></li>
</ul>
', null, N'4', N'1006', N'2021-06-07 20:43:12.193', null, null, N'tr-TR', N'/Content/img/Ders.jpg');
GO
INSERT INTO [dbo].[Icerik] ([Id], [IcerikAciklama], [TurId], [UstMenuId], [EkleyenKisiID], [EklemeTarihi], [DuzenleyenKisiID], [DuzenlemeTarihi], [Language], [KucukResimYolu]) VALUES (N'14', N'<h1 style="text-align:left"><span style="color:#ff0000"><strong>1. D&ouml;nem Sunuları</strong></span></h1>

<ul>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/611b1-yeni-teknolojileri-biliyor-muyuz-sunusu_6098772.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.1.1.B1 - Yeni Teknolojileri Biliyor muyuz Sunusu</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/612a2-isletim-sistemi-sunusu_6213239.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.1.2.A2 - İşletim Sistemi Sunusu</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/613c1-artik-ben-de-belgelerimi-tariyorum-sunusu_6213259.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.1.3.C1 - Artık Ben de Belgelerimi Tarıyorum Sunusu</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/613d1-dosyalarim-nereye-gitti-sunumu_6213275.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.1.3.D1 - Dosyalarım nereye gitti sunumu</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/613e1-bulut-depolama-hizmetleri-sunumu_6213292.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.1.3.E1 - Bulut Depolama Hizmetleri Sunumu</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/614a1-internet-etigi-sunusu_6213399.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.1.4.A1 - İnternet Etiği Sunusu</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/615a1-telif-hakki-ve-acik-erisim-sunumu_6213416.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.1.5.A1 -Telif Hakkı ve A&ccedil;ık Erişim Sunumu</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/616b1-bilisim-suclari-sunumu_6213442.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none" target="_blank">&nbsp;6.1.6.B1 - Bilişim Su&ccedil;ları Sunumu</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/617a1-bak-bir-varmis-bir-yokmus-eski-gunlerde-sunumu_6213470.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.1.7.A1 -Bak Bir Varmış Bir Yokmuş Eski G&uuml;nlerde Sunumu</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/617d1-oyunda-neymis-sunusu_6213480.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.1.7.D1 - Oyunda Neymiş Sunusu</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/619d1-bilgi-guvenligi-sunumu_6213495.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.1.9.D1 - Bilgi G&uuml;venliği Sunumu</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/6110a1-unlu-zararli-yazilimlar-ve-virus-haberleri-sunumu_6213514.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.1.10.A1 - &Uuml;nl&uuml; Zararlı Yazılımlar ve Vir&uuml;s Haberleri Sunumu</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/6110d1-koruyucu-yazilimlar-sunumu_6213541.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.1.10.D1 - Koruyucu Yazılımlar Sunumu</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/6112a1-google-google-soyle-bana-sunusu_6216240.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.1.12.A1 - Google Google S&ouml;yle Bana... Sunusu</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/6112c1-bilgi-yonetimi-ve-bilgi-kirliligi-sunusu_6216260.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.1.12.C1 - Bilgi Y&ouml;netimi ve Bilgi Kirliliği Sunusu</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/6113a2-iletisim-nedir-sunusu_6216274.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.1.13.A2 - İletişim Nedir Sunusu</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/6114a1-tablolama-programalari-sunusu_6216282.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.1.14.A1 - Tablolama Programaları Sunusu</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/6114b1-google-e-tablolar-sunusu_6216293.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.1.14.B1- Google E-Tablolar Sunusu</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/6114b2-libreoffice-calc-hesap-tablosu-sunusu_6216301.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.1.14.B2 -LibreOffice Calc Hesap Tablosu Sunusu</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/6114c1-sicak-mi-soguk-mu-sunusu_6216319.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.1.14.C1- Sıcak mı Soğuk Mu Sunusu</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/6115a1-tablolama-programinda-siralama-sunusu_6216331.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.1.15.A1 - Tablolama Programında Sıralama Sunusu</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/6115b1-tablolama-programinda-filtreleme-sunusu_7328948.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.1.15.B1 - Tablolama Programında Filtreleme Sunusu</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/6117a1-ses-ve-video-nasil-olusur-sunumu_7328966.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.1.17.A1 - Ses ve Video Nasıl Oluşur Sunumu</a></li>
</ul>

<p style="text-align:left"><span style="font-size:16px"><span style="font-family:MyriadPro"><span style="color:#212529">&nbsp;</span></span></span></p>

<h1 style="text-align:left"><span style="color:#ff0000"><strong>2. D&ouml;nem Sunuları</strong></span></h1>

<ul>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/621a1-matematikten-bilgisayara-eglenceli-bir-kopru-sunusu_7328976.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.2.1.A1 - Matematikten Bilgisayara Eğlenceli Bir K&ouml;pr&uuml; Sunusu</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/622a2-sabit-degisken-karmasasi-sunumu_7328993.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.2.2.A2 - Sabit  Değişken Karmaşası Sunumu</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/622c1-karsilastirma-akis-semasi_7329015.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.2.2.C1 - Karşılaştırma Akış Şeması</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/622c1-siralama-akis-semasi_7329031.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.2.2.C1 - Sıralama Akış Şeması</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/622c1-toplama-akis-semasi_7329039.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.2.2.C1 - Toplama Akış Şeması</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/622c1-yazdirma-akis-semasi_7329053.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.2.2.C1 - Yazdırma Akış Şeması</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/629a1-blok-tabanli-programlama-sunusu_7329066.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.2.9.A1 - Blok Tabanlı Programlama Sunusu</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/629b1-scratch-programi-sunumu_7329098.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.2.9.B1 - Scratch Programı Sunumu</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/629b2-scratch-bilgi-notu_7329111.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.2.9.B2 - Scratch Bilgi Notu</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/6210b1-bloklari-kesfedelim-gorseli_7329159.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.2.10.B1 - Blokları Keşfedelim G&ouml;rseli</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/6210c1-biraz-hareketlenelim-programlama-adimlari_7329179.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.2.10.C1 - Biraz Hareketlenelim Programlama Adımları</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/6211b1-papagani-ucuralim-programlama-adimlari_7329190.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.2.11.B1 - Papağanı U&ccedil;uralım Programlama Adımları</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/6212a2-sakaci-penguen-programlama-adimlari_7329209.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.2.12.A2 - Şakacı Penguen Programlama Adımları</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/6213b1-uzayliyla-sohbet-programlama-adimlari_7329220.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.2.13.B1 - Uzaylıyla Sohbet Programlama Adımları</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/6213c1-23-nisan-programlama-adimlari_7329231.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.2.13.C1 - 23 Nisan Programlama Adımları</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/6214a1-cizim-yapiyorum-programlama-adimlari_7360931.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.2.14.A1 - &Ccedil;izim Yapıyorum Programlama Adımları</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/6214b1-kendi-cizim-programimizi-olusturalim-programlama-adimlari_7360945.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none">&nbsp;6.2.14.B1 - Kendi &Ccedil;izim Programımızı Oluşturalım Programlama Adımları</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/6215-a1-yildiz-toplayan-cocuk-programlama-adimlari_7360966.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none" target="_blank">&nbsp;6.2.15 A1 - Yıldız Toplayan &Ccedil;ocuk Programlama Adımları</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/6215b1-akvaryum-oyunu-programlama-adimlari_7360985.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none" target="_blank">&nbsp;6.2.15.B1 - Akvaryum Oyunu Programlama Adımları</a></li>
	<li><a href="http://ikizceortaokulu52.meb.k12.tr/icerikler/6216-a1-scratch-projesi-degerlendirme-olcegi_7361002.html" style="box-sizing:border-box; font-family:MyriadPro; color:#496f7a; text-decoration:none" target="_blank">&nbsp;6.2.16. A1 Scratch Projesi Değerlendirme &Ouml;l&ccedil;eği</a></li>
</ul>
', null, N'5', N'1006', N'2021-06-07 20:48:36.380', null, null, N'tr-TR', N'/Content/img/Ders.jpg');
GO
INSERT INTO [dbo].[Icerik] ([Id], [IcerikAciklama], [TurId], [UstMenuId], [EkleyenKisiID], [EklemeTarihi], [DuzenleyenKisiID], [DuzenlemeTarihi], [Language], [KucukResimYolu]) VALUES (N'15', N'<h2><strong>Programlama Nedir? Ne i&ccedil;in Kullanılır?</strong></h2>

<p>Belirli bir amaca ulaşmak i&ccedil;in oluşturulan algoritmanın herhangi bir programlama dilinde yazılarak bilgisayar tarafından işlenmesine programlama denir. Daha &ouml;nce algoritma yazımızda da bahsettiğimiz gibi, d&uuml;nyada ne kadar fazla programlama dili olsa da programlamada en &ouml;nemli konu bir &ccedil;&ouml;z&uuml;m&uuml;n olmasıdır. Eğer bir algoritma, amaca ulaşmak i&ccedil;in belirlenmiş bir &ccedil;&ouml;z&uuml;m yok ise program da olmaz.</p>

<h4><strong>Hangi alanlarda kullanılır?</strong></h4>

<p>Bilgisayar ortamında kontrol&uuml;n m&uuml;mk&uuml;n olduğu her alanda programlama kullanılır. Bilgisayar programlama alanları olarak web programlama, oyun programlama, masa&uuml;st&uuml; uygulamalarının programlanması gibi &ouml;rnekler verilebilir. Bunların haricinde g&ouml;m&uuml;l&uuml; sistem programcılığı, elektronik ve robotik programlama gibi alanlarda yazılan algoritmalar sanal ortamın dışında reel ortamda da var olmaktadır.</p>

<h4><strong>Kodlama neden &ouml;nemli?</strong></h4>

<p>Teknoloji geliştik&ccedil;e g&uuml;nl&uuml;k hayatta kullandığımız eşyalar, ihtiya&ccedil;larımız, hatta meslekler bile aynı oranda değişmeye başladı. Artık yazılımla doğrudan ilgisi olmayan şirketlerin bile sanal ortamda var olabilmeleri i&ccedil;in yazılımcılara ihtiyacı vardır. Peki, biraz da yazılımla ilgilenenlerin neler yaptığına dair &ouml;rnekler vermek istiyorum. Yapay zeka, otonom otomobil, makine &ouml;ğrenmesi, nesnelerin interneti gibi konulara milyarlarca dolarlık yatırımlar yapılmakta. Bu alanlardaki gelişmelerin artması, şu an var olan teknolojinin basitleşmesine sebep olacaktır. Yani bir zamanlar 3D Yazıcı teknolojisine ne kadar uzakken, bug&uuml;n evlerimize kadar girebildikleri &ouml;rneğini verirsem sanırım daha a&ccedil;ıklayıcı olur.</p>

<p>Kısaca artık konuya girebilirim. Teknolojideki gelişmeler ile bir programlama dili &ouml;ğrenmek, bir yabancı dil &ouml;ğrenmek gibi neredeyse zorunlu hale gelmektedir. Neden mi? Etrafımızdaki&nbsp; neredeyse her şey programlanabilmektedir ve bizim de elimizdeki bu teknolojiyi verimli kullanabilmemiz i&ccedil;in nasıl &ccedil;alıştıkları hakkında bir fikir sahibi olmamız gerekir. Bu sayede hem &uuml;r&uuml;nleri en iyi şekilde nasıl kullanabileceğimizi hem de ihtiya&ccedil;larımız doğrultusunda geliştirebileceğimizi bilmiş oluruz.</p>

<h2><strong>&Ccedil;ocuklar i&ccedil;in Kodlama</strong></h2>

<p><a href="https://maker.robotistan.com/wp-content/uploads/2015/09/cocuklar-icin-programlama-dili-scratch-091213192924.jpg"><img alt="Çocuklar için Scratch ile Kodlama" src="https://maker.robotistan.com/wp-content/uploads/2015/09/cocuklar-icin-programlama-dili-scratch-091213192924.jpg" style="height:270px; width:480px" /></a></p>

<p>&Ccedil;ocuklar i&ccedil;in Scratch ile Kodlama</p>

<p>Erken yaşta&nbsp;<a href="https://maker.robotistan.com/cocuklar-icin-kodlama/">kodlama &ouml;ğrenmek &ccedil;ocuklarda</a>&nbsp;algoritmik d&uuml;ş&uuml;nce becerilerini ve neden-sonu&ccedil; ilişkilerini iyi kurabilmelerini sağlar. B&ouml;ylelikle ezberci, kalıplaşmış sistemin dışına &ccedil;ıkarak yaratıcılıklarını ortaya &ccedil;ıkarabilirler.</p>

<p>Programlama dilleri genellikle s&ouml;zc&uuml;klerin oluşturduğu komutlardan ve &ldquo;0&rdquo; ile &ldquo;1&rdquo; rakamlarından oluşmaktadır. &Ccedil;ocukların kodlama mantığını kavrayabilmeleri ve bunu yaparken eğlenebilmeleri i&ccedil;in programlar geliştirilmiştir. Scratch, mBlock, LEGO Mindstorms, App Inventor ve bunlar gibi bir&ccedil;ok program ile &ccedil;ocuklar oyun tasarımı, robotik kodlama, mobil uygulama geliştirme gibi konularda kendilerini erken yaşta geliştirebiliyorlar. &Ccedil;ocuklar i&ccedil;in geliştirilen bu programlar, komut bloklarının&nbsp;<strong>&ldquo;s&uuml;r&uuml;kle-bırak&rdquo;</strong>&nbsp;tekniği ile alt alta veya yan yana dizilmesiyle kodlanabiliyorlar.</p>
', null, N'6', N'1006', N'2021-06-07 20:50:22.623', null, null, N'tr-TR', null);
GO
SET IDENTITY_INSERT [dbo].[Icerik] OFF
GO

-- ----------------------------
-- Table structure for [dbo].[Kategoriler]
-- ----------------------------
DROP TABLE [dbo].[Kategoriler]
GO
CREATE TABLE [dbo].[Kategoriler] (
[Id] int NOT NULL IDENTITY(1,1) ,
[KategoriAdi] nvarchar(50) NOT NULL ,
[Aciklama] nvarchar(100) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[Kategoriler]', RESEED, 25)
GO

-- ----------------------------
-- Records of Kategoriler
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Kategoriler] ON
GO
INSERT INTO [dbo].[Kategoriler] ([Id], [KategoriAdi], [Aciklama]) VALUES (N'1', N'BootStrap', N'99');
GO
INSERT INTO [dbo].[Kategoriler] ([Id], [KategoriAdi], [Aciklama]) VALUES (N'2', N'C#', N'aaaa');
GO
INSERT INTO [dbo].[Kategoriler] ([Id], [KategoriAdi], [Aciklama]) VALUES (N'25', N'Java', N'java programlama');
GO
SET IDENTITY_INSERT [dbo].[Kategoriler] OFF
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
[Parola] nvarchar(200) NOT NULL ,
[Email] nvarchar(200) NOT NULL ,
[KucukResimYolu] nvarchar(200) NOT NULL ,
[EklemeTarihi] datetime NOT NULL DEFAULT (getdate()) ,
[Rol] int NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[Kullanicilar]', RESEED, 1016)
GO

-- ----------------------------
-- Records of Kullanicilar
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Kullanicilar] ON
GO
INSERT INTO [dbo].[Kullanicilar] ([Id], [Ad], [Soyad], [Parola], [Email], [KucukResimYolu], [EklemeTarihi], [Rol]) VALUES (N'1006', N'Selçuk', N'YILMAZ', N'1234', N'yilmazselcuk55@erzurum.edu.tr', N'', N'2020-04-05 17:49:37.000', N'1');
GO
SET IDENTITY_INSERT [dbo].[Kullanicilar] OFF
GO

-- ----------------------------
-- Table structure for [dbo].[Mesaj]
-- ----------------------------
DROP TABLE [dbo].[Mesaj]
GO
CREATE TABLE [dbo].[Mesaj] (
[Id] int NOT NULL IDENTITY(1,1) ,
[Isim] nvarchar(200) NULL ,
[EMail] nvarchar(200) NULL ,
[Telefon] nvarchar(13) NULL ,
[Konu] nvarchar(200) NULL ,
[Icerik] ntext NULL ,
[EklemeTarihi] datetime NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[Mesaj]', RESEED, 5)
GO

-- ----------------------------
-- Records of Mesaj
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Mesaj] ON
GO
INSERT INTO [dbo].[Mesaj] ([Id], [Isim], [EMail], [Telefon], [Konu], [Icerik], [EklemeTarihi]) VALUES (N'1', N'Selçuk YILMAZ', N'aaaa@gmail.com', N'05432548796', N'qdasdasd', N'asdasdlksdlkald', N'2021-06-07 19:32:28.710');
GO
INSERT INTO [dbo].[Mesaj] ([Id], [Isim], [EMail], [Telefon], [Konu], [Icerik], [EklemeTarihi]) VALUES (N'2', N'Samet ', N'hhh@gmail.com', N'05469875463', N'ddddddd@gmail.com', N'sdkjkhjkghjkghjkgh', N'2021-06-07 19:35:37.803');
GO
INSERT INTO [dbo].[Mesaj] ([Id], [Isim], [EMail], [Telefon], [Konu], [Icerik], [EklemeTarihi]) VALUES (N'3', N'Selçuk YILMAZ', N'hhh@gmail.com', N'05432788841', N'qdasdasd', N'lllşlşlş', N'2021-06-07 19:38:41.920');
GO
INSERT INTO [dbo].[Mesaj] ([Id], [Isim], [EMail], [Telefon], [Konu], [Icerik], [EklemeTarihi]) VALUES (N'4', N'Selçuk YILMAZ', N'hhh@gmail.com', N'05545698741', N'qdasdasd', N'zxzxzxzxzxzx', N'2021-06-07 19:42:52.327');
GO
INSERT INTO [dbo].[Mesaj] ([Id], [Isim], [EMail], [Telefon], [Konu], [Icerik], [EklemeTarihi]) VALUES (N'5', N'aaaaa', N'aaa@gmail.com', N'05432122875', N'aaaa', N'zxzxzx', N'2021-06-07 19:51:09.767');
GO
SET IDENTITY_INSERT [dbo].[Mesaj] OFF
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
SET IDENTITY_INSERT [dbo].[sysdiagrams] OFF
GO

-- ----------------------------
-- Table structure for [dbo].[UstMenu]
-- ----------------------------
DROP TABLE [dbo].[UstMenu]
GO
CREATE TABLE [dbo].[UstMenu] (
[Id] int NOT NULL ,
[ParentId] int NULL ,
[Adi] nvarchar(60) NOT NULL ,
[Link] nvarchar(70) NULL ,
[Sira] int NOT NULL DEFAULT ((0)) ,
[AktifMi] bit NOT NULL DEFAULT ((1)) ,
[Language] nvarchar(10) NULL ,
[YeniSayfadaAc] bit NULL 
)


GO

-- ----------------------------
-- Records of UstMenu
-- ----------------------------
INSERT INTO [dbo].[UstMenu] ([Id], [ParentId], [Adi], [Link], [Sira], [AktifMi], [Language], [YeniSayfadaAc]) VALUES (N'2', null, N'Hakkımda', null, N'2', N'1', N'tr-Tr', N'0');
GO
INSERT INTO [dbo].[UstMenu] ([Id], [ParentId], [Adi], [Link], [Sira], [AktifMi], [Language], [YeniSayfadaAc]) VALUES (N'3', null, N'Bilişim Teknolojileri ve Yazılım', null, N'3', N'1', N'tr-Tr', N'0');
GO
INSERT INTO [dbo].[UstMenu] ([Id], [ParentId], [Adi], [Link], [Sira], [AktifMi], [Language], [YeniSayfadaAc]) VALUES (N'4', N'3', N'5.Sınıflar', null, N'1', N'1', N'tr-Tr', N'0');
GO
INSERT INTO [dbo].[UstMenu] ([Id], [ParentId], [Adi], [Link], [Sira], [AktifMi], [Language], [YeniSayfadaAc]) VALUES (N'5', N'3', N'6.Sınıflar', null, N'2', N'1', N'tr-Tr', N'0');
GO
INSERT INTO [dbo].[UstMenu] ([Id], [ParentId], [Adi], [Link], [Sira], [AktifMi], [Language], [YeniSayfadaAc]) VALUES (N'6', null, N'Programlama', null, N'4', N'1', N'tr-Tr', N'0');
GO
INSERT INTO [dbo].[UstMenu] ([Id], [ParentId], [Adi], [Link], [Sira], [AktifMi], [Language], [YeniSayfadaAc]) VALUES (N'7', null, N'İletişim', N'/Iletisim/Iletisim/', N'5', N'1', N'tr-Tr', N'0');
GO

-- ----------------------------
-- Table structure for [dbo].[Yazilar]
-- ----------------------------
DROP TABLE [dbo].[Yazilar]
GO
CREATE TABLE [dbo].[Yazilar] (
[Id] int NOT NULL IDENTITY(1,1) ,
[Baslik] nvarchar(200) NULL ,
[KucukResimYolu] nvarchar(MAX) NULL ,
[Icerik] ntext NULL ,
[EkleyenKisiID] int NOT NULL ,
[EklemeTarihi] datetime NOT NULL ,
[Language] nvarchar(10) NULL ,
[KisaMetin] nvarchar(MAX) NULL ,
[KategoriID] int NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[Yazilar]', RESEED, 32)
GO

-- ----------------------------
-- Records of Yazilar
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Yazilar] ON
GO
INSERT INTO [dbo].[Yazilar] ([Id], [Baslik], [KucukResimYolu], [Icerik], [EkleyenKisiID], [EklemeTarihi], [Language], [KisaMetin], [KategoriID]) VALUES (N'1', N'Bootstrap Menü', N'/Content/img/Bootstrap.jpg', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', N'1006', N'2021-05-10 17:34:07.000', N'tr-TR', N'bottsssssqsdffffddfd', N'1');
GO
INSERT INTO [dbo].[Yazilar] ([Id], [Baslik], [KucukResimYolu], [Icerik], [EkleyenKisiID], [EklemeTarihi], [Language], [KisaMetin], [KategoriID]) VALUES (N'7', N'C++', N'/Content/img/Bootstrap.jpg', N'<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.fgfgf</p>
', N'1006', N'2021-06-06 16:17:14.823', N'tr-TR', N'asjdhajhdjadhsajdhsajd', N'2');
GO
INSERT INTO [dbo].[Yazilar] ([Id], [Baslik], [KucukResimYolu], [Icerik], [EkleyenKisiID], [EklemeTarihi], [Language], [KisaMetin], [KategoriID]) VALUES (N'23', N'Bootstrap Nedir?', null, N'<p>Bootstrap mobile-first (&Ouml;nce Mobil) sloganı ile &uuml;retilmiş olan bir front-end(&ouml;n y&uuml;z tasarım) framework&#39;&uuml;d&uuml;r. B&ouml;yle s&ouml;ylendiğinde pek anlamlı gelmese de aslında web site tasarımcılarının işini epey kolaylaştırmaktadır. İ&ccedil;eriğinde pop&uuml;ler javascript k&uuml;t&uuml;phanlerinden&nbsp;<strong>jquery</strong>&nbsp;ve&nbsp;<strong>popper</strong>&nbsp;gibi iki b&uuml;y&uuml;k k&uuml;t&uuml;phane bulunur. Ayrıca CSS de framework paketinin i&ccedil;inde bulunmaktadır. G&uuml;n&uuml;m&uuml;zde neredeyse yeni nesil b&uuml;t&uuml;n web sayfaları tasarımlarında bu framework&#39;ten faydalanıyor, bu kadar pop&uuml;ler olmasının sebebi ise sloganında da belirtildiği gibi Mobile-first(&Ouml;nce Mobil) &ouml;zelliğidir.<br />
&Ccedil;&ouml;z&uuml;n&uuml;rl&uuml;k sorunu yani ekran &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;ğ&uuml; değiştik&ccedil;e sayfadaki yerleşimin bozulması, &ccedil;ok uzun bir zaman tasarımcıların en b&uuml;y&uuml;k problemi oldu. &Ouml;zellikle mobil cihazların kullanılması ile beraber aynı site i&ccedil;in en az 2 tasarım yapmak zorunda kalındı.<br />
Bir diğer &ouml;nemli problem ise tarayıcı(mozilla firefox, google chrome, opera, safari vs.) problemleridir. Web sayfasının g&ouml;r&uuml;n&uuml;m&uuml;n&uuml;n tarayıcıdan tarayıca farklı olması bir tasarım sorunu oluşturmakta ve zaman, iş g&uuml;c&uuml; kaybına sebep olmaktadır.<br />
İşte bootstrap bu 2 b&uuml;y&uuml;k probleme &ccedil;&ouml;z&uuml;m olarak ortaya &ccedil;ıktı. Tasarımcılarını iş y&uuml;k&uuml;n&uuml; ciddi anlamda hafifleterek kısa zamanda nerdeyse t&uuml;m tasarımcılar tarafından kullanılmaya başlandı.<br />
2017 yılında Bootstrap&#39;ın 4. versiyonu yayınlandı benim bu konu altında anlatacaklarım Bootstrap v4 ile ilgili &ouml;zelliklerdir.</p>
', N'1006', N'2021-06-07 20:52:14.970', N'tr-TR', null, N'1');
GO
INSERT INTO [dbo].[Yazilar] ([Id], [Baslik], [KucukResimYolu], [Icerik], [EkleyenKisiID], [EklemeTarihi], [Language], [KisaMetin], [KategoriID]) VALUES (N'24', N'Değişkenler', null, N'<p>Değişken (variable) bir değeri tutan depolama konumudur. Değişkeni, bilgisayarınızın belleğinde ge&ccedil;ici bilgi tutan bir kutu gibi d&uuml;ş&uuml;nebilirsiniz. Programdaki her bir değişkene, kullanıldıkları ortamda değişkeni benzersiz olarak tanımlayan tek ve benzersiz bir ad vermek zorundasınız. Değişkenin değerine bu ad ile erişiriz. Değişkenleri aklımızdan bir sayı tutmaya benzetebiliriz. Bir şekilde program s&uuml;resince (İlgili kod blokları arasında veya program a&ccedil;ık kaldığı s&uuml;rece) bize&nbsp;gerekli olacak değerleri hafızada tutmanın bir yoludur.</p>

<pre>

&nbsp;</pre>

<p><img alt="c# değişkenler" src="https://www.kodyaz.net/wp-content/uploads/2016/08/c-sharp-degiskenler-1.gif" style="height:95px; width:141px" /></p>

<p>&Ccedil;oğu programlama dilinde değişkenler tanımlandıktan sonra direkt olarak programda kullanılabilirler. Ancak C#&rsquo;ta değişkeni tanımladıktan sonra ayrıca bir de ilk değer atamak zorundayız.&nbsp;<strong>Aksi bir durumda değişkeni programımız i&ccedil;inde kullanamayız.</strong></p>

<p><img alt="C# değişkenlerde hafıza kullanımı" src="https://www.kodyaz.net/wp-content/uploads/2016/08/c-sharp-degiskenler-hafiza.jpg" style="height:187px; width:120px" /></p>

<p>C# değişkenlerde hafıza kullanımı</p>

<p><strong>DİKKAT</strong><br />
&ndash; Her değişkenin bir t&uuml;r&uuml; ve ismi vardır.<br />
&ndash; Tip o hafıza alanında saklanacak verinin tip bilgilerini ifade eder.<br />
&ndash; İsim o hafıza b&ouml;lgesine ulaşmamız i&ccedil;in bir etikettir.<br />
&ndash; Yalnızca harf (b&uuml;y&uuml;k ve k&uuml;&ccedil;&uuml;k), rakam ve alt &ccedil;izgi karakterini kullanabilirsiniz.<br />
&ndash; Tanımlayıcı, bir harf ile (alt &ccedil;izgi harf olarak kabul edilir) başlamak zorundadır.<br />
<strong>&Ouml;NEMLİ</strong><br />
&ndash;&nbsp;<strong>C#</strong>&nbsp;b&uuml;y&uuml;k k&uuml;&ccedil;&uuml;k harfe duyarlı bir dildir: footballTeam ve FootballTeam aynı anlama gelen tanımlayıcılar değildir.</p>
', N'1006', N'2021-06-07 20:53:03.857', N'tr-TR', null, N'2');
GO
INSERT INTO [dbo].[Yazilar] ([Id], [Baslik], [KucukResimYolu], [Icerik], [EkleyenKisiID], [EklemeTarihi], [Language], [KisaMetin], [KategoriID]) VALUES (N'25', N'JAVA GİRİŞ', null, N'<p>Merhaba arkadaşlar. İlk makalemi java &uuml;zerinde yazmak istedim.Bildiğiniz gibi java teknolojisi hem programlama dili hem de bir platformdur.Aslında Java hem derlenen(compiled) hem de yorumlanan (interpreted) bir dildir.</p>

<p>Bu yazımda sizlere java programlama diline giriş olarak kodlar ve anahtar s&ouml;zc&uuml;klerle a&ccedil;ıklamalar ve &ouml;rnekler yapacağım.</p>

<p>İlk Program</p>

<table border="0" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td>
			<p>1</p>

			<p>2</p>

			<p>3</p>

			<p>4</p>

			<p>5</p>

			<p>6</p>

			<p>7</p>

			<p>8</p>

			<p>9</p>
			</td>
			<td>
			<p><code>public</code> <code>class</code> <code>MyFirstJavaProgram {</code></p>

			<p><code>// Bu benim ilk programım.Ekrana &lsquo;Hello World!&rsquo; yazdıracağım.</code></p>

			<p>&nbsp;</p>

			<p><code>/*Bu benim ilk programım.</code></p>

			<p><code>Ekrana &lsquo;Hello World!&rsquo; yazdıracağım.*/</code></p>

			<p><code>public</code> <code>static</code> <code>void</code> <code>main(String []args) {</code></p>

			<p><code>System.out.println(</code><code>&quot;Hello World&quot;</code><code>);</code></p>

			<p><code>}</code></p>

			<p><code>}</code></p>
			</td>
		</tr>
	</tbody>
</table>

<p>Yukarıdaki kodumuzu derleyip &ccedil;alıştırdığımızda ekranda &lsquo;Hello World!&rsquo; yazısını g&ouml;receğiz.Baktığımızda&nbsp;<strong>public</strong>&nbsp;olarak nitelendirilen anahtar s&ouml;zc&uuml;k Java dilinde access modifier(erişim belirleyici) olarak adlandırılır.Erişim belirleyiciler herhangi bir sınıf(class),değişken veya methoda programdaki diğer sınıfların erişip erişemeyeceğini belirler. Daha sonra yukarıda g&ouml;rd&uuml;ğ&uuml;m&uuml;z&nbsp;<strong>main</strong>&nbsp;metodu ise javada b&uuml;t&uuml;n programların başlangı&ccedil; noktasıdır. Main metodu olmayan hi&ccedil;bir program &ccedil;alışmaz.Fonksiyonumuzu kodumuzda g&ouml;r&uuml;ld&uuml;ğ&uuml; gibi main bloğunun i&ccedil;ine yazdık.Javada tekli ve &ccedil;oklu komut satırı &ouml;zelliği C ve C++ programlarına benzemektedir.Tekli komut satırı bir satırdan oluşur ve başına &ldquo;//&rdquo; işareti alır. &Ccedil;oklu komut satırı ise bir veya birden fazla satırdan oluşur ve başına &ldquo;/*&rdquo; sonuna ise &ldquo;*/&rdquo; işaretlerini alır.</p>

<p>Degişkenler (Variables)</p>

<table border="0" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td>
			<p>1</p>

			<p>2</p>
			</td>
			<td>
			<p><code>int</code> <code>toplam=</code><code>5</code><code>;</code></p>

			<p><code>String isim=&rdquo;Deniz&rdquo;;</code></p>
			</td>
		</tr>
	</tbody>
</table>

<p>Değişkenler programda kullanılan verileri birbirinden ayırmak i&ccedil;in kullanılırlar.Her veriye ayrı bir ad vermek onların karışmasını &ouml;nler. Java&rsquo;da değişken deklarasyonları veri tipleri ve belirlediğimiz değişken isimleri ve atama operat&ouml;r&uuml;(assignment operator) olarak bilinen eşittir işaretinden sonra verilen değerle oluşturulur.</p>
', N'1006', N'2021-06-07 20:53:40.213', N'tr-TR', null, N'25');
GO
INSERT INTO [dbo].[Yazilar] ([Id], [Baslik], [KucukResimYolu], [Icerik], [EkleyenKisiID], [EklemeTarihi], [Language], [KisaMetin], [KategoriID]) VALUES (N'26', N'C# Döngüler', null, N'<p><strong>C# d&ouml;ng&uuml;ler</strong>, Programlama dilinde d&ouml;ng&uuml;ler belirtilen komut satırlarının tekrar tekrar &ccedil;alıştırılmasını sağlayan yapılardır. For d&ouml;ng&uuml;s&uuml; genellikle &uuml;&ccedil; ifade ile kullanılır. Bu ifadelerden ilkinde d&ouml;ng&uuml; değişkeni i&ccedil;in bir başlangı&ccedil; değeri verilir. İkinci ifadede d&ouml;ng&uuml; değişkenin değerine bağlı bir koşul belirlenir bu koşul sağlandığı s&uuml;rece d&ouml;ng&uuml; i&ccedil;erisindeki belirtilen işlemleri tekrar eder. &Uuml;&ccedil;&uuml;nc&uuml; ifade de &ccedil;oğunlukla d&ouml;ng&uuml; değişkeninin artış yada azalış miktarı i&ccedil;in kullanılır.</p>

<pre>
for(ifade1;kosul;ifade2) //;Kullanılmaz!
   komut;
</pre>

<p>Veya</p>

<pre>
for(ifade1;kosul;ifade2) //;Kullanılmaz!
{
 	komut1;
 	komut2;
}
for (int i = 1; i &lt;= 5; i++)
{
	Console.WriteLine(i);
}
</pre>

<p>Yukarıdaki d&ouml;ng&uuml;de &ouml;ncelikli olarak i değişkeninin başlangı&ccedil; değeri olan 1 kurulur. Daha sonra koşul operat&ouml;r&uuml; olan&nbsp;<em>i&lt;=5</em>&nbsp;ifadesi &ccedil;alışır. Bu ifadenin sonucu eğer&nbsp;<em><strong>True</strong></em>ise d&ouml;nd&uuml; satırları &ccedil;alıştırılır. D&ouml;ng&uuml; i&ccedil;eriği bittikten sonra i++ arttırma operat&ouml;r&uuml; &ccedil;alışır ve i değişkenin değeri 2 olur. Bu değer tekrar<em>&nbsp;i&lt;=5</em>&nbsp;i&ccedil;in &ccedil;alıştırılır. Ve sonu&ccedil;<em><strong>True</strong></em>&nbsp;olduğu s&uuml;rece d&ouml;ng&uuml; devam eder. i değişken değeri bu &ouml;rnek i&ccedil;in 6 olduğu durum da i&lt;=5 ifadesinin sonucu&nbsp;<em><strong>False</strong>&nbsp;</em>olur ve d&ouml;ng&uuml; kodu işletilmeden d&ouml;ng&uuml; sonlandırılır.</p>
', N'1006', N'2021-06-07 20:57:30.970', N'tr-TR', N'<p><strong>C# d&ouml;ng&uuml;ler</strong>, Programlama dilinde d&ouml;ng&uuml;ler belirtilen komut satırlarının tekrar tekrar &ccedil;alıştırılmasını sağlayan yapılardır. For d&ouml;ng&uuml;s&uuml; ge', N'2');
GO
INSERT INTO [dbo].[Yazilar] ([Id], [Baslik], [KucukResimYolu], [Icerik], [EkleyenKisiID], [EklemeTarihi], [Language], [KisaMetin], [KategoriID]) VALUES (N'27', N'Bootstrap11', null, N'<p><strong>C# d&ouml;ng&uuml;ler</strong>, Programlama dilinde d&ouml;ng&uuml;ler belirtilen komut satırlarının tekrar tekrar &ccedil;alıştırılmasını sağlayan yapılardır. For d&ouml;ng&uuml;s&uuml; genellikle &uuml;&ccedil; ifade ile kullanılır. Bu ifadelerden ilkinde d&ouml;ng&uuml; değişkeni i&ccedil;in bir başlangı&ccedil; değeri verilir. İkinci ifadede d&ouml;ng&uuml; değişkenin değerine bağlı bir koşul belirlenir bu koşul sağlandığı s&uuml;rece d&ouml;ng&uuml; i&ccedil;erisindeki belirtilen işlemleri tekrar eder. &Uuml;&ccedil;&uuml;nc&uuml; ifade de &ccedil;oğunlukla d&ouml;ng&uuml; değişkeninin artış yada azalış miktarı i&ccedil;in kullanılır.&nbsp;</p>

<p><strong>C# d&ouml;ng&uuml;ler</strong>, Programlama dilinde d&ouml;ng&uuml;ler belirtilen komut satırlarının tekrar tekrar &ccedil;alıştırılmasını sağlayan yapılardır. For d&ouml;ng&uuml;s&uuml; genellikle &uuml;&ccedil; ifade ile kullanılır. Bu ifadelerden ilkinde d&ouml;ng&uuml; değişkeni i&ccedil;in bir başlangı&ccedil; değeri verilir. İkinci ifadede d&ouml;ng&uuml; değişkenin değerine bağlı bir koşul belirlenir bu koşul sağlandığı s&uuml;rece d&ouml;ng&uuml; i&ccedil;erisindeki belirtilen işlemleri tekrar eder. &Uuml;&ccedil;&uuml;nc&uuml; ifade de &ccedil;oğunlukla d&ouml;ng&uuml; değişkeninin artış yada azalış miktarı i&ccedil;in kullanılır.</p>

<p><strong>C# d&ouml;ng&uuml;ler</strong>, Programlama dilinde d&ouml;ng&uuml;ler belirtilen komut satırlarının tekrar tekrar &ccedil;alıştırılmasını sağlayan yapılardır. For d&ouml;ng&uuml;s&uuml; genellikle &uuml;&ccedil; ifade ile kullanılır. Bu ifadelerden ilkinde d&ouml;ng&uuml; değişkeni i&ccedil;in bir başlangı&ccedil; değeri verilir. İkinci ifadede d&ouml;ng&uuml; değişkenin değerine bağlı bir koşul belirlenir bu koşul sağlandığı s&uuml;rece d&ouml;ng&uuml; i&ccedil;erisindeki belirtilen işlemleri tekrar eder. &Uuml;&ccedil;&uuml;nc&uuml; ifade de &ccedil;oğunlukla d&ouml;ng&uuml; değişkeninin artış yada azalış miktarı i&ccedil;in kullanılır.</p>

<p><strong>C# d&ouml;ng&uuml;ler</strong>, Programlama dilinde d&ouml;ng&uuml;ler belirtilen komut satırlarının tekrar tekrar &ccedil;alıştırılmasını sağlayan yapılardır. For d&ouml;ng&uuml;s&uuml; genellikle &uuml;&ccedil; ifade ile kullanılır. Bu ifadelerden ilkinde d&ouml;ng&uuml; değişkeni i&ccedil;in bir başlangı&ccedil; değeri verilir. İkinci ifadede d&ouml;ng&uuml; değişkenin değerine bağlı bir koşul belirlenir bu koşul sağlandığı s&uuml;rece d&ouml;ng&uuml; i&ccedil;erisindeki belirtilen işlemleri tekrar eder. &Uuml;&ccedil;&uuml;nc&uuml; ifade de &ccedil;oğunlukla d&ouml;ng&uuml; değişkeninin artış yada azalış miktarı i&ccedil;in kullanılır.</p>

<p><strong>C# d&ouml;ng&uuml;ler</strong>, Programlama dilinde d&ouml;ng&uuml;ler belirtilen komut satırlarının tekrar tekrar &ccedil;alıştırılmasını sağlayan yapılardır. For d&ouml;ng&uuml;s&uuml; genellikle &uuml;&ccedil; ifade ile kullanılır. Bu ifadelerden ilkinde d&ouml;ng&uuml; değişkeni i&ccedil;in bir başlangı&ccedil; değeri verilir. İkinci ifadede d&ouml;ng&uuml; değişkenin değerine bağlı bir koşul belirlenir bu koşul sağlandığı s&uuml;rece d&ouml;ng&uuml; i&ccedil;erisindeki belirtilen işlemleri tekrar eder. &Uuml;&ccedil;&uuml;nc&uuml; ifade de &ccedil;oğunlukla d&ouml;ng&uuml; değişkeninin artış yada azalış miktarı i&ccedil;in kullanılır.</p>

<pre>
for(ifade1;kosul;ifade2) //;Kullanılmaz!
   komut;
</pre>

<p>Veya</p>

<pre>
for(ifade1;kosul;ifade2) //;Kullanılmaz!
{
 	komut1;
 	komut2;
}
for (int i = 1; i &lt;= 5; i++)
{
	Console.WriteLine(i);
}
</pre>

<p>Yukarıdaki d&ouml;ng&uuml;de &ouml;ncelikli olarak i değişkeninin başlangı&ccedil; değeri olan 1 kurulur. Daha sonra koşul operat&ouml;r&uuml; olan&nbsp;<em>i&lt;=5</em>&nbsp;ifadesi &ccedil;alışır. Bu ifadenin sonucu eğer&nbsp;<em><strong>True</strong></em>ise d&ouml;nd&uuml; satırları &ccedil;alıştırılır. D&ouml;ng&uuml; i&ccedil;eriği bittikten sonra i++ arttırma operat&ouml;r&uuml; &ccedil;alışır ve i değişkenin değeri 2 olur. Bu değer tekrar<em>&nbsp;i&lt;=5</em>&nbsp;i&ccedil;in &ccedil;alıştırılır. Ve sonu&ccedil;<em><strong>True</strong></em>&nbsp;olduğu s&uuml;rece d&ouml;ng&uuml; devam eder. i değişken değeri bu &ouml;rnek i&ccedil;in 6 olduğu durum da i&lt;=5 ifadesinin sonucu&nbsp;<em><strong>False</strong>&nbsp;</em>olur ve d&ouml;ng&uuml; kodu işletilmeden d&ouml;ng&uuml; sonlandırılır.</p>

<p><strong>HATIRLATMA</strong></p>

<p><em><strong>for</strong></em>&nbsp;d&ouml;ng&uuml;s&uuml;n&uuml;n parantezleri i&ccedil;indeki &rdquo;&nbsp;<em>for (int i=0;i&lt;5;i++)</em>&nbsp;&rdquo; iki ifade ve bir koşulun istenirse bir tanesi, istenirse bazıları, istenirse de tamamı boş bırakılabilir; ancak noktalı virg&uuml;ller mutlaka yazılmalıdır. For(;;)//Sonsuz d&ouml;ng&uuml;<br />
Tahmin edebileceğiniz gibi for d&ouml;ng&uuml;s&uuml;n&uuml;n i&ccedil;inde veya &ldquo;for (int i=0;i&lt;5;i++) &rdquo; kısmında tanımlanan herhangi bir değişken d&ouml;ng&uuml;n&uuml;n dışında kullanılamaz. Bu b&uuml;t&uuml;n d&ouml;ng&uuml;ler ve koşul yapıları i&ccedil;in ge&ccedil;erlidir.</p>

<p><strong>C# D&ouml;ng&uuml;ler &ndash; &nbsp;C# For D&ouml;ng&uuml;s&uuml; &Ouml;RNEK &ndash; 1</strong><br />
1&prime;den 100&prime;e kadar olan sayıların toplamını bulup sonucu ekranda g&ouml;steren C# programını yazın.</p>

<p><strong>C# D&ouml;ng&uuml;ler &ndash; &nbsp;C# For D&ouml;ng&uuml;s&uuml; &Ouml;RNEK &ndash; 2</strong><br />
Girilen iki sayını arasındaki sayıların toplamını bulan C# programını yazın.</p>

<p><strong>C# D&ouml;ng&uuml;ler &ndash; &nbsp;C# For D&ouml;ng&uuml;s&uuml; &Ouml;RNEK &ndash; 3</strong><br />
İstenilen Sayıyı 10 kez yazdıran C# programını yazın.</p>

<p><strong>C# D&ouml;ng&uuml;ler &ndash; &nbsp;C# For D&ouml;ng&uuml;s&uuml; &Ouml;RNEK &ndash; 4</strong><br />
0-100 arasındaki tek sayıları yazdıran C# programını yazın.</p>

<p><strong>C# D&ouml;ng&uuml;ler &ndash; &nbsp;C# For D&ouml;ng&uuml;s&uuml; &Ouml;RNEK &ndash; 5</strong><br />
1 ile 100 Arasındaki Sayıların Toplamının Ortalaması</p>

<p><strong>C# D&ouml;ng&uuml;ler &ndash; &nbsp;C# For D&ouml;ng&uuml;s&uuml; &Ouml;RNEK &ndash; 6</strong><br />
100 ile 200 Arasındaki &ccedil;ift sayıların toplamının ortalaması bulan C# programını yazın.</p>

<p><strong>C# D&ouml;ng&uuml;ler &ndash; &nbsp;C# For D&ouml;ng&uuml;s&uuml; &Ouml;RNEK &ndash;7</strong><br />
A&rsquo;dan Z&rsquo;ye kadar olan karakterleri ekrana yazdıran C# programını yazın.</p>

<p><strong>C# D&ouml;ng&uuml;ler &ndash; &nbsp;C# For D&ouml;ng&uuml;s&uuml; &Ouml;RNEK &ndash; 8</strong><br />
İstenilen sayı kadar girilen sayıların ortalamasını C# programını yazın.</p>

<p><strong>C# D&ouml;ng&uuml;ler &ndash; &nbsp;C# For D&ouml;ng&uuml;s&uuml; &Ouml;RNEK &ndash; 9</strong><br />
1 ile 100 arasındaki tek ve &ccedil;ift sayıların toplamını bulup sonucu ekranda g&ouml;steren programın kodlarını yazalım.</p>

<p><strong>C# D&ouml;ng&uuml;ler &ndash; &nbsp;C# For D&ouml;ng&uuml;s&uuml; &Ouml;RNEK &ndash; 10</strong><br />
1 ile 100 arasındaki tek ve &ccedil;ift sayıların toplamını bulup sonucu ekranda g&ouml;steren programın kodlarını yazalım. (9. &Ouml;rnekteki soruyu if kullanarak &ccedil;&ouml;z&uuml;n&uuml;z.)</p>
', N'1006', N'2021-06-07 21:37:35.167', N'tr-TR', N'<p><strong>C# d&ouml;ng&uuml;ler</strong>, Programlama dilinde d&ouml;ng&uuml;ler belirtilen komut satırlarının tekrar tekrar &ccedil;alıştırılmasını sağlayan yapılardır. For d&ouml;ng&uuml;s&uuml; ge', N'1');
GO
INSERT INTO [dbo].[Yazilar] ([Id], [Baslik], [KucukResimYolu], [Icerik], [EkleyenKisiID], [EklemeTarihi], [Language], [KisaMetin], [KategoriID]) VALUES (N'32', N'Değişkenler100', N'/Uploads/YaziResimleri/3627a400-b972-457f-88ce-89f7dd87447a.jpg', N'<p><strong>C# döngüler</strong>, Programlama dilinde&nbsp;<strong>döngüler</strong>&nbsp;belirtilen komut satırlarının tekrar tekrar çalıştırılmasını sağlayan yapılardır. For döngüsü genellikle üç ifade ile kullanılır. Bu ifadelerden ilkinde&nbsp;<strong>döngü</strong>&nbsp;değişkeni için bir başlangıç değeri verilir.<strong>C# döngüler</strong>, Programlama dilinde&nbsp;<strong>döngüler</strong>&nbsp;belirtilen komut satırlarının tekrar tekrar çalıştırılmasını sağlayan yapılardır. For döngüsü genellikle üç ifade ile kullanılır. Bu ifadelerden ilkinde&nbsp;<strong>döngü</strong>&nbsp;değişkeni için bir başlangıç değeri verilir.<strong>C# döngüler</strong>, Programlama dilinde&nbsp;<strong>döngüler</strong>&nbsp;belirtilen komut satırlarının tekrar tekrar çalıştırılmasını sağlayan yapılardır. For döngüsü genellikle üç ifade ile kullanılır. Bu ifadelerden ilkinde&nbsp;<strong>döngü</strong>&nbsp;değişkeni için bir başlangıç değeri verilir.<strong>C# döngüler</strong>, Programlama dilinde&nbsp;<strong>döngüler</strong>&nbsp;belirtilen komut satırlarının tekrar tekrar çalıştırılmasını sağlayan yapılardır. For döngüsü genellikle üç ifade ile kullanılır. Bu ifadelerden ilkinde&nbsp;<strong>döngü</strong>&nbsp;değişkeni için bir başlangıç değeri verilir.<strong>C# döngüler</strong>, Programlama dilinde&nbsp;<strong>döngüler</strong>&nbsp;belirtilen komut satırlarının tekrar tekrar çalıştırılmasını sağlayan yapılardır. For döngüsü genellikle üç ifade ile kullanılır. Bu ifadelerden ilkinde&nbsp;<strong>döngü</strong>&nbsp;değişkeni için bir başlangıç değeri verilir.<strong>C# döngüler</strong>, Programlama dilinde&nbsp;<strong>döngüler</strong>&nbsp;belirtilen komut satırlarının tekrar tekrar çalıştırılmasını sağlayan yapılardır. For döngüsü genellikle üç ifade ile kullanılır. Bu ifadelerden ilkinde&nbsp;<strong>döngü</strong>&nbsp;değişkeni için bir başlangıç değeri verilir.<strong>C# döngüler</strong>, Programlama dilinde&nbsp;<strong>döngüler</strong>&nbsp;belirtilen komut satırlarının tekrar tekrar çalıştırılmasını sağlayan yapılardır. For döngüsü genellikle üç ifade ile kullanılır. Bu ifadelerden ilkinde&nbsp;<strong>döngü</strong>&nbsp;değişkeni için bir başlangıç değeri verilir.<strong>C# döngüler</strong>, Programlama dilinde&nbsp;<strong>döngüler</strong>&nbsp;belirtilen komut satırlarının tekrar tekrar çalıştırılmasını sağlayan yapılardır. For döngüsü genellikle üç ifade ile kullanılır. Bu ifadelerden ilkinde&nbsp;<strong>döngü</strong>&nbsp;değişkeni için bir başlangıç değeri verilir.<strong>C# döngüler</strong>, Programlama dilinde&nbsp;<strong>döngüler</strong>&nbsp;belirtilen komut satırlarının tekrar tekrar çalıştırılmasını sağlayan yapılardır. For döngüsü genellikle üç ifade ile kullanılır. Bu ifadelerden ilkinde&nbsp;<strong>döngü</strong>&nbsp;değişkeni için bir başlangıç değeri verilir.<strong>C# döngüler</strong>, Programlama dilinde&nbsp;<strong>döngüler</strong>&nbsp;belirtilen komut satırlarının tekrar tekrar çalıştırılmasını sağlayan yapılardır. For döngüsü genellikle üç ifade ile kullanılır. Bu ifadelerden ilkinde&nbsp;<strong>döngü</strong>&nbsp;değişkeni için bir başlangıç değeri verilir.<strong>C# döngüler</strong>, Programlama dilinde&nbsp;<strong>döngüler</strong>&nbsp;belirtilen komut satırlarının tekrar tekrar çalıştırılmasını sağlayan yapılardır. For döngüsü genellikle üç ifade ile kullanılır. Bu ifadelerden ilkinde&nbsp;<strong>döngü</strong>&nbsp;değişkeni için bir başlangıç değeri verilir.<strong>C# döngüler</strong>, Programlama dilinde&nbsp;<strong>döngüler</strong>&nbsp;belirtilen komut satırlarının tekrar tekrar çalıştırılmasını sağlayan yapılardır. For döngüsü genellikle üç ifade ile kullanılır. Bu ifadelerden ilkinde&nbsp;<strong>döngü</strong>&nbsp;değişkeni için bir başlangıç değeri verilir.<strong>C# döngüler</strong>, Programlama dilinde&nbsp;<strong>döngüler</strong>&nbsp;belirtilen komut satırlarının tekrar tekrar çalıştırılmasını sağlayan yapılardır. For döngüsü genellikle üç ifade ile kullanılır. Bu ifadelerden ilkinde&nbsp;<strong>döngü</strong>&nbsp;değişkeni için bir başlangıç değeri verilir.<strong>C# döngüler</strong>, Programlama dilinde&nbsp;<strong>döngüler</strong>&nbsp;belirtilen komut satırlarının tekrar tekrar çalıştırılmasını sağlayan yapılardır. For döngüsü genellikle üç ifade ile kullanılır. Bu ifadelerden ilkinde&nbsp;<strong>döngü</strong>&nbsp;değişkeni için bir başlangıç değeri verilir.</p>
', N'1006', N'2021-06-07 22:30:05.687', N'tr-TR', N'C# döngüler, Programlama dilindedöngülerbelirtilen komut satırlarının tekrar tekrar çalıştırılmasını sağlayan yapılardır. For döngüsü genellikle üç ifa', N'2');
GO
SET IDENTITY_INSERT [dbo].[Yazilar] OFF
GO

-- ----------------------------
-- Indexes structure for table __EFMigrationsHistory
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[__EFMigrationsHistory]
-- ----------------------------
ALTER TABLE [dbo].[__EFMigrationsHistory] ADD PRIMARY KEY ([MigrationId])
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
-- Indexes structure for table Hakkimizda
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Hakkimizda]
-- ----------------------------
ALTER TABLE [dbo].[Hakkimizda] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Indexes structure for table Icerik
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Icerik]
-- ----------------------------
ALTER TABLE [dbo].[Icerik] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Indexes structure for table Kategoriler
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Kategoriler]
-- ----------------------------
ALTER TABLE [dbo].[Kategoriler] ADD PRIMARY KEY ([Id])
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
-- Indexes structure for table Mesaj
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Mesaj]
-- ----------------------------
ALTER TABLE [dbo].[Mesaj] ADD PRIMARY KEY ([Id])
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
-- Indexes structure for table Yazilar
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Yazilar]
-- ----------------------------
ALTER TABLE [dbo].[Yazilar] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[Genel_Ayarlar]
-- ----------------------------
ALTER TABLE [dbo].[Genel_Ayarlar] ADD FOREIGN KEY ([EkleyenKisiID]) REFERENCES [dbo].[Kullanicilar] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[Icerik]
-- ----------------------------
ALTER TABLE [dbo].[Icerik] ADD FOREIGN KEY ([DuzenleyenKisiID]) REFERENCES [dbo].[Kullanicilar] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[Icerik] ADD FOREIGN KEY ([EkleyenKisiID]) REFERENCES [dbo].[Kullanicilar] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[Icerik] ADD FOREIGN KEY ([UstMenuId]) REFERENCES [dbo].[UstMenu] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[Yazilar]
-- ----------------------------
ALTER TABLE [dbo].[Yazilar] ADD FOREIGN KEY ([KategoriID]) REFERENCES [dbo].[Kategoriler] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
