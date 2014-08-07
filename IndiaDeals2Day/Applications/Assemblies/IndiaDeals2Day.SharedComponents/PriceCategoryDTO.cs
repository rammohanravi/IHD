using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace IndiaDeals2Day.SharedComponents
{
    public class PriceCategoryDTO
    {
        public int DealPriceCategoryId { get; set; }
        public string DealPriceCategory { get; set; }
    }

    public class DealCategoryDTO
    {
        public int DealCategoryId { get; set; }
        public string DealCategoryName { get; set; }
    }
}
