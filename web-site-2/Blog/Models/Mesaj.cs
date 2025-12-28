using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Blog.Models
{
    public class Mesaj
    {
        [Key]
        public int Id { get; set; }
        public string Isim { get; set; }
        public string EMail { get; set; }
        public string Telefon { get; set; }
        public string Konu { get; set; }
        public string Icerik { get; set; }
        public DateTime EklemeTarihi { get; set; }
        

    }
}
