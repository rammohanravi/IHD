using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using IndiaDeals2Day.BusinessLogicComponents;

public partial class ModeratorHome : System.Web.UI.Page
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
}