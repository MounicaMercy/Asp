using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Model
{
    public class Product
    {
        public int PId { get; set; }
        public string PName { get; set; }
        public double PPrice { get; set; }
        public string PURL { get; set; }
        public string PDescription { get; set; }
     

    }
    public class Brand
    {
        public int BrandId { get; set; }
        public string BrandName { get; set; }

    }
}
