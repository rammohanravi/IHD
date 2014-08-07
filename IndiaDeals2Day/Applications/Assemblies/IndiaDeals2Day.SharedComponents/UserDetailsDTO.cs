using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace IndiaDeals2Day.SharedComponents
{
    public class UserDetailsDTO
    {
        public string UserName { get; set; }
        public string Email { get; set; }
        public bool UserValid { get; set; }
        public DateTime? LastLoginDateTime { get; set; }
        public string UserRoleName { get; set; }
        public string HomePage { get; set; }
        public int DealsCount { get; set; }
        public int CommentsCount { get; set; }
        public int VouchersCount { get; set; }
        public string UserAddress { get; set; }
        public string MobileNumber { get; set; }
        public DateTime? DateOfBrith { get; set; }

    }
}
