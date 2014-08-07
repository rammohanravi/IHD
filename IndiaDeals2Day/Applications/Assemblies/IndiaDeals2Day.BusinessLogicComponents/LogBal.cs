using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using IndiaDeals2Day.SharedComponents;
using IndiaDeals2Day.DataAccessComponents;

namespace IndiaDeals2Day.BusinessLogicComponents
{
    public class LogBal
    {
        LogDal lDal = new LogDal();
        public void LogMessage(string message, LogMessageTypes logMessageType)
        {
            lDal.LogMessage(message, logMessageType);
        }
    }
}
