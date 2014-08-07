using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using IndiaDeals2Day.SharedComponents;

namespace IndiaDeals2Day.DataAccessComponents
{
    public class DealsDal
    {
        public DealsDto[] GetAllActiveDeals()
        {
            using (var context = DataAccess.GetNoTrackingDataContext())
            {
                return DealsCompiledQueries.FunGetAllActiveDeals(context).ToArray();
               
            }
        }


        public void DecreaseVolts(int dealID)
        {
            using (var context = DataAccess.GetDataContext())
            {
                var deals = DealsCompiledQueries.FunGetDeal(context, dealID);
                if (!(deals.DealDegree <= 0))
                {
                    deals.DealDegree = deals.DealDegree - 1;
                    context.SubmitChanges();
                }
            }
        }

        public void AddVolts(int dealID)
        {
            using (var context = DataAccess.GetDataContext())
            {
                var deals = DealsCompiledQueries.FunGetDeal(context, dealID);
                deals.DealDegree = deals.DealDegree + 1;
                context.SubmitChanges();
            }
        }

        public DealDetailsDTO GetDealDetails(int dealId)
        {
            using (var context = DataAccess.GetNoTrackingDataContext())
            {
                return DealsCompiledQueries.FunGetDealDetails(context, dealId);

            }
        }
        public List<DealCategoryDTO> GetDealCategories()
        {
            using (var context = DataAccess.GetNoTrackingDataContext())
            {
                return ID2DOtherCompiledQueries.FunGetID2DDealsCategories(context).ToList();

            }
        }

        public List<PriceCategoryDTO> GetDealPriceCategories()
        {
            using (var context = DataAccess.GetNoTrackingDataContext())
            {
                return ID2DOtherCompiledQueries.FunGetID2DDealsPriceCategories(context).ToList();
            }
        }

        public int ShareTheDeal(string dealTitle, string dealDesc, decimal dealPrice, int dealCategory, string dealUrl, byte[] imageData,string userName,DateTime dealStartDate,DateTime dealEndDate)
        {
            int latestDealId;
            int priceCategory;
            int userAccessId;            
            using (var context = DataAccess.GetNoTrackingDataContext())
            {
                latestDealId = DealsCompiledQueries.FunGetLatestDealID(context);
            }
            using (var context = DataAccess.GetNoTrackingDataContext())
            {
                priceCategory = DealsCompiledQueries.FunGetDealPriceCategoryID(context, dealPrice);
            }
            using (var context = DataAccess.GetNoTrackingDataContext())
            {
                userAccessId = UserCompiledQueries.FunGetUserAccessID(context, userName);
            }
            
            using (var context = DataAccess.GetDataContext())
            {
                var deal = new Tbl_Deal
                {
                   UserAccessID = userAccessId,
                   DealURL = dealUrl,
                   DealStatus = 2,
                   DealPrice = dealPrice,
                   DealTopicName = dealTitle,
                   DealDescription = dealDesc,
                   DealDegree = 0,
                   DealPostedDate = DateTime.Now,
                   ApprovedBy = userAccessId,
                   DealType = 10,
                   DealPicture = "/Test/Test.jpg",
                   DealStartDate = dealStartDate,
                   DealEndDate = dealEndDate,
                   DealCategoryId = dealCategory,
                   DealPriceCategoryId = priceCategory,
                   DealImageData = imageData
                };

                context.Tbl_Deals.InsertOnSubmit(deal);
                context.SubmitChanges();
                
            }

            return latestDealId + 1;
        }

        public DealCommentsDTO[] GetDealComments(int dealId)
        {
            using (var context = DataAccess.GetNoTrackingDataContext())
            {
                return DealsCompiledQueries.FunGetDealComments(context,dealId).ToArray();

            }
        }

        public void EnterDealComment(string userName, int dealId, string dealComment)
        {
            int userAccessId;
            using (var context = DataAccess.GetNoTrackingDataContext())
            {
                userAccessId = UserCompiledQueries.FunGetUserAccessID(context, userName);
            }
            using (var context = DataAccess.GetDataContext())
            {
                var comment = new Tbl_DealComment
                {
                    UserAccessID = userAccessId,
                    CommentPostedDate = DateTime.Now,
                    CommentStatus = 1,
                    CommentDescription = dealComment,
                    DealID = dealId
                };

                context.Tbl_DealComments.InsertOnSubmit(comment);
                context.SubmitChanges();

            }

        }
    }
}
