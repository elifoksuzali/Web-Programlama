using Blog.Data;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Blog.Controllers
{
    public class KategorilerController : Controller
    {
        private readonly BlogContext db;

        public KategorilerController(BlogContext context)
        {
            db = context;
        }
        public IActionResult Kategoriler()
        {
            //ViewBag.Kategoriler = db.Kategoriler.OrderByDescending(a => a.Id);
            return View();
        }
    }
}
