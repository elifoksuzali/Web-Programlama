using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Temkin.Data;

namespace Temkin.Controllers
{
    public class GaleriController : Controller
    {
        private readonly TemkinContext db;

        public GaleriController(TemkinContext context)
        {
            db = context;
        }

        public IActionResult Galeri()
        {
            var galeri = db.GaleriResimler;
            return View(galeri);
        }

    }
}
