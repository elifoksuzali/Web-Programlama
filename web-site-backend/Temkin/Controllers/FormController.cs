using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Temkin.Controllers
{
    public class FormController : Controller
    {
        public IActionResult Form()
        {

            return View();
        }
    }
}
