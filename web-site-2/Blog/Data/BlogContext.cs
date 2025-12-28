using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Blog.Models;

namespace Blog.Data
{
    public class BlogContext : DbContext
    {
        public BlogContext (DbContextOptions<BlogContext> options)
            : base(options)
        {
        }

        public DbSet<Blog.Models.Yazilar> Yazilar { get; set; }
        public DbSet<Blog.Models.UstMenu> UstMenu { get; set; }
        public DbSet<Blog.Models.Kullanicilar> Kullanicilar { get; set; }
        public DbSet<Blog.Models.Genel_Ayarlar> Genel_Ayarlar { get; set; }
        public DbSet<Blog.Models.Kategoriler> Kategoriler { get; set; }
        public DbSet<Blog.Models.Hakkimizda> Hakkimizda { get; set; }
        public DbSet<Blog.Models.Icerik> Icerik { get; set; }
        public DbSet<Blog.Models.Mesaj> Mesaj { get; set; }



    }
}
