using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication2core.Util
{
    public class ValidPriceAttribute : ValidationAttribute
    {
        private readonly double upperBound;

        public ValidPriceAttribute(double upperBound)
        {
            this.upperBound = upperBound;
        }

        public override bool IsValid(object value)
        {

            double price = Convert.ToDouble(value);


            return price<=upperBound;
        }
    }
}
