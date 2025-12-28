using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Temkin.Data;

namespace Temkin.Controllers
{
    public class ProjeController : Controller
    {
        private readonly TemkinContext db;

        public ProjeController(TemkinContext context)
        {
            db = context;
        }
        public IActionResult Proje()
        {
            var proje = db.ProjeDetay;
            return View(proje);

        }
    }
}
