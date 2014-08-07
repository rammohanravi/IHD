using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using IndiaDeals2Day.BusinessLogicComponents;

public partial class AdminHome : System.Web.UI.Page
{
    UserBal uBal = new UserBal();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (!Context.User.Identity.IsAuthenticated)
            {
                FormsAuthentication.SignOut();
                Session.RemoveAll();
                Session.Abandon();
                Response.Cache.SetNoStore();
                Response.Cache.SetExpires(DateTime.Now.AddDays(-1));
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Redirect(Request.UrlReferrer.ToString());
            }
        }
    }

    internal void RegisterModerator(object sender, EventArgs e)
    {
        int result = uBal.RegisterUser(txtRegisterUserName.Text, txtRegisterpassword.Text, txtEMail.Text,2,string.Empty,DateTime.Today);
        switch (result)
        {
            case 0:
                lblRegisterResult.Text = "Oops, Registration failed due to system failure. Please try agian later";
                mpeJoin.Show();
                break;
            case 1:
                 lblRegisterResult.Text = "Congrats, Moderator created successfully";
                mpeJoin.Show();
                break;
            case 2:
                lblRegisterResult.Text = "Oops, Username already exists. Please select another username";
                mpeJoin.Show();
                break;
            case 3:
                lblRegisterResult.Text = "Oops, Email already exists. Please enter another Email address";
                mpeJoin.Show();
                break;
            default:
                lblRegisterResult.Text = "Oops, System Failure.Please try again later";
                mpeJoin.Show();
                break;
        }
    }
    protected void lbSignout_Click(object sender, EventArgs e)
    {
        uBal.SignOutUser(Context.User.Identity.Name);
        FormsAuthentication.SignOut();
        Session.RemoveAll();
        Session.Abandon();
        Response.Cache.SetNoStore();
        Response.Cache.SetExpires(DateTime.Now.AddDays(-1));
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Redirect(Request.UrlReferrer.ToString());
    }
    protected void lbAddModerator_Click(object sender, EventArgs e)
    {

    }
}