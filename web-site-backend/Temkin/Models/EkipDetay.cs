using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Temkin.Models
{
    public class EkipDetay
    {
        [Key]
        public int Id { get; set; }
        public string Ad { get; set; }
        public string Soyad { get; set; }
        public string Instagram { get; set; }
        public string Twitter { get; set; }
        public string Linkedln { get; set; }
        public string Email { get; set; }
        public string Icerik { get; set; }
        public string Facebook { get; set; }
        public string EkipResimYolu { get; set; }

    }
}
