using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using IndiaDeals2Day.SharedComponents;


namespace IndiaDeals2Day.DataAccessComponents
{
   
    public class UserDal
    {
        LogDal lDal = new LogDal();
        public UserDetailsDTO GetUserDetails(string UserName)
        {
            using (var context = DataAccess.GetDataContext())
            {
                return UserCompiledQueries.FunGetUserDetails(context,UserName);
            }
        }

        public int RegisterUser(string UserName,string Password, string Email,int UserType,string MobileNumber,DateTime DateOfBirth)
        {
                using (var context = DataAccess.GetDataContext())
                {
                    if (!UserCompiledQueries.FunCheckUserExists(context, UserName))
                    {
                        return 2;
                    }
                    if (!UserCompiledQueries.FunCheckEmailExists(context, Email))
                    {
                        return 3;
                    }
                    var UserDetails = new Tbl_UserAccess
                    {
                        UserLoginName = UserName,
                        UserPassword = Password,
                        Email = Email,
                        IsUserValid = true,
                        LastLoginDateTime = DateTime.Now,
                        UserRoleID = UserType,
                        DateOfBirth = DateOfBirth.Date
                    };

                    var UserpersonalDetails = new Tbl_UserPersonalDetail
                    {
                        UserAddress = string.Empty,
                        MobileNumber = MobileNumber
                    };

                    var UserProfile = new Tbl_UserProfile
                    {
                        DealsCount = 0,
                        CommentsCount = 0,
                        VouchersCount = 0,
                        BadgeID = 1
                    };

                    UserDetails.Tbl_UserPersonalDetails.Add(UserpersonalDetails);
                    UserDetails.Tbl_UserProfiles.Add(UserProfile);

                    context.Tbl_UserAccesses.InsertOnSubmit(UserDetails);
                    context.SubmitChanges();                    
                }
                return 1;
            
        }

        public void UpdateLastLoginDateTime(string UserName)
        {
            using (var context = DataAccess.GetDataContext())
            {
                var data = UserCompiledQueries.FunGetUserAccessDetails(context, UserName);
                data.NowOnline = true;
                data.LastLoginDateTime = DateTime.Now;
                context.SubmitChanges();
            }
        }
        

        public void RecordUser(string visitorIpAddress, DateTime recordDateTime)
        {
            using (var context = DataAccess.GetDataContext())
            {
                var RecordUser = new Tbl_RecordUser
                {
                    UserIpAddress = visitorIpAddress,
                    RecordedDateTime = recordDateTime

                };
                context.Tbl_RecordUsers.InsertOnSubmit(RecordUser);
                context.SubmitChanges();
            }
        }

        public void SignOutUser(string userName)
        {
            using (var context = DataAccess.GetDataContext())
            {
                var user = UserCompiledQueries.FunGetUserAccessDetails(context, userName);
                user.NowOnline = false;
                context.SubmitChanges();
            }
        }

        public string ValidateUser(string UserName, string Password)
        {
            using (var context = DataAccess.GetNoTrackingDataContext())
            {
                return UserCompiledQueries.FunValidateUser(context, UserName,Password);
            }
        }

        public bool IsValidUserName(string userName)
        {
            using (var context = DataAccess.GetNoTrackingDataContext())
            {
                return UserCompiledQueries.FunIsUserValid(context, userName);
            }
        }

        public bool IsDOBMatched(string userName,DateTime dateTime)
        {
            using (var context = DataAccess.GetNoTrackingDataContext())
            {
                return UserCompiledQueries.FunIsDOBMatched(context, userName,dateTime.Date);
            }
        }

        public string GetRegisteredEmailAddress(string userName)
        {
            using (var context = DataAccess.GetNoTrackingDataContext())
            {
                return UserCompiledQueries.FunGetEmailAddress(context, userName);
            }
        }

        public string GetPassword(string userName)
        {
            using (var context = DataAccess.GetNoTrackingDataContext())
            {
                return UserCompiledQueries.FunGetPassword(context, userName);
            }
        }
            
    }
}
