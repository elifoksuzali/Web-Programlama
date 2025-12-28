using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Temkin.Models
{
    public class ProjeDetay
    {
        [Key]
        public int Id { get; set; }
        public string ProjeResimYolu { get; set; }
        public string ProjeIcerik { get; set; }
        public string Baslik { get; set; }
        public string Baslik2 { get; set; }
    }
}
