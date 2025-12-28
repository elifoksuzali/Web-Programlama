using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Temkin.Data;

namespace Temkin.Controllers
{
    public class IletisimController : Controller
    {
        private readonly TemkinContext db;

        public IletisimController(TemkinContext context)
        {
            db = context;
        }
        public IActionResult Iletisim()

        {
            var iletisim =db.Iletisim;
            return View(iletisim);
        }
    }
}
