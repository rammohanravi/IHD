using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IndiaDeals2Day.BusinessLogicComponents;
using IndiaDeals2Day.SharedComponents;
using System.Web.Security;
using System.Globalization;

public partial class ForgotPassword : System.Web.UI.Page
{
    UserBal _uBal = new UserBal();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            FillDateOfBirthControl();
        }
    }
    private void FillDateOfBirthControl()
    {
        DateTimeFormatInfo dInfo = DateTimeFormatInfo.GetInstance(null);
        int currentYear = DateTime.Today.Year;
        for (int i = currentYear; i > 1940; i--)
        {
            ddlYear.Items.Add(new ListItem(i.ToString(), i.ToString()));
        }
        if (ddlYear.SelectedValue.Equals(DateTime.Today.Year.ToString()))
        {
            for (int i = 1; i <= DateTime.Today.Month; i++)
            {
                ddlMonth.Items.Add(new ListItem(dInfo.GetMonthName(i), i.ToString()));
            }
        }
        else
        {
            for (int i = 1; i < 13; i++)
            {
                ddlMonth.Items.Add(new ListItem(dInfo.GetMonthName(i), i.ToString()));
            }
        }
        ddlMonth.SelectedValue = DateTime.Today.Month.ToString();

        int daysInamonth = DateTime.DaysInMonth(int.Parse(ddlYear.SelectedItem.Text), int.Parse(ddlMonth.SelectedValue));
        if (ddlYear.SelectedItem.Text.Equals(DateTime.Today.Year.ToString()) && ddlMonth.SelectedValue.Equals(DateTime.Today.Month.ToString()))
        {
            for (int i = 1; i <= DateTime.Today.Day; i++)
            {
                ddlDay.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
        }
        else
        {
            for (int i = 1; i <= daysInamonth; i++)
            {
                ddlDay.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
        }

        ddlDay.SelectedValue = DateTime.Today.Day.ToString();
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        var userDeatils = _uBal.ValidateUser(txtUserName.Text, txtPassword.Text);
        if (userDeatils != null)
        {
            _uBal.UpdateLastLoginDateTime(txtUserName.Text);
            Session["AUser"] = txtUserName.Text;
            Response.Redirect(userDeatils);
        }
        else
        {
            lblResult.Text = "Oops, Either Username or Password is invalid, Please check";
        }
    }
    protected void btnGoToHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }

    protected void ddlMonth_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlDay.Items.Clear();
        int daysInamonth = DateTime.DaysInMonth(int.Parse(ddlYear.SelectedItem.Text), int.Parse(ddlMonth.SelectedValue));
        if (ddlYear.SelectedItem.Text.Equals(DateTime.Today.Year.ToString()) && ddlMonth.SelectedValue.Equals(DateTime.Today.Month.ToString()))
        {
            for (int i = 1; i <= DateTime.Today.Day; i++)
            {
                ddlDay.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
        }
        else
        {
            for (int i = 1; i <= daysInamonth; i++)
            {
                ddlDay.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
        }

    }
    protected void ddlYear_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlMonth.Items.Clear();
        if (ddlYear.SelectedValue.Equals(DateTime.Today.Year.ToString()))
        {
            DateTimeFormatInfo dInfo = DateTimeFormatInfo.GetInstance(null);
            for (int i = 1; i <= DateTime.Today.Month; i++)
            {
                ddlMonth.Items.Add(new ListItem(dInfo.GetMonthName(i), i.ToString()));
            }
        }
        else
        {
            DateTimeFormatInfo dInfo = DateTimeFormatInfo.GetInstance(null);
            for (int i = 1; i < 13; i++)
            {
                ddlMonth.Items.Add(new ListItem(dInfo.GetMonthName(i), i.ToString()));
            }
        }
    }
    protected void btnGetPassword_Click(object sender, EventArgs e)
    {
        if (_uBal.IsValidUserName(txtRUserName.Text.Trim()))
        {
            if (_uBal.IsDOBMatched(txtRUserName.Text, int.Parse(ddlYear.SelectedValue), int.Parse(ddlMonth.SelectedValue), int.Parse(ddlDay.SelectedValue)))
            {
               string emailAddress = _uBal.SendEmailWithPassword(txtRUserName.Text);
               lblPResult.Text = "Your password has sent to your registered e-mail address : " + emailAddress;
            }
            else
            {
                lblPResult.Text = "Dude, You have entered invalid date of birth!";
            }

        }
        else
        {
            lblPResult.Text = "Dude, You have entered username that doesn't exist!";
        }
    }
}