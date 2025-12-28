using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Blog.Models
{
    public class Iletisim
    {
        public IEnumerable<Genel_Ayarlar> Genel_Ayarlar { get; set; }
        public IEnumerable<Mesaj> Mesaj { get; set; }

    }
}
