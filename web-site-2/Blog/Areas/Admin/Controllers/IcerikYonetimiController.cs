using Blog.Data;
using Blog.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

namespace Blog.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class IcerikYonetimiController : Controller
    {
        private readonly BlogContext db;

        public IcerikYonetimiController(BlogContext context)
        {
            db = context;
        }
        [Route("Admin/IcerikYonetimi/IcerikListele")]
        public IActionResult IcerikListele()
        {
            var icerikler = db.Icerik.OrderBy(a=>a.Id);
            var ustmenuler = db.UstMenu;
            foreach (var item in icerikler)
            {
                if (ustmenuler != null && ustmenuler.Any(a => a.Id == item.UstMenuId))
                {
                    item.UstMenu = ustmenuler.Where(a => a.Id == item.UstMenuId).FirstOrDefault();
                }
            }
            return View(icerikler);
         }
        public IActionResult IcerikEkle()
        {
            var menu = db.UstMenu.Where(a => a.Language.Equals("tr-TR")).OrderBy(a => a.Sira);
            ViewBag.Menuler = menu;
            return View();
        }

        [HttpPost]
        [Route("Admin/IcerikYonetimi/IcerikEkle")]

        public async Task<IActionResult> IcerikEkle(Icerik bilgiler, IFormFile KucukResimYolu)
        {
            

            bilgiler.EkleyenKisiID = (int)HttpContext.Session.GetInt32("Kullanici_ID");
            bilgiler.EklemeTarihi = DateTime.Now;
            bilgiler.Language = "tr-TR";
            if (KucukResimYolu != null)
            {
                string imageExtension = Path.GetExtension(KucukResimYolu.FileName);
                string imageName = Guid.NewGuid() + imageExtension;
                string path = Path.Combine(Directory.GetCurrentDirectory(), $"wwwroot/Uploads/IcerikResimleri/{imageName}");
                using var stream = new FileStream(path, FileMode.Create);
                await KucukResimYolu.CopyToAsync(stream);
                bilgiler.KucukResimYolu = "/Uploads/IcerikResimleri/" + imageName;
            }
            db.Icerik.Add(bilgiler);
            db.SaveChanges();
            return RedirectToAction("IcerikEkle", "IcerikYonetimi");
        }

        public IActionResult IcerikSil()
        {
            return View();
        }


        [Route("Admin/IcerikYonetimi/IcerikSil")]
        public IActionResult IcerikSil(int id)
        {
            var silIcerik = db.Icerik.Find(id);
            db.Icerik.Remove(silIcerik);
            db.SaveChanges();
            return RedirectToAction("IcerikListele", "IcerikYonetimi");
        }

        [Route("Admin/IcerikYonetimi/IcerikGetir")]
        public IActionResult IcerikGetir(int id)
        {
            var getirIcerik = db.Icerik.Where(a => a.Id == id).SingleOrDefault();
            ViewBag.Menuler = db.UstMenu.Where(a => a.Id == getirIcerik.UstMenuId);
            //return View(getirYazi);

            return View("IcerikGetir", getirIcerik);
        }

        [HttpPost]
        [Route("Admin/IcerikYonetimi/IcerikDuzenle")]
        public async Task<IActionResult> IcerikDuzenle(Icerik bilgiler, IFormFile KucukResimYolu)
        {
            var duzenle = db.Icerik.Where(a => a.Id == bilgiler.Id).FirstOrDefault();  //hiddenFor'dan gelen ıd   @Html.HiddenFor(Model=>Model.Id);

            duzenle.IcerikAciklama = bilgiler.IcerikAciklama;
            duzenle.TurId = bilgiler.TurId;
            duzenle.UstMenuId = bilgiler.UstMenuId;            
            duzenle.EkleyenKisiID = (int)HttpContext.Session.GetInt32("Kullanici_ID");
            duzenle.EklemeTarihi = DateTime.Now;
            duzenle.Language = bilgiler.Language;

            if (KucukResimYolu != null)
            {
                string imageExtension = Path.GetExtension(KucukResimYolu.FileName);
                string imageName = Guid.NewGuid() + imageExtension;
                string path = Path.Combine(Directory.GetCurrentDirectory(), $"wwwroot/Uploads/IcerikResimleri/{imageName}");
                using var stream = new FileStream(path, FileMode.Create);
                await KucukResimYolu.CopyToAsync(stream);
                bilgiler.KucukResimYolu = "/Uploads/IcerikResimleri/" + imageName;
            }
            else
            {
                duzenle.KucukResimYolu = bilgiler.KucukResimYolu;
            }


            db.SaveChanges();
            return RedirectToAction("IcerikListele", "IcerikYonetimi");
        }
    }
}
