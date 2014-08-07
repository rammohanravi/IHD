using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using IndiaDeals2Day.SharedComponents;

namespace IndiaDeals2Day.DataAccessComponents
{
    public class LogDal
    {
        public void LogMessage(string message, LogMessageTypes logMessageType)
        {
            var messageType = string.Empty;
            switch(logMessageType)
                {
                    case LogMessageTypes.Error:
                        messageType = "Error";
                        break;
                    case LogMessageTypes.Info:
                        messageType = "Info";
                        break;

                } 

            using (var context = DataAccess.GetDataContext())
            {
                var log = new Tbl_ApplicationLog
                {
                    LogMessage = message,
                    LogMessageType = messageType,
                    LoggedDateTime = System.DateTime.Now
                };

                context.Tbl_ApplicationLogs.InsertOnSubmit(log);    
                context.SubmitChanges();
            }
        }
    }
}
