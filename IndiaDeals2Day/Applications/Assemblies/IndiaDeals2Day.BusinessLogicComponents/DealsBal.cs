using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.Caching;
using IndiaDeals2Day.SharedComponents;
using IndiaDeals2Day.DataAccessComponents;
using System.IO;


namespace IndiaDeals2Day.BusinessLogicComponents
{
    public class DealsBal
    {
        DealsDal dDal = new DealsDal();
        ObjectCache cacheDealObject = MemoryCache.Default;
        LogBal lBal = new LogBal();
        public DealsDto[] GetAllActiveDeals(bool canLoadCachedDeals)
        {
            try
            {
                var configLoader = new ConfigHelper();
                if (!canLoadCachedDeals)
                {
                    CacheItemPolicy policy = new CacheItemPolicy();
                    policy.AbsoluteExpiration =
                    DateTimeOffset.Now.AddMinutes(configLoader.GetAppSettingsIntlValue("DealCacheDuration"));
                    var dealsToBind = dDal.GetAllActiveDeals();
                    cacheDealObject.Set("Deals", dealsToBind, policy);
                    return dealsToBind;
                }

                DealsDto[] dealsToBindFromCache = cacheDealObject["Deals"] as DealsDto[];
                if (dealsToBindFromCache == null)
                {
                    CacheItemPolicy policy = new CacheItemPolicy();
                    policy.AbsoluteExpiration =
                    DateTimeOffset.Now.AddMinutes(configLoader.GetAppSettingsIntlValue("DealCacheDuration"));
                    dealsToBindFromCache = dDal.GetAllActiveDeals();
                    cacheDealObject.Set("Deals", dealsToBindFromCache, policy);

                }
                return dealsToBindFromCache;
            }
            catch (Exception ex)
            {
                lBal.LogMessage(ex.InnerException.Message + "at " + ex.StackTrace, LogMessageTypes.Error);
                return null;
            }
        }

        public void DecreaseVolts(int dealID)
        {
            try
            {
                dDal.DecreaseVolts(dealID);
            }
            catch (Exception ex)
            {
                lBal.LogMessage(ex.InnerException.Message + "at " + ex.StackTrace, LogMessageTypes.Error);
            }
        }

        public void Addvolts(int dealID)
        {
            try
            {
                dDal.AddVolts(dealID);
            }
            catch (Exception ex)
            {
                lBal.LogMessage(ex.InnerException.Message + "at " + ex.StackTrace, LogMessageTypes.Error);
            }
        }

        public string GetEncryptedData(string dealID)
        {
            try
            {
                var configLoader = new ConfigHelper();
                var passPhrase = configLoader.GetAppSettingsStringValue("Phrase");
                return EncryptString.Encrypt(dealID, passPhrase);
            }
            catch (Exception ex)
            {
                lBal.LogMessage(ex.InnerException.Message + "at " + ex.StackTrace, LogMessageTypes.Error);
                return string.Empty;
            }
        }

        public string GetDecryptedData(string displayvalue)
        {
            try
            {
                var configLoader = new ConfigHelper();
                var passPhrase = configLoader.GetAppSettingsStringValue("Phrase");
                return EncryptString.Decrypt(displayvalue, passPhrase);
            }
            catch (Exception ex)
            {
                lBal.LogMessage(ex.InnerException.Message + "at " + ex.StackTrace, LogMessageTypes.Error);
                return string.Empty;
            }
        }

        public DealDetailsDTO GetDealDetails(int dealId)
        {
            try
            {
                return dDal.GetDealDetails(dealId);
            }
            catch (Exception ex)
            {
                lBal.LogMessage(ex.InnerException.Message + "at " + ex.StackTrace, LogMessageTypes.Error);
                return null;
            }
        }

        public string ShareTheDeal(string dealTitle, string dealDesc, decimal dealPrice, int dealCategory, string dealUrl, byte[] imageData,string userName,DateTime dealStartDate,DateTime dealEndDate)
        {
            try
            {
               int latestDealId = dDal.ShareTheDeal(dealTitle, dealDesc, dealPrice, dealCategory, dealUrl, imageData,userName,dealStartDate,dealEndDate);
                
               return "Deal created successfully";
            }
            catch (Exception ex)
            {
                lBal.LogMessage(ex.InnerException.Message + "at " + ex.StackTrace, LogMessageTypes.Error);
                return "Sorry deal not saved. Problem reported to administrator";
            }
        }

        public DealCommentsDTO[] GetDealComments(int dealId)
        {
            try
            {
                return dDal.GetDealComments(dealId);
            }
            catch (Exception ex)
            {
                lBal.LogMessage(ex.InnerException.Message + "at " + ex.StackTrace, LogMessageTypes.Error);
                return null;
            }
        }

        public void EnterDealComment(string userName, int dealId, string dealComment)
        {
            dDal.EnterDealComment(userName, dealId, dealComment);
        }
    }
}
