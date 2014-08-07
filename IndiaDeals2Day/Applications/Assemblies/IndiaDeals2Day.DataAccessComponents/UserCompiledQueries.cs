using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.Linq;
using System.Text;
using IndiaDeals2Day.SharedComponents;

namespace IndiaDeals2Day.DataAccessComponents
{
    internal static class UserCompiledQueries
    {
        public static readonly Func<IndiaDeals2DayDataContext, string, UserDetailsDTO>
            FunGetUserDetails = CompiledQuery.Compile((IndiaDeals2DayDataContext context, string userName) =>
                (
                from access in context.Tbl_UserAccesses
                join profiles in context.Tbl_UserProfiles on access.UserAccessID equals profiles.UserAccessID
                join personal in context.Tbl_UserPersonalDetails on access.UserAccessID equals personal.UserAccessID
                from roles in context.Tbl_UserRoles
                where access.UserLoginName == userName                   
                      && roles.UserRoleID == access.UserRoleID
                select new UserDetailsDTO
                {
                    UserName = access.UserLoginName,
                    Email = access.Email,
                    UserValid = access.IsUserValid,
                    LastLoginDateTime = access.LastLoginDateTime,
                    UserRoleName = roles.UserRoleName,
                    HomePage = roles.MasterPage,
                    DealsCount = profiles.DealsCount,
                    CommentsCount = profiles.CommentsCount,
                    VouchersCount = profiles.VouchersCount,
                    UserAddress = personal.UserAddress,
                    MobileNumber = personal.MobileNumber,
                    DateOfBrith = access.DateOfBirth
                }
                ).FirstOrDefault()
            );

        public static readonly Func<IndiaDeals2DayDataContext, string, string, string>
            FunValidateUser = CompiledQuery.Compile((IndiaDeals2DayDataContext context, string userName, string passWord) =>
                (
                from access in context.Tbl_UserAccesses 
                from roles in context.Tbl_UserRoles  
                where access.UserLoginName == userName && access.UserPassword == passWord  && roles.UserRoleID == access.UserRoleID && access.IsUserValid == true
                select roles.MasterPage
                ).FirstOrDefault()
            );

        public static readonly Func<IndiaDeals2DayDataContext,string,bool>
            FunCheckUserExists = CompiledQuery.Compile((IndiaDeals2DayDataContext context, string userName) =>
                (
                 context.Tbl_UserAccesses.FirstOrDefault(x => x.UserLoginName == userName && x.IsUserValid == true) != null ? false : true
                 )
            );

        public static readonly Func<IndiaDeals2DayDataContext, string, bool>
            FunCheckEmailExists = CompiledQuery.Compile((IndiaDeals2DayDataContext context, string Email) =>
                (
                context.Tbl_UserAccesses.FirstOrDefault(x => x.Email == Email) != null?false :true
                )
            );

        public static readonly Func<IndiaDeals2DayDataContext, string, Tbl_UserAccess>
             FunGetUserAccessDetails = CompiledQuery.Compile((IndiaDeals2DayDataContext context, string UserName) =>
                 (
                 from x in context.Tbl_UserAccesses
                 where x.UserLoginName == UserName
                 select x
                 ).SingleOrDefault()
             );

        public static readonly Func<IndiaDeals2DayDataContext, Tbl_Statastic>
             FunGetStatastics = CompiledQuery.Compile((IndiaDeals2DayDataContext context) =>
                 (
                 from x in context.Tbl_Statastics                 
                 select x
                 ).SingleOrDefault()
             );

        public static readonly Func<IndiaDeals2DayDataContext, string, bool>
            FunIsUserValid = CompiledQuery.Compile((IndiaDeals2DayDataContext context, string userName) =>
                (
                context.Tbl_UserAccesses.FirstOrDefault(x => x.UserLoginName == userName && x.IsUserValid == true) != null?true :false
                )
            );

        public static readonly Func<IndiaDeals2DayDataContext, string, DateTime,bool>
            FunIsDOBMatched = CompiledQuery.Compile((IndiaDeals2DayDataContext context, string userName,DateTime Dob) =>
                (
                context.Tbl_UserAccesses.FirstOrDefault(x => x.UserLoginName == userName && x.DateOfBirth.Equals(Dob)) != null ? true : false
                )
            );

        public static readonly Func<IndiaDeals2DayDataContext, string, string>
            FunGetEmailAddress = CompiledQuery.Compile((IndiaDeals2DayDataContext context, string userName) =>
                (
                from x in context.Tbl_UserAccesses where x.UserLoginName.Equals(userName)
                select x.Email
                ).SingleOrDefault()
            );
        public static readonly Func<IndiaDeals2DayDataContext, string, string>
            FunGetPassword = CompiledQuery.Compile((IndiaDeals2DayDataContext context, string userName) =>
                (
                from x in context.Tbl_UserAccesses
                where x.UserLoginName.Equals(userName)
                select x.UserPassword
                ).SingleOrDefault()
            );
        public static readonly Func<IndiaDeals2DayDataContext, string, int>
            FunGetUserAccessID = CompiledQuery.Compile((IndiaDeals2DayDataContext context, string userName) =>
                (
                from x in context.Tbl_UserAccesses 
                where x.UserLoginName.Equals(userName)
                select x.UserAccessID
                ).First()
            );
    }
}
