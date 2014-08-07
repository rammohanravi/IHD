using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using IndiaDeals2Day.SharedComponents;
using System.Data.Linq;

namespace IndiaDeals2Day.DataAccessComponents
{
    internal static class ID2DOtherCompiledQueries
    {
       public static readonly Func<IndiaDeals2DayDataContext,int>
            FunGetID2DUsersOnline = CompiledQuery.Compile((IndiaDeals2DayDataContext context) =>
                (
                    from users in context.Tbl_UserAccesses where users.NowOnline == true 
                    select users.UserAccessID
                ).Count());
       public static readonly Func<IndiaDeals2DayDataContext, int>
           FunGetID2DUsersCount = CompiledQuery.Compile((IndiaDeals2DayDataContext context) =>
               (
                   from users in context.Tbl_Statastics
                   select users.NumberOfUsers
               ).FirstOrDefault());
       public static readonly Func<IndiaDeals2DayDataContext, int>
           FunGetID2DUsersViewing = CompiledQuery.Compile((IndiaDeals2DayDataContext context) =>
               (
                   from records in context.Tbl_RecordUsers
                   where records.RecordedDateTime >= DateTime.Now.AddMinutes(-30) && records.RecordedDateTime <= DateTime.Now
                   select records.UserIpAddress
               ).Distinct().Count());
       public static readonly Func<IndiaDeals2DayDataContext, int>
          FunGetID2DDealsCount = CompiledQuery.Compile((IndiaDeals2DayDataContext context) =>
              (
                                      from deals in context.Tbl_Statastics 
                                      select deals.NumberOfActiveDeals
              ).FirstOrDefault());       
       public static readonly Func<IndiaDeals2DayDataContext, IQueryable<DealCategoryDTO>>
       FunGetID2DDealsCategories = CompiledQuery.Compile((IndiaDeals2DayDataContext context) =>
           (
                                                       from categories in context.Tbl_DealCategories
                                                       orderby categories.DealCategoryId
                                                       select new DealCategoryDTO
                                                       {
                                                           DealCategoryId = categories.DealCategoryId,
                                                           DealCategoryName = categories.DealCategoryName
                                                       }
           ));
       public static readonly Func<IndiaDeals2DayDataContext, IQueryable<PriceCategoryDTO>>
      FunGetID2DDealsPriceCategories = CompiledQuery.Compile((IndiaDeals2DayDataContext context) =>
          (
                                                      from categories in context.Tbl_DealPriceCategories
                                                      orderby categories.DealPriceCategoryId
                                                      select new PriceCategoryDTO
                                                      {
                                                          DealPriceCategoryId = categories.DealPriceCategoryId,
                                                          DealPriceCategory = categories.StartPrice+"-"+categories.EndPrice
                                                      }
          ));
    }
}
