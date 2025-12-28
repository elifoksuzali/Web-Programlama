using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Temkin.Models
{
    public class Form
    {
        [Key]
        public int Id { get; set; }
        public string MesajIcerik { get; set; }
        public string GonderenAdSoyad { get; set; }
        public string GonderenEmail { get; set; }
        public string KonuBaslik { get; set; }


    }

}