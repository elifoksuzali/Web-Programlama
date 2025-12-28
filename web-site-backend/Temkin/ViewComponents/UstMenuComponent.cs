using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Temkin.Data;

namespace Temkin.ViewComponents
{
    public class UstMenuComponent : ViewComponent
    {
        private readonly TemkinContext db;

        public UstMenuComponent(TemkinContext context)
        {
            db = context;
        }

        public IViewComponentResult Invoke()
        {
            var menuler = db.UstMenu.Where(a => a.AktifMi && a.Language == "tr-TR").OrderBy(a => a.Sira);
            return View("UstMenu", menuler); //Views klasöründe shared içinde Components->UstMenuComponent içinde UstMenu.cshtml'i render yap
        }
    }
}
