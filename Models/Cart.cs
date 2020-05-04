using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication2core.Models
{
    public class Cart
    {

        [Key]
        public long id { get; set; }
        [Required]
        public Customer customer { get; set; }
        public List<CartProduct> cartProducts { get; set; }
        public double grandTotal { get; set; }


    }
}
