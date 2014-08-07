using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using IndiaDeals2Day.SharedComponents;
using System.Data.Linq;

namespace IndiaDeals2Day.DataAccessComponents
{
    internal static class LogCompiledQueries
    {
        public static readonly Func<IndiaDeals2DayDataContext, Tbl_ApplicationLog>
             FunGetLogDetails = CompiledQuery.Compile((IndiaDeals2DayDataContext context) =>
                 (
                 from x in context.Tbl_ApplicationLogs                 
                 select x 
                 ).SingleOrDefault()
             );
    }
}
