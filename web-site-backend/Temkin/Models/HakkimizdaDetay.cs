using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Temkin.Models
{
    public class HakkimizdaDetay
    {
        [Key]
        public int Id { get; set; }
        public string HakkimizdaResimYolu{ get; set; }
        public string HakkimizdaIcerik{ get; set; }
        public int YayimSayisi{ get; set; }
        public string Baslik{ get; set; }
        public string Baslik2{ get; set; }
        public int OgrenciSayisi{ get; set; }
        public int DilSayisi{ get; set; }
        public int AkademisyenSayisi{ get; set; }

    }
}
