# Web Programlama — Ders Projeleri

Web programlama dersi kapsamında geliştirilen projeleri bir arada toplayan depodur.
İçinde iki adet **ASP.NET Core 5.0 MVC** web uygulaması, bir **statik web sitesi tasarımı**
ve bir **CSS/Bootstrap ödevi** bulunur.

---

## 📁 Depo Yapısı

```
.
├── web-site-2/            # ASP.NET Core 5 MVC — Blog yönetim sistemi
│   └── Blog/
│       ├── Areas/Admin/   # Yönetici paneli (giriş, içerik/kategori/yazı yönetimi)
│       ├── Controllers/   # Anasayfa, Yazılar, Kategoriler, İletişim, Duyurular
│       ├── Models/        # Veri modelleri (Yazılar, Kategoriler, Kullanıcılar...)
│       ├── Data/          # EntityFramework DbContext (BlogContext)
│       ├── Views/ + wwwroot/
│       └── BlogVt.sql     # Veritabanı şeması + örnek veri
│
├── web-site-backend/      # ASP.NET Core 5 MVC — "Temkin" dernek sitesi yönetimi
│   ├── Temkin/            # Admin panel + içerik yönetimi (EntityFramework)
│   ├── Temkin.sln
│   └── dbo.sql            # Veritabanı şeması + örnek veri
│
├── web-site-design/       # Statik web sitesi tasarımı (HTML/CSS/JS)
│   ├── index.html, ekip.html, galeri.html, iletisim.html ...
│   ├── css/ img/ icon/ js/
│   └── contactform/       # jQuery tabanlı iletişim formu doğrulaması
│
├── odev1-css-bootstrap/   # CSS ve Bootstrap ile sayfa tasarımı ödevi
│   ├── Ödev1_CssHali.html        # Saf CSS ile
│   ├── Ödev1_BootstraptHali.html # Bootstrap ile
│   └── css/ (bootstrap.css, ödevDosya.css)
│
├── .gitignore
└── README.md
```

---

## 🧩 Projeler

### 1) web-site-2 — Blog Yönetim Sistemi (ASP.NET Core MVC)
Yazı, kategori, içerik ve iletişim mesajlarının yönetilebildiği bir blog uygulaması.
- **Teknolojiler:** ASP.NET Core 5.0 MVC, Entity Framework Core, MS SQL Server
- **Yönetici paneli:** `Areas/Admin` altında giriş (session tabanlı) ve içerik yönetimi
- **Veritabanı:** `BlogVt` (şema ve örnek kayıtlar `BlogVt.sql` içinde)

### 2) web-site-backend — "Temkin" Dernek Sitesi Yönetimi (ASP.NET Core MVC)
Bir derneğin tanıtım sitesinin yönetim arayüzü (ekip, galeri, duyuru, iletişim yönetimi).
- **Teknolojiler:** ASP.NET Core 5.0 MVC, Entity Framework Core, MS SQL Server
- **Veritabanı:** `Dernek_dbo` (şema ve örnek kayıtlar `dbo.sql` içinde)

### 3) web-site-design — Statik Site Tasarımı
HTML, CSS ve jQuery ile hazırlanmış, sunucu tarafı olmayan tanıtım sitesi şablonu.

### 4) odev1-css-bootstrap — CSS/Bootstrap Ödevi
Aynı sayfanın iki farklı yöntemle (saf CSS ve Bootstrap) tasarlanmış hâli.

---

## 🛠️ Gereksinimler

- **.NET 5.0 SDK** (ASP.NET Core projeleri için)
- **MS SQL Server** (veya SQL Server Express / LocalDB)
- Visual Studio 2019+ veya `dotnet` CLI
- Statik site ve ödev için yalnızca bir tarayıcı yeterlidir.

---

## 🚀 Çalıştırma

### ASP.NET Core projeleri (web-site-2 / web-site-backend)

1. Veritabanını oluşturun: ilgili `.sql` dosyasını (`BlogVt.sql` / `dbo.sql`) SQL Server'da çalıştırın.
2. `appsettings.json` içindeki **connection string**'i kendi ortamınıza göre düzenleyin:
   ```json
   "ConnectionStrings": {
     "BlogContext": "Server=.\\SQLEXPRESS;Database=BlogVt;Trusted_Connection=True;MultipleActiveResultSets=true"
   }
   ```
3. Projeyi çalıştırın:
   ```bash
   cd web-site-2/Blog        # veya: cd web-site-backend/Temkin
   dotnet restore
   dotnet run
   ```

### Statik site ve ödev
`web-site-design/index.html` veya `odev1-css-bootstrap/*.html` dosyalarını doğrudan tarayıcıda açın.

---
