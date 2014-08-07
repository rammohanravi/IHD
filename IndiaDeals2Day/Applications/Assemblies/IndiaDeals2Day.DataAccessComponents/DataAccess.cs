using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using IndiaDeals2Day.SharedComponents;

namespace IndiaDeals2Day.DataAccessComponents
{
    internal class DataAccess
    {
        private static readonly string IndiaDeals2DayDBConnection;

        static DataAccess()
        {
            var configLoader = new ConfigHelper();
            IndiaDeals2DayDBConnection = configLoader.GetConnectionStringFromKey(DatabaseConstants.DBname);
        }

        public static IndiaDeals2DayDataContext GetDataContext()
        {
           return new IndiaDeals2DayDataContext(IndiaDeals2DayDBConnection);            
        }

        public static IndiaDeals2DayDataContext GetNoTrackingDataContext()
        {
            var test = new IndiaDeals2DayDataContext(IndiaDeals2DayDBConnection);
            test.ObjectTrackingEnabled = false;
            return test;
        }
    }
}
