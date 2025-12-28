using Blog.Data;
using Blog.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Blog.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class KategoriYonetimiController : Controller
    {
        private readonly BlogContext db;

        public KategoriYonetimiController(BlogContext context)
        {
            db = context;
        }

        [Route("Admin/KategoriYonetimi/KategoriListele")]
        public IActionResult KategoriListele()
        {
            var kategoriler = db.Kategoriler.OrderBy(a=>a.Id);
            return View(kategoriler);
        }
      
        
        public IActionResult KategoriEkle()
        {

            return View();
        }

        [HttpPost]
        [Route("Admin/KategoriYonetimi/KategoriEkle")]
        public IActionResult KategoriEkle(Kategoriler bilgiler)
        {
            db.Kategoriler.Add(bilgiler);
            db.SaveChanges();
            return RedirectToAction("KategoriListele", "KategoriYonetimi");
        }

        public IActionResult KategoriSil()
        {
            return View();
        }
       
       
        [Route("Admin/KategoriYonetimi/KategoriSil")]
        public IActionResult KategoriSil(int id)
        {
            var silKategori = db.Kategoriler.Find(id);
            db.Kategoriler.Remove(silKategori);
            db.SaveChanges();
            return RedirectToAction("KategoriListele", "KategoriYonetimi");
        }

        [Route("Admin/KategoriYonetimi/KategoriGetir")]
        public IActionResult KategoriGetir(int id)
        {
            var getirKategori = db.Kategoriler.Where(a=>a.Id==id).SingleOrDefault();

            return View("KategoriGetir", getirKategori);
        }




       [HttpPost]
        [Route("Admin/KategoriYonetimi/KategoriDuzenle")]
        public IActionResult KategoriDuzenle(Kategoriler bilgiler)
        {
            var duzenle = db.Kategoriler.Where(a=>a.Id==bilgiler.Id).FirstOrDefault();//hiddenFor'dan gelen ıd   @Html.HiddenFor(Model=>Model.Id);

            duzenle.KategoriAdi = bilgiler.KategoriAdi;
            duzenle.Aciklama = bilgiler.Aciklama;
                       
            db.SaveChanges();
            return RedirectToAction("KategoriListele", "KategoriYonetimi");
        }

        


    }
}
