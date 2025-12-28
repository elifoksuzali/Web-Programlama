using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Blog.Models
{
    public class Kullanicilar
    {
        public int Id { get; set; }
        public string Ad { get; set; }
        public string Soyad { get; set; }
        public string Parola { get; set; }
        public string Email { get; set; }
        public string KucukResimYolu { get; set; }
        public System.DateTime EklemeTarihi { get; set; }
        public int Rol { get; set; }

    }
}
