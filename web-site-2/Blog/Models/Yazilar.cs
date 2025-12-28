using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Blog.Models
{
    public class Yazilar
    {
        [Key]
        public int Id { get; set; }
        public string Baslik { get; set; }
        public string KucukResimYolu { get; set; }
        public string Icerik { get; set; }        
        public int EkleyenKisiID { get; set; }
        public DateTime EklemeTarihi { get; set; }
        public string Language { get; set; }
        public string KisaMetin { get; set; }
        public int KategoriID { get; set; }
        
        public Kategoriler Kategori { get; set; }

    }
}
