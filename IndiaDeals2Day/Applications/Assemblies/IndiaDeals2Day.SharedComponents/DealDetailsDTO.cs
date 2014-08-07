using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace IndiaDeals2Day.SharedComponents
{
    public class DealDetailsDTO
    {
        public string UserName { get; set; }
        public string DealTopicname { get; set; }
        public string DealDescription { get; set; }
        public int DealDegree { get; set; }
        public DateTime DealPosteddate { get; set; }
        public string DealPicture { get; set; }
        public string DealUrl { get; set; }
        public string DealPrice { get; set; }
        public int DealType { get; set; }        
        public int DealId { get; set; }
        public byte[] DealImageData { get; set; }
    }
}
