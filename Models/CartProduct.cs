using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication2core.Models
{
    public class CartProduct
    {
        [Key]
        public long id { get; set; }
        [Required]
        public long cart_id { get; set; }
        public Cart cart { get; set; }
        [Required]
        public long product_id { get; set; }
        public Product product { get; set; }

    }
}
