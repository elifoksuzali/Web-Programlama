using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Temkin.Models
{
    public class Genel_Ayarlar
    { 
    public int Id { get; set; }
    public string SiteAdi { get; set; }
    public string MetaAuthor { get; set; }
    public string MetaKeyWords { get; set; }
    public string Facebook { get; set; }
    public string Twitter { get; set; }
    public string Instagram { get; set; }
    public string Linkedln { get; set; }
    public string Youtube { get; set; }
    public string Email { get; set; }
    public string Tel { get; set; }
    public string WebAdres { get; set; }
    public string Adres { get; set; }
    public int EkleyenKisiID { get; set; }
    public System.DateTime EklemeTarihi { get; set; }
    public int DuzenleyenKisiID { get; set; }
    public System.DateTime DuzenlemeTarihi{ get; set; }
    }
}

