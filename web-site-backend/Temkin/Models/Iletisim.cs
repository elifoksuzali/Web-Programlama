using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Temkin.Models
{
    public class Iletisim
    {
        [Key]
       public int Id { get; set; }
       public string Konum { get; set; } 
       public string Telefon { get; set; }
       public string Email { get; set; }
       public string Adres { get; set; }

    }
}
