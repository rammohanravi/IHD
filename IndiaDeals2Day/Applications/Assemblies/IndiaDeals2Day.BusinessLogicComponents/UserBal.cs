using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;
using IndiaDeals2Day.SharedComponents;
using IndiaDeals2Day.DataAccessComponents;

namespace IndiaDeals2Day.BusinessLogicComponents
{
    public class UserBal
    {
        UserDal uDal = new UserDal();
        LogBal lBal = new LogBal();
        static bool MailSent = false;
        public UserDetailsDTO GetUserDetails(string UserName)
        {
            try
            {
                return uDal.GetUserDetails(UserName);
            }
            catch (Exception ex)
            {
                lBal.LogMessage(ex.InnerException.Message + "at " + ex.StackTrace, LogMessageTypes.Error);
                return null;
            }
        }

        public string ValidateUser(string UserName, string Password)
        {
            try
            {
                return uDal.ValidateUser(UserName, Password);
            }
            catch (Exception ex)
            {
                lBal.LogMessage(ex.InnerException.Message + "at " + ex.StackTrace, LogMessageTypes.Error);
                return null;
            }
        }

        public int  RegisterUser(string UserName, string Password, string Email,int UserType,string MobileNumber,DateTime DateOfBirth)
        {
            try
            {
                return uDal.RegisterUser(UserName, Password, Email, UserType, MobileNumber,DateOfBirth);                
                
            }
            catch (Exception ex)
            {
                lBal.LogMessage(ex.InnerException.Message + "at " + ex.StackTrace, LogMessageTypes.Error);
                return -1;
            }
        }

        public void UpdateLastLoginDateTime(string UserName)
        {
            try
            {
                uDal.UpdateLastLoginDateTime(UserName);
            }
            catch (Exception ex)
            {
                lBal.LogMessage(ex.InnerException.Message + "at " + ex.StackTrace, LogMessageTypes.Error);                
            }
        }


        public void RecordUser(string visitorIpAddress, DateTime recordDateTime)
        {
            try
            {
                uDal.RecordUser(visitorIpAddress, recordDateTime);
            }
            catch (Exception ex)
            {
                lBal.LogMessage(ex.InnerException.Message + "at " + ex.StackTrace, LogMessageTypes.Error);                
            }
        }

        public void SignOutUser(string userName)
        {
            try
            {
                uDal.SignOutUser(userName);
            }
            catch (Exception ex)
            {
                lBal.LogMessage(ex.InnerException.Message + "at " + ex.StackTrace, LogMessageTypes.Error);                
            }
        }

        public bool IsValidUserName(string userName)
        {
            bool returnvalue = false;
            try
            {
               returnvalue =  uDal.IsValidUserName(userName);
            }
            catch (Exception ex)
            {
                lBal.LogMessage(ex.InnerException.Message + "at " + ex.StackTrace, LogMessageTypes.Error);
            }

            return returnvalue;
        }

        public bool IsDOBMatched(string userName,int year, int month, int day)
        {
            bool returnvalue = false;
            try
            {
                returnvalue = uDal.IsDOBMatched(userName, new DateTime(year,month,day));
            }
            catch (Exception ex)
            {
                lBal.LogMessage(ex.InnerException.Message + "at " + ex.StackTrace, LogMessageTypes.Error);
            }

            return returnvalue;
        }

        public string SendEmailWithPassword(string userName)
        {
            try
            {
            string registeredEmailAddress = uDal.GetRegisteredEmailAddress(userName);
            string password = uDal.GetPassword(userName);
            var configLoader = new ConfigHelper();
            SmtpClient client = new SmtpClient(configLoader.GetAppSettingsStringValue("MailServer"), int.Parse(configLoader.GetAppSettingsStringValue("MailPort")));
            MailAddress from = new MailAddress(configLoader.GetAppSettingsStringValue("EmailSender"),configLoader.GetAppSettingsStringValue("DisplayNameStart")+(char)0xD8+configLoader.GetAppSettingsStringValue("DisplayNameEnd"),System.Text.Encoding.UTF8);
            MailAddress to = new MailAddress(registeredEmailAddress.Trim());
            MailMessage message = new MailMessage(from, to);
            message.Body = "Your password is : " + password;
            message.BodyEncoding = System.Text.Encoding.UTF8;
            message.Subject = "Your password to access Deals4uindia.com";
            client.Credentials = CredentialCache.DefaultNetworkCredentials;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;             
            client.Send(message);
            return registeredEmailAddress;
            }

            catch (Exception ex)
            {
                lBal.LogMessage(ex.InnerException.Message + "at " + ex.StackTrace, LogMessageTypes.Error);
                return ex.InnerException.Message;
            }

        }
    }
}
