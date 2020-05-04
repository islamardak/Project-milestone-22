using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication2core.Models
{
    public class Category : IValidatableObject
    {
        [Key]
        public long id { get; set; }
        [Required]
        public string name { get; set; }

        public List<Product> products { get; set; }



        public IEnumerable<ValidationResult> Validate(ValidationContext validationContext)
        {

            List<ValidationResult> errors = new List<ValidationResult>();
            if (string.IsNullOrWhiteSpace(this.name))
                errors.Add(new ValidationResult("Category name not specified"));
            if(this.name.Length > 30)
                errors.Add(new ValidationResult("Category name too long: "+ this.name.Length+" symbols, must not be more than "+30+" symbols"));

            return errors;
        }
    }
}
