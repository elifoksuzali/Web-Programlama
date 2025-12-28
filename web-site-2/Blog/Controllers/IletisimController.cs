using Blog.Data;
using Blog.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Blog.Controllers
{
    public class IletisimController : Controller
    {
        private readonly BlogContext db;

        public IletisimController(BlogContext context)
        {
            db = context;
        }
        public IActionResult Iletisim()
        {
            Iletisim iletisim = new Iletisim();
            iletisim.Genel_Ayarlar = db.Genel_Ayarlar;
            iletisim.Mesaj = db.Mesaj;
            return View(iletisim);
        }
        

        [HttpPost]
        [Route("Admin/Iletisim/MesajEkle")]
        public IActionResult MesajEkle(Mesaj bilgiler) 
        {
            bilgiler.EklemeTarihi = DateTime.Now;
            db.Mesaj.Add(bilgiler);
            db.SaveChanges();
            
            return RedirectToAction("Iletisim", "Iletisim");
            
        }
    }
}
