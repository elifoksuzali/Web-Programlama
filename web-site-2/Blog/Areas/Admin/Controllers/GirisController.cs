using Blog.Areas.Admin.Filters;
using Blog.Data;
using Blog.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Blog.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class GirisController : Controller
        
    {
        private readonly BlogContext db;

        public GirisController(BlogContext context)
        {
            db = context;
        }
        public IActionResult Giris()
        {
            return View();
        }

        [HttpPost]
        public JsonResult GirisSorgula([FromBody] Kullanicilar data)
        {
            try
            {
                string Email = data.Email;   // admin girişinden geliyor
                string Parola = data.Parola; 

                if (String.IsNullOrEmpty(Parola) && String.IsNullOrEmpty(Email))
                {
                    return Json(new { Result = false, Message = "Kullanıcı Adınızı ve Şifrenizi Girmediniz!" });
                }
                else if (String.IsNullOrEmpty(Email))
                {
                    return Json(new { Result = false, Message = "Kullanıcı Adınızı girmediniz!" });
                }
                else if (String.IsNullOrEmpty(Parola))
                {
                    return Json(new { Result = false, Message = "Şifrenizi Girmediniz!" });
                }
                else
                {

                    var kullanici = db.Kullanicilar.FirstOrDefault(x => x.Email == Email && x.Parola == Parola && x.Rol == 1);

                    if (kullanici == null) return Json(new { Result = false, Message = "Kullanıcı Adınızı ya da Şifreyi hatalı girdiniz!" });


                    //Güvenlik açısından bilgileri şifreleyerek saklamamız daha doğru bir yöntemdir.
                    //Asp.Net Membership yapısı, bu güvenliği sunmaktadır.

                    HttpContext.Session.SetInt32("Kullanici_ID", kullanici.Id); // Yeni bir session oluşturma.
                    HttpContext.Session.SetString("Ad", kullanici.Ad);
                    HttpContext.Session.SetString("Soyad", kullanici.Soyad);
                    HttpContext.Session.SetString("Resim", kullanici.KucukResimYolu);
                    HttpContext.Session.SetInt32("Rol", kullanici.Rol);



                    HttpContext.Session.SetInt32("KullaniciRol", kullanici.Rol);
                    HttpContext.Session.SetInt32("YoneticiRol", kullanici.Rol);



                    //Burada eğer, kullanıcı bilgileri, sistemde eşleşirse, geriye girişin başarılı
                    //olduğuna dair bir mesaj ve 3 saniye sonra, ana sayfaya yönlendirecek bir
                    //javascript kodu ekliyoruz.        
                    return Json(new { Result = true, Message = "Başarıyla Giriş Yaptınız. Yönlendiriliyorsunuz...", url = "Giris/GenelAyarlar" });
                    // return "Başarıyla Giriş Yaptınız. Yönlendiriliyorsunuz...<script type='text/javascript'>setTimeout(function(){window.location='/Admin/Giris/AnaSayfa'},2000);</script>";
                }
            }
            catch (Exception ex)
            {
                return Json(new { Result = false, Message = ex.Message });
            }
        }



        public IActionResult OturumuKapat()
        {
            HttpContext.Session.Clear(); // Tüm sessionları temizle
            return View("Giris");
        }

        [ServiceFilter(typeof(AdminUserSecurityAttribute))]
        public IActionResult Anasayfa()
        {
            return View();
        }

        public IActionResult Hata()
        {
            return View();
            //return Redirect("/Admin/Giris");
        }

        //[ServiceFilter(typeof(AdminUserSecurityAttribute))]
        public IActionResult GenelAyarlar()
        {
            var genelayarlar = db.Genel_Ayarlar.FirstOrDefault();

            return View(genelayarlar);
        }

        [HttpPost]
        [Route("Admin/Giris/GenelAyarlar")]
        public IActionResult GenelAyarlar(Genel_Ayarlar bilgiler)
        {
            var duzenle = db.Genel_Ayarlar.FirstOrDefault();

            duzenle.SiteAdi = bilgiler.SiteAdi;
            duzenle.MetaAuthor = bilgiler.MetaAuthor;
            duzenle.MetaKeyWords = bilgiler.MetaKeyWords;
            duzenle.EMail = bilgiler.EMail;
            duzenle.Facebook = bilgiler.Facebook;
            duzenle.Twitter = bilgiler.Twitter;
            duzenle.GooglePlus = bilgiler.GooglePlus;
            duzenle.Instagram = bilgiler.Instagram;
            duzenle.Tel = bilgiler.Tel;
            duzenle.WebAdres = bilgiler.WebAdres;
            duzenle.Adres = bilgiler.Adres;
            duzenle.EkleyenKisiID = (int)HttpContext.Session.GetInt32("Kullanici_ID"); 
            duzenle.EklemeTarihi = DateTime.Now;
            //diğerleri de yazılacak


            db.SaveChanges();
            return RedirectToAction("GenelAyarlar", "Giris");
        }
        

    }
}
