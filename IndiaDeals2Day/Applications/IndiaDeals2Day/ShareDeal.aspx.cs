using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using IndiaDeals2Day.BusinessLogicComponents;
using IndiaDeals2Day.SharedComponents;
using System.Data;
using System.Runtime.Caching;
using System;
using System.IO;

public partial class ShareDeal : System.Web.UI.Page
{
    UserBal _uBal = new UserBal();
    DealsBal _dBal = new DealsBal();
    LogBal lBal = new LogBal();
    ID2DStatasticsBal iBal = new ID2DStatasticsBal();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["AUser"] == null)
            {
                FormsAuthentication.SignOut();
                Session.RemoveAll();
                Session.Abandon();
                Response.Cache.SetNoStore();
                Response.Cache.SetExpires(DateTime.Now.AddDays(-1));
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Redirect("Home.aspx");
            }
            else
            {
                lblUserName.Text = Session["AUser"].ToString();
                FillDealStartDateControl();
                FillDealEndDateControl();
                LoadDealCategories();
            }

        }
    }

    private void LoadDealCategories()
    {
        var dealCategories = iBal.GetCategories();
        if (dealCategories != null)
        {
            ddlCategory.DataSource = dealCategories;
            ddlCategory.DataTextField = "DealCategoryName";
            ddlCategory.DataValueField = "DealCategoryID";
            ddlCategory.DataBind();
        } 
    }

    private void FillDealEndDateControl()
    {
        DateTimeFormatInfo dInfo = DateTimeFormatInfo.GetInstance(null);
        int currentYear = DateTime.Today.Year;
        for (int i = currentYear; i < currentYear+10; i++)
        {
            ddlEndYear.Items.Add(new ListItem(i.ToString(), i.ToString()));
        }
        if (ddlEndYear.SelectedValue.Equals(DateTime.Today.Year.ToString()))
        {
            for (int i = DateTime.Today.Month; i <= 12; i++)
            {
                ddlEndMonth.Items.Add(new ListItem(dInfo.GetMonthName(i), i.ToString()));
            }
        }
        else
        {
            for (int i = 1; i < 13; i++)
            {
                ddlEndMonth.Items.Add(new ListItem(dInfo.GetMonthName(i), i.ToString()));
            }
        }
        ddlEndMonth.SelectedValue = DateTime.Today.Month.ToString();

        int daysInamonth = DateTime.DaysInMonth(int.Parse(ddlEndYear.SelectedItem.Text), int.Parse(ddlEndMonth.SelectedValue));
        if (ddlEndYear.SelectedItem.Text.Equals(DateTime.Today.Year.ToString()) && ddlEndMonth.SelectedValue.Equals(DateTime.Today.Month.ToString()))
        {
            for (int i = 1; i <= DateTime.Today.Day; i++)
            {
                ddlEndDay.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
        }
        else
        {
            for (int i = 1; i <= daysInamonth; i++)
            {
                ddlEndDay.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
        }

        ddlEndDay.SelectedValue = DateTime.Today.Day.ToString();
    }

    private void FillDealStartDateControl()
    {
        DateTimeFormatInfo dInfo = DateTimeFormatInfo.GetInstance(null);
        int currentYear = DateTime.Today.Year;
        for (int i = currentYear; i > 1940; i--)
        {
            ddlStartYear.Items.Add(new ListItem(i.ToString(), i.ToString()));
        }
        for (int i = 1; i < 13; i++)
            {
                ddlStartMonth.Items.Add(new ListItem(dInfo.GetMonthName(i), i.ToString()));
            }
        
        ddlStartMonth.SelectedValue = DateTime.Today.Month.ToString();

        int daysInamonth = DateTime.DaysInMonth(int.Parse(ddlStartYear.SelectedItem.Text), int.Parse(ddlStartMonth.SelectedValue));
        if (ddlStartYear.SelectedItem.Text.Equals(DateTime.Today.Year.ToString()) && ddlStartMonth.SelectedValue.Equals(DateTime.Today.Month.ToString()))
        {
            for (int i = 1; i <= DateTime.Today.Day; i++)
            {
                ddlStartDay.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
        }
        else
        {
            for (int i = 1; i <= daysInamonth; i++)
            {
                ddlStartDay.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
        }

        ddlStartDay.SelectedValue = DateTime.Today.Day.ToString();
    }
    
    protected void lbSignout_Click(object sender, EventArgs e)
    {
        if (Session["AUser"] != null)
        {
            _uBal.SignOutUser(Session["AUser"].ToString());
            FormsAuthentication.SignOut();
            Session.RemoveAll();
            Session.Abandon();
            Response.Cache.SetNoStore();
            Response.Cache.SetExpires(DateTime.Now.AddDays(-1));
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Redirect("Home.aspx");
        }
        else
        {
            Response.Redirect("Home.aspx");
        }
    }
    protected void btnGoToHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("UserHome.aspx");
    }
    protected void ddlStartYear_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlStartMonth.Items.Clear();
        if (ddlStartYear.SelectedValue.Equals(DateTime.Today.Year.ToString()))
        {
            DateTimeFormatInfo dInfo = DateTimeFormatInfo.GetInstance(null);
            for (int i = 1; i <= DateTime.Today.Month; i++)
            {
                ddlStartMonth.Items.Add(new ListItem(dInfo.GetMonthName(i), i.ToString()));
            }
        }
        else
        {
            DateTimeFormatInfo dInfo = DateTimeFormatInfo.GetInstance(null);
            for (int i = 1; i < 13; i++)
            {
                ddlStartMonth.Items.Add(new ListItem(dInfo.GetMonthName(i), i.ToString()));
            }
        }
    }
    protected void ddlStartMonth_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlStartDay.Items.Clear();
        int daysInamonth = DateTime.DaysInMonth(int.Parse(ddlStartYear.SelectedItem.Text), int.Parse(ddlStartMonth.SelectedValue));
        if (ddlStartYear.SelectedItem.Text.Equals(DateTime.Today.Year.ToString()) && ddlStartMonth.SelectedValue.Equals(DateTime.Today.Month.ToString()))
        {
            for (int i = 1; i <= DateTime.Today.Day; i++)
            {
                ddlStartDay.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
        }
        else
        {
            for (int i = 1; i <= daysInamonth; i++)
            {
                ddlStartDay.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
        }
    }
    protected void ddlEndYear_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlEndMonth.Items.Clear();
        if (ddlEndYear.SelectedValue.Equals(DateTime.Today.Year.ToString()))
        {
            DateTimeFormatInfo dInfo = DateTimeFormatInfo.GetInstance(null);
            for (int i = 1; i <= DateTime.Today.Month; i++)
            {
                ddlEndMonth.Items.Add(new ListItem(dInfo.GetMonthName(i), i.ToString()));
            }
        }
        else
        {
            DateTimeFormatInfo dInfo = DateTimeFormatInfo.GetInstance(null);
            for (int i = 1; i < 13; i++)
            {
                ddlEndMonth.Items.Add(new ListItem(dInfo.GetMonthName(i), i.ToString()));
            }
        }
    }
    protected void ddlEndMonth_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlEndDay.Items.Clear();
        int daysInamonth = DateTime.DaysInMonth(int.Parse(ddlEndYear.SelectedItem.Text), int.Parse(ddlEndMonth.SelectedValue));
        if (ddlEndYear.SelectedItem.Text.Equals(DateTime.Today.Year.ToString()) && ddlEndMonth.SelectedValue.Equals(DateTime.Today.Month.ToString()))
        {
            for (int i = 1; i <= DateTime.Today.Day; i++)
            {
                ddlEndDay.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
        }
        else
        {
            for (int i = 1; i <= daysInamonth; i++)
            {
                ddlEndDay.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        DateTime dealStartDate = new DateTime(int.Parse(ddlStartYear.SelectedValue), int.Parse(ddlStartMonth.SelectedValue), int.Parse(ddlStartDay.SelectedValue));
        DateTime dealEndDate = new DateTime(int.Parse(ddlEndYear.SelectedValue), int.Parse(ddlEndMonth.SelectedValue), int.Parse(ddlEndDay.SelectedValue));
        if (dealStartDate <= dealEndDate)
        {
            string[] imageExtensions = {".JPEG",".JPG",".TIFF",".GIF",".BMP",".PNG" };
        if (DealPictureUploader.HasFile)
        {
            string fileExtension = Path.GetExtension(DealPictureUploader.FileName).ToUpper();
            if (imageExtensions.Contains(fileExtension.ToUpper()))
            {
            //string imageUrl = Path.GetFullPath(DealPictureUploader.FileName);
            
            FileStream fs = new FileStream(@DealPictureUploader.FileName, FileMode.Open, FileAccess.Read);
            byte[] dealImageData = new byte[fs.Length];
            fs.Read(dealImageData, 0, Convert.ToInt32(fs.Length));
            string dealTitle = txtTitle.Text.Trim();
            string dealDesc = txtDescription.Text.Trim();
            decimal dealPrice = decimal.Parse(txtPrice.Text.Trim());
            int dealCategory = int.Parse(ddlCategory.SelectedValue);
            string dealUrl = txtDealUrl.Text.Trim();
            lblResult.Text = _dBal.ShareTheDeal(dealTitle, dealDesc, dealPrice, dealCategory, dealUrl, dealImageData,lblUserName.Text,dealStartDate,dealEndDate);
            }            
        }            
        }
        else
        {
            lblResult.Text = "Deal start date should not be < Deal end date";
        }
    }
}