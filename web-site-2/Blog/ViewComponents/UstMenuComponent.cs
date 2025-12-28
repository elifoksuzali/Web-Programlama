using Blog.Data;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Blog.ViewComponents
{
    public class UstMenuComponent : ViewComponent
    {
        private readonly BlogContext db;

        public UstMenuComponent(BlogContext context)
        {
            db = context;
        }

        public async Task<IViewComponentResult> InvokeAsync()
        {
            var menuler = db.UstMenu.Where(a => a.AktifMi && a.Language == "tr-TR").OrderBy(a => a.Sira);
            return View("UstMenu", menuler); //Views klasöründe shared içinde Components->UstMenuComponent içinde UstMenu.cshtml'i render yap
        }
    }
}
