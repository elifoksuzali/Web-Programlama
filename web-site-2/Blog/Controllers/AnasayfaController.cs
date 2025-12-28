using Blog.Data;
using Blog.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace Blog.Controllers
{
    public class AnasayfaController : Controller
    {
        private readonly ILogger<AnasayfaController> _logger;

        private readonly BlogContext db;
        public AnasayfaController(ILogger<AnasayfaController> logger, BlogContext context)
        {
            _logger = logger;
            db = context;
        }

        public IActionResult Anasayfa()
        {
            
            var kategoriler = db.Kategoriler.OrderBy(a => a.Id);
            ViewBag.Kategoriler = kategoriler;
            var sonyazilar = db.Yazilar.OrderByDescending(a => a.EklemeTarihi).Take(3);
            foreach (var item in sonyazilar)
            {
                if (kategoriler != null && kategoriler.Any(a => a.Id == item.KategoriID))
                {
                    item.Kategori = kategoriler.Where(a => a.Id == item.KategoriID).FirstOrDefault();
                }
            }
            ViewBag.SonYazilar = sonyazilar;
            
            return View();
        }

               
        public IActionResult SayfaDetay()            
        {
            var sayfaId = RouteData.Values["id"].ToString().Split("-").Skip(1).FirstOrDefault();
            var sayfaIdInt  = Int32.Parse(sayfaId);              
            var icerik = db.Icerik.Where(a => a.UstMenuId == sayfaIdInt).FirstOrDefault();
            var ust_menu = db.UstMenu.Where(a => a.Id == sayfaIdInt).FirstOrDefault();
            ViewBag.Icerik = icerik;
            ViewBag.Sayfa = "";
            ViewBag.UstSayfa = "";
            if (ust_menu != null)
            {
                var birUstMenu = db.UstMenu.Where(a => a.Id == ust_menu.ParentId).FirstOrDefault();
                ViewBag.Sayfa = ust_menu.Adi;
                if (birUstMenu != null) { ViewBag.UstSayfa = birUstMenu.Adi; }
            }
            return View();
        }
        public IActionResult KategoriMakale(int id)
        {
            //Makaleleri kategoriye göre sıraladığında anasayfadaki gibi görünmesini sağla
            var kategorikYazilar = db.Yazilar.Where(a => a.KategoriID == id).ToList();
            return View(kategorikYazilar.OrderByDescending(a => a.EklemeTarihi));
        }

        
        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
