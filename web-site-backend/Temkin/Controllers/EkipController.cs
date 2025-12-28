using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Temkin.Data;

namespace Temkin.Controllers
{
    public class EkipController : Controller
    {
        private readonly TemkinContext db;

        public EkipController(TemkinContext context)
        {
            db = context;
        }
        public IActionResult Ekip()
              
        {
            var ekip = db.EkipDetay;
            return View(ekip);
        }

    }
}
