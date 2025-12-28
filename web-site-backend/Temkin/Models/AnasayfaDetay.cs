using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Temkin.Models
{
    public class AnasayfaDetay
    {
        [Key]
        public int Id { get; set; }
        public string AciklamaResim { get; set; }
        public string  AnaSayfaResimYolu { get; set; }
        public string AnasayfaIcerik { get; set; }
        public string AnaSayfaVideoYolu{ get; set; }
        public string Baslik { get; set; }
        public string Baslik2 { get; set; }


    }
}
