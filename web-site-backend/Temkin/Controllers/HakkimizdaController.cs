using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Temkin.Data;

namespace Temkin.Controllers
{
    public class HakkimizdaController : Controller
    {
        private readonly TemkinContext db;

        public HakkimizdaController(TemkinContext context)
        {
            db = context;
        }
        public IActionResult Hakkimizda()
        {
            var hakkimizda = db.HakkimizdaDetay;
            return View(hakkimizda);
        }
    }
}
