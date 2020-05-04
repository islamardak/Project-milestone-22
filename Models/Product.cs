using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;
using WebApplication2core.Util;

namespace WebApplication2core.Models
{
    public class Product
    {

        [Key]
        public long id { get; set; }
        [Required]
        [Remote(action: "isNameExists", controller: "Products")]
        public string name { get; set; }
        [Required]
        public string content { get; set; }
        [Required]
        [ValidPriceAttribute(upperBound: 10000000, ErrorMessage = "Product price must not to be more than 10000000")]
        public Double price { get; set; }
        [Required]
        public long category_id { get; set; }
        public Category category { get; set; }


    }
}
