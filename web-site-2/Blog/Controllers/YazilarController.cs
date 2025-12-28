using Blog.Data;
using Blog.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Blog.Controllers
{
    public class YazilarController : Controller
    {
        private readonly BlogContext db;

        public YazilarController(BlogContext context)
        {
            db = context;
        }
        //public IActionResult SonYazilar()
        //{
        //    //var yazilar = db.Yazilar.OrderByDescending(a => a.EklemeTarihi).Take(3);

        //    //return View(yazilar);
        //}


        public IActionResult YazilarDetay(int id)
        {
            var yazi = db.Yazilar.FirstOrDefault(a => a.Id == id);
            var kategoriler = db.Kategoriler;
            
            
                if (kategoriler != null && kategoriler.Any(a => a.Id == yazi.KategoriID))
                {
                    yazi.Kategori = kategoriler.Where(a => a.Id == yazi.KategoriID).FirstOrDefault();
                }
            
            

           
            return View(yazi);
        }
    }
}
