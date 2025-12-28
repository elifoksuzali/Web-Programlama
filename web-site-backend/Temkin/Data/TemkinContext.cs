using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Temkin.Models;

namespace Temkin.Data
{
    public class TemkinContext : DbContext
    {
        public TemkinContext(DbContextOptions<TemkinContext> options)
            : base(options)
        {
        }
        public DbSet<Temkin.Models.GaleriResimler> GaleriResimler { get; set; }
        public DbSet<Temkin.Models.AnasayfaDetay> AnasayfaDetay { get; set; }
        public DbSet<Temkin.Models.HakkimizdaDetay> HakkimizdaDetay { get; set; }
        public DbSet<Temkin.Models.EkipDetay> EkipDetay { get; set; }
        public DbSet<Temkin.Models.ProjeDetay> ProjeDetay { get; set; }
        public DbSet<Temkin.Models.Iletisim> Iletisim { get; set; }
        public DbSet<Temkin.Models.UstMenu> UstMenu { get; set; }
        public DbSet<Temkin.Models.Kullanicilar> Kullanicilar { get; set; }
        public DbSet<Temkin.Models.Genel_Ayarlar> Genel_Ayarlar { get; set; }
        public DbSet<Temkin.Models.IcerikDiger> IcerikDiger { get; set; }

    }
}
