using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Temkin.Data;
using Temkin.Models;
using Microsoft.AspNetCore.Http;
using System.IO;

namespace Temkin.Areas.Admin.Controllers
{
    [Area("Admin")] 
    public class GaleriYonetimiController : Controller
    {
        public readonly TemkinContext db;
        public GaleriYonetimiController(TemkinContext context)
        {
            db = context;
        }

        public IActionResult GaleriEkle()
        {
            
              return View();
        }
        [HttpPost]
        [Route("Admin/GaleriYonetimi/GaleriEkle")]
        public async Task<IActionResult> GaleriEkle(Galeriler ekleresim, IFormFile GaleriResimYolu)
        {
            ekleresim.EkleyenKisiID = (int)HttpContext.Session.GetInt32("Kullanici_ID");
            ekleresim.EklemeTarihi = DateTime.Now;


            if (GaleriResimYolu != null)
            {
                string image = Path.GetExtension(GaleriResimYolu.FileName);
                string imagename = Guid.NewGuid() + image;
                string path = Path.Combine(Directory.GetCurrentDirectory(),
                    $"wwwroot/Uploads/GaleriResimleri/{imagename}");
                using var stream = new FileStream(path, FileMode.Create);
                await GaleriResimYolu.CopyToAsync(stream);
                ekleresim.GaleriResimYolu = "/Uploads/GaleriResimleri/" + imagename;
            }
            db.Galeriler.Add(ekleresim);
            db.SaveChanges();
            return RedirectToAction("GaleriEkle", "GaleriYonetimi");

        }
        [Route("Admin/GaleriYonetimi/GaleriListele")]
        public IActionResult GaleriListele()
        {
            var galerilisteleme = db.Galeriler.OrderBy(a => a.Id);

            return View(galerilisteleme);
        }

        public IActionResult ResimSil()
        {
            return View();
        }


        [Route("Admin/GaleriYonetimi/ResimSil")]
        public IActionResult ResimSil(int id)
        {
            var silGaleri = db.Galeriler.Find(id);
            db.Galeriler.Remove(silGaleri);
            db.SaveChanges();
            return RedirectToAction("GaleriListele", "GaleriYonetimi");
        }

        [Route("Admin/GaleriYonetimi/GaleriGetir")]
        public IActionResult GaleriGetir(int id)
        {
            var getirGaleri = db.Galeriler.Where(a => a.Id == id).SingleOrDefault();

            return View("GaleriGetir", getirGaleri);
        }


        [HttpPost]
        [Route("Admin/GaleriYonetimi/ResimDuzenle")]
        public IActionResult ResimDuzenle(Galeriler bilgiler)
        {
            var duzenle = db.Galeriler.Where(a => a.Id == bilgiler.Id).FirstOrDefault();

            duzenle.GaleriAdi= bilgiler.GaleriAdi;
            duzenle.Aciklama = bilgiler.Aciklama;
            duzenle.EkleyenKisiID = (int)HttpContext.Session.GetInt32("Kullanici_ID"); 
            duzenle.EklemeTarihi = DateTime.Now;

            db.SaveChanges();
            return RedirectToAction("GaleriListele", "GaleriYonetimi");
        }


    }
}
