using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Temkin.Models
{
    public class GaleriResimler
    {
        [Key]
        public int Id { get; set; }
        public int GaleriID { get; set; }
        public string KucukResim { get; set; }
        public string ResimYolu { get; set; }

        public string Aciklama { get; set; }
        public int EkleyenKisiID { get; set; }
        public DateTime EklemeTarihi { get; set; }



    }
}