using Blog.Data;
using Blog.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace Blog.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class YaziYonetimiController : Controller
    {
        private readonly BlogContext db;

        public YaziYonetimiController(BlogContext context)
        {
            db = context;
        }

        [Route("Admin/YaziYonetimi/YaziListele")]
        public IActionResult YaziListele()
        {
            var yazilar = db.Yazilar.OrderBy(a=>a.Id);
            var kategoriler = db.Kategoriler;
            foreach (var item in yazilar)
            {
                if (kategoriler != null && kategoriler.Any(a => a.Id == item.KategoriID))
                {
                    item.Kategori = kategoriler.Where(a => a.Id == item.KategoriID).FirstOrDefault();
                }
            }
            return View(yazilar);
        }
        public IActionResult YaziEkle()
        {
            var kategori = db.Kategoriler.OrderBy(a => a.Id);
            ViewBag.Kategoriler = kategori;
            return View();
        }
        [HttpPost]
        [Route("Admin/YaziYonetimi/YaziEkle")]

        public async Task<IActionResult> YaziEkle(Yazilar bilgiler, IFormFile KucukResimYolu)
        {
            if (bilgiler.Icerik.Length > 200)
            {
                bilgiler.KisaMetin = bilgiler.Icerik.Substring(0, 200);
            }
            else
            {
                bilgiler.KisaMetin = bilgiler.Icerik;
            }

            bilgiler.KisaMetin = silHTMLTag(bilgiler.KisaMetin);

            bilgiler.EkleyenKisiID = (int)HttpContext.Session.GetInt32("Kullanici_ID");
            bilgiler.EklemeTarihi = DateTime.Now;
            bilgiler.Language = "tr-TR";
            if (KucukResimYolu != null)
            {
                string imageExtension = Path.GetExtension(KucukResimYolu.FileName);
                string imageName = Guid.NewGuid() + imageExtension;
                string path = Path.Combine(Directory.GetCurrentDirectory(), $"wwwroot/Uploads/YaziResimleri/{imageName}");
                using var stream = new FileStream(path, FileMode.Create);
                await KucukResimYolu.CopyToAsync(stream);
                bilgiler.KucukResimYolu = "/Uploads/YaziResimleri/" + imageName;
            }
            db.Yazilar.Add(bilgiler);
            db.SaveChanges();
            return RedirectToAction("YaziEkle", "YaziYonetimi");
        }

        public static string silHTMLTag(string input)
        {
            //String result = Regex.Replace(input, @"<[^>]*>", String.Empty);
            //return Regex.Replace(input, "<.*?>", String.Empty);
            return Regex.Replace(input, "<.*?>|&.*?;", string.Empty);
        }

     

        public IActionResult YaziSil()
        {
            return View();
        }


        [Route("Admin/YaziYonetimi/YaziSil")]
        public IActionResult YaziSil(int id)
        {
            var silYazi = db.Yazilar.Find(id);
            db.Yazilar.Remove(silYazi);
            db.SaveChanges();
            return RedirectToAction("YaziListele", "YaziYonetimi");
        }

        [Route("Admin/YaziYonetimi/YaziGetir")]
        public IActionResult YaziGetir(int id)
        {
            var getirYazi = db.Yazilar.Where(a => a.Id == id).SingleOrDefault();
            ViewBag.Kategoriler = db.Kategoriler.Where(a => a.Id ==getirYazi.KategoriID );
            //return View(getirYazi);

            return View("YaziGetir", getirYazi);
        }

        [HttpPost]
        [Route("Admin/YaziYonetimi/YaziDuzenle")]
        public async Task<IActionResult> YaziDuzenle(Yazilar bilgiler, IFormFile KucukResimYolu)
        {
            var duzenle = db.Yazilar.Where(a => a.Id == bilgiler.Id).FirstOrDefault();  //hiddenFor'dan gelen ıd   @Html.HiddenFor(Model=>Model.Id);

            duzenle.Baslik = bilgiler.Baslik;
            duzenle.Icerik = bilgiler.Icerik;            
            duzenle.KisaMetin = bilgiler.KisaMetin;
            duzenle.KategoriID = bilgiler.KategoriID;
            duzenle.EkleyenKisiID = (int)HttpContext.Session.GetInt32("Kullanici_ID");
            duzenle.EklemeTarihi = DateTime.Now;
            duzenle.Language = bilgiler.Language;

            if (KucukResimYolu != null)
            {
                string imageExtension = Path.GetExtension(KucukResimYolu.FileName);
                string imageName = Guid.NewGuid() + imageExtension;
                string path = Path.Combine(Directory.GetCurrentDirectory(), $"wwwroot/Uploads/YaziResimleri/{imageName}");
                using var stream = new FileStream(path, FileMode.Create);
                await KucukResimYolu.CopyToAsync(stream);
                bilgiler.KucukResimYolu = "/Uploads/YaziResimleri/" + imageName;
            }
            else {
                duzenle.KucukResimYolu = bilgiler.KucukResimYolu;
            }
            

            db.SaveChanges();
            return RedirectToAction("YaziListele", "YaziYonetimi");
        }


    }
}
