using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.Linq;
using System.Text;
using IndiaDeals2Day.SharedComponents;
using System.IO;

namespace IndiaDeals2Day.DataAccessComponents
{
    internal static class DealsCompiledQueries
    {
        public static readonly Func<IndiaDeals2DayDataContext,IQueryable<DealsDto>>
            FunGetAllActiveDeals = CompiledQuery.Compile((IndiaDeals2DayDataContext context) =>
                (
                from deals in context.Tbl_Deals
                join access in context.Tbl_UserAccesses on deals.UserAccessID equals access.UserAccessID                
                where deals.DealStatus == 1 orderby deals.DealStartDate descending 
                select new DealsDto
                {
                    UserName = access.UserLoginName,
                    DealTopicname = deals.DealTopicName,
                    DealDescription = deals.DealDescription.Length > 196 ? deals.DealDescription.Substring(0,196)+"...." : deals.DealDescription,
                    DealDegree = deals.DealDegree,
                    DealPosteddate = deals.DealPostedDate,
                    DealPicture = deals.DealPicture != null ? deals.DealPicture : "~//Images//NoImage.jpg",
                    DealUrl = deals.DealURL,
                    DealPrice = "Rs. "+Convert.ToString(deals.DealPrice),
                    DealType = deals.DealType,
                    DealPriceCategory = deals.DealPriceCategoryId,
                    DealCategory = deals.DealCategoryId,
                    DealId = deals.DealID,
                    DealComments = deals.Tbl_DealComments.Count+" Comments",
                    DealImageData = deals.DealImageData != null ? deals.DealImageData.ToArray() : null
                }
                )
            );

        public static readonly Func<IndiaDeals2DayDataContext, int,Tbl_Deal>
            FunGetDeal = CompiledQuery.Compile((IndiaDeals2DayDataContext context, int dealID) =>
                (
                from deals in context.Tbl_Deals
                where deals.DealID == dealID
                select deals
                ).Single()
            );

        public static readonly Func<IndiaDeals2DayDataContext, int, DealDetailsDTO>
            FunGetDealDetails = CompiledQuery.Compile((IndiaDeals2DayDataContext context, int dealID) =>
                (
                from deals in context.Tbl_Deals
                join access in context.Tbl_UserAccesses on deals.UserAccessID equals access.UserAccessID                
                where deals.DealStatus == 1 && deals.DealID == dealID                
                select new DealDetailsDTO
                {
                    UserName = access.UserLoginName,
                    DealTopicname = deals.DealTopicName,
                    DealDescription = deals.DealDescription,
                    DealDegree = deals.DealDegree,
                    DealPosteddate = deals.DealPostedDate,
                    DealPicture = deals.DealPicture != null ? deals.DealPicture : "~//Images//NoImage.jpg",
                    DealUrl = deals.DealURL,
                    DealPrice = "Rs. " + Convert.ToString(deals.DealPrice),
                    DealType = deals.DealType,
                    DealId = deals.DealID,
                    DealImageData = deals.DealImageData != null? deals.DealImageData.ToArray() : null
                }
                ).SingleOrDefault()
            );

        public static readonly Func<IndiaDeals2DayDataContext, int>
            FunGetLatestDealID = CompiledQuery.Compile((IndiaDeals2DayDataContext context) =>
                (
                from deals in context.Tbl_Deals                
                select deals.DealID
                ).Max()
            );

        public static readonly Func<IndiaDeals2DayDataContext,decimal, int>
            FunGetDealPriceCategoryID = CompiledQuery.Compile((IndiaDeals2DayDataContext context,decimal dealprice) =>
                (
                from price in context.Tbl_DealPriceCategories
                where (decimal)price.StartPrice <= dealprice && (decimal)price.EndPrice >= dealprice
                select price.DealPriceCategoryId
                ).FirstOrDefault()
            );

        public static readonly Func<IndiaDeals2DayDataContext, int, IQueryable<DealCommentsDTO>>
           FunGetDealComments = CompiledQuery.Compile((IndiaDeals2DayDataContext context, int dealID) =>
               (
               from dealComments in context.Tbl_DealComments
               join access in context.Tbl_UserAccesses on dealComments.UserAccessID equals access.UserAccessID
               where dealComments.CommentStatus == 1 && dealComments.DealID == dealID orderby dealComments.CommentPostedDate descending
               select new DealCommentsDTO
               {
                   CommentedBy = access.UserLoginName,
                   CommentMadeOn = dealComments.CommentPostedDate.ToString(),
                   UserProfilePicture = access.UserPicture != null ? access.UserPicture : "~//Images//NoImage.jpg",
                   CommentDescription = dealComments.CommentDescription
               }
               )
           );

       
    }
}
