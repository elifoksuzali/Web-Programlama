using Blog.Data;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Blog.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class IletisimYonetimiController : Controller
    {
        private readonly BlogContext db;

        public IletisimYonetimiController(BlogContext context)
        {
            db = context;
        }
        public IActionResult MesajListele()
        {
            var mesajlar=db.Mesaj.OrderByDescending(a => a.EklemeTarihi);
            return View(mesajlar);
        }
    }
}
