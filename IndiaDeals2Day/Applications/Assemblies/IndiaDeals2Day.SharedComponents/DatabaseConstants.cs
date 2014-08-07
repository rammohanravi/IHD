using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace IndiaDeals2Day.SharedComponents
{
    public class DatabaseConstants
    {
        public const string ApplicationName = "IndiaDeals2Day";
        public const string DBname = "IndiaDeals2Day";
        public static string LogDBname = "IndiaDeals2Day_LOG";
        
    }

    public enum LogMessageTypes
    {
        Error = 1,
        Info = 2
    }
}
