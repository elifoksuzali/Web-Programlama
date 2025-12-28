using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Temkin.Models
{
    public class UstMenu

    {
        [Key]
        public int Id { get; set; }
        public Nullable<int> ParentId { get;set;}
        public string Adi { get; set; }
        public string Link { get; set; }
        public int Sira { get; set; }
        public bool AktifMi { get; set; }
        public string Language { get; set; }
        public Nullable<bool> YeniSayfadaAc { get; set; }

    }
}
