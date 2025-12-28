using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Temkin.Data;
using Temkin.Models;


namespace Temkin.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class MenuYonetimiController : Controller
    {
        public readonly TemkinContext db;
        public MenuYonetimiController(TemkinContext context)
        {
            db = context;
        }
        public IActionResult MenuEkle()
        {

            return View();
        }
        [HttpPost]
        [Route("Admin/MenuYonetimi/MenuEkle")]
        public IActionResult MenuEkle(UstMenu menu)
        {
            db.UstMenu.Add(menu);
            db.SaveChanges();
            return RedirectToAction("MenuListele", "MenuYonetimi");
        }

        public IActionResult MenuSil()
        {
            return View();
        }
 

        [Route("Admin/MenuYonetimi/MenuSil")]
        public IActionResult MenuSil(int id)
        {
            var silmenu = db.UstMenu.Find(id);
            db.UstMenu.Remove(silmenu);
            db.SaveChanges();
            return RedirectToAction("MenuListele", "MenuYonetimi");
        }

        [Route("Admin/MenuYonetimi/MenuGetir")]
        public IActionResult MenuGetir(int id)
        {
            var getirmenu = db.UstMenu.Where(a => a.Id == id).SingleOrDefault();

            return View("MenuGetir", getirmenu);
        }

        [HttpPost]
        [Route("Admin/MenuYonetimi/MenuDuzenle")]
        public IActionResult MenuDuzenle(UstMenu bilgiler)
        {
            var duzenle = db.UstMenu.Where(a => a.Id == bilgiler.Id).FirstOrDefault();//hiddenFor'dan gelen ıd   @Html.HiddenFor(Model=>Model.Id);

            duzenle.Adi = bilgiler.Adi;
            duzenle.Link = bilgiler.Link;
            duzenle.Language = bilgiler.Language;
            duzenle.Sira = bilgiler.Sira;          
            duzenle.AktifMi = bilgiler.AktifMi;
            duzenle.YeniSayfadaAc = bilgiler.YeniSayfadaAc;

            db.SaveChanges();
            return RedirectToAction("MenuListele", "MenuYonetimi");
        }


    }
}
