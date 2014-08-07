using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using IndiaDeals2Day.SharedComponents;
using IndiaDeals2Day.DataAccessComponents;
using System.Runtime.Caching;

namespace IndiaDeals2Day.BusinessLogicComponents
{
    public class ID2DStatasticsBal
    {
        ID2DStatasticsDal iDal = new ID2DStatasticsDal();
        ObjectCache cacheCategoryObject = MemoryCache.Default;
        ObjectCache cachePriceObject = MemoryCache.Default;
        LogBal lBal = new LogBal();
        public ID2DStatasticsDTO GetStatastics()
        {
            try
            {
                return iDal.GetID2DStatastics();
            }
            catch (Exception ex)
            {
                lBal.LogMessage(ex.InnerException.Message + "at " + ex.StackTrace, LogMessageTypes.Error);
                return null;
            }
        }

        public object GetCategories()
        {
            try
            {
                var configLoader = new ConfigHelper();
                List<DealCategoryDTO> _dealCategories = cacheCategoryObject["Categories"] as List<DealCategoryDTO>;
                if (_dealCategories == null)
                {
                    CacheItemPolicy policy = new CacheItemPolicy();
                    policy.AbsoluteExpiration =
                    DateTimeOffset.Now.Date.AddDays(configLoader.GetAppSettingsIntlValue("CategoryPriceCacheDuration"));
                    _dealCategories = iDal.GetCategories();
                    cacheCategoryObject.Set("Categories", _dealCategories, policy);
                }

                return _dealCategories;
            }
            catch (Exception ex)
            {
                lBal.LogMessage(ex.InnerException.Message + "at " + ex.StackTrace, LogMessageTypes.Error);
                return null;
            }
            

        }

        public object GetPriceCategories()
        {
            try
            {
                var configLoader = new ConfigHelper();
                List<PriceCategoryDTO> _dealPriceCategories = cachePriceObject["Categories"] as List<PriceCategoryDTO>;
                if (_dealPriceCategories == null)
                {
                    CacheItemPolicy policy = new CacheItemPolicy();
                    policy.AbsoluteExpiration =
                    DateTimeOffset.Now.Date.AddDays(configLoader.GetAppSettingsIntlValue("CategoryPriceCacheDuration"));
                    _dealPriceCategories = iDal.GetPriceCategories();
                    cacheCategoryObject.Set("Categories", _dealPriceCategories, policy);
                }

                return _dealPriceCategories;
            }
            catch (Exception ex)
            {
                lBal.LogMessage(ex.InnerException.Message + "at " + ex.StackTrace, LogMessageTypes.Error);
                return null;
            }
        }
    }
}
