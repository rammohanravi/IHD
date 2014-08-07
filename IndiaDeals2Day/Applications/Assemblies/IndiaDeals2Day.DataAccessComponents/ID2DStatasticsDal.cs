using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using IndiaDeals2Day.SharedComponents;

namespace IndiaDeals2Day.DataAccessComponents
{
    public class ID2DStatasticsDal
    {
        public ID2DStatasticsDTO GetID2DStatastics()
        {
            using (var context = DataAccess.GetNoTrackingDataContext())
            {
                return new ID2DStatasticsDTO
                {
                    UsersCount = ID2DOtherCompiledQueries.FunGetID2DUsersCount(context),
                    UsersViewingNow = ID2DOtherCompiledQueries.FunGetID2DUsersViewing(context),
                    UsersOnline = ID2DOtherCompiledQueries.FunGetID2DUsersOnline(context),
                    PostsCount = ID2DOtherCompiledQueries.FunGetID2DDealsCount(context),
                };

            }
        }

        public List<DealCategoryDTO> GetCategories()
        {
            using (var context = DataAccess.GetNoTrackingDataContext())
            {
                return ID2DOtherCompiledQueries.FunGetID2DDealsCategories(context).ToList();
               
            }
        }

        public List<PriceCategoryDTO> GetPriceCategories()
        {
            using (var context = DataAccess.GetNoTrackingDataContext())
            {
                return ID2DOtherCompiledQueries.FunGetID2DDealsPriceCategories(context).ToList();
            }
        }
    }
}
