using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Temkin.Models
{
    public class Galeriler
    {
       public int Id { get; set; }
        public string GaleriAdi{ get; set; }
        public string Aciklama{ get; set; }
        public string GaleriResimYolu { get; set; }
        public int  EkleyenKisiID { get; set; }
        public DateTime EklemeTarihi { get; set; }
       
    }
}
