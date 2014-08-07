using System;
using System.Globalization;
using System.Linq;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using IndiaDeals2Day.BusinessLogicComponents;
using IndiaDeals2Day.SharedComponents;


public partial class Home : System.Web.UI.Page
{
    UserBal _uBal = new UserBal();
    DealsBal _dBal = new DealsBal();
    ID2DStatasticsBal _iBal = new ID2DStatasticsBal();
    LogBal lBal = new LogBal();

    private int PostListCurrentPage
    {
        
        get
        {
            if (ViewState["_currentPage"] == null)
                return 0;
            else
                return (int)ViewState["_currentPage"];
            
        }
        set
        {
            ViewState["_currentPage"] = value;
        }
    }

    private int dealType
    {
        get
        {
            if (ViewState["_dealType"] == null)
                return 0;
            else
                return (int)ViewState["_dealType"];
        }
        set
        {
            ViewState["_dealType"] = value;
        }
    }
    
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            try
            {
                if (Session["AUser"] == null)
                {
                    GetUserIp();
                    LoadCategories();
                    LoadPriceCategories();
                    GetActiveDeals();
                    GetStatastics();
                }
                else
                {
                    Response.Redirect("UserHome.aspx");
                }                
            }
            catch (Exception ex)
            {
                lBal.LogMessage(ex.Message, LogMessageTypes.Error);
            }
        }
    }

    private void LoadPriceCategories()
    {
           var categories = _iBal.GetPriceCategories();
            if (categories != null)
            {
                CheckBoxListPrices.DataSource = categories;
                CheckBoxListPrices.DataTextField = "DealPriceCategory";
                CheckBoxListPrices.DataValueField = "DealPriceCategoryId";
                CheckBoxListPrices.DataBind();
            }        
        
    }

    private void LoadCategories()
    {        
            var categories = _iBal.GetCategories();
            if (categories != null)
            {
                CheckBoxListCategories.DataSource = categories;
                CheckBoxListCategories.DataTextField = "DealCategoryName";
                CheckBoxListCategories.DataValueField = "DealCategoryID";
                CheckBoxListCategories.DataBind();
            }       

        
    }

    private void GetStatastics()
    {
        
            ID2DStatasticsDTO iDto = _iBal.GetStatastics();

            lblOnline.Text = iDto.UsersOnline.ToString(CultureInfo.InvariantCulture);
            lblView.Text = iDto.UsersViewingNow.ToString(CultureInfo.InvariantCulture);
            lblMembers.Text = iDto.UsersCount.ToString(CultureInfo.InvariantCulture);
            lblPosts.Text = iDto.PostsCount.ToString(CultureInfo.InvariantCulture);        
    }

    private void GetUserIp()
    {
          string visitorIpAddress = string.Empty;
            if (HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"] != null)
            {
                visitorIpAddress = HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
            }
            else if (!string.IsNullOrEmpty(HttpContext.Current.Request.UserHostAddress))
            {
                visitorIpAddress = HttpContext.Current.Request.UserHostAddress;
            }
            if (!string.IsNullOrEmpty(visitorIpAddress))
            {
                _uBal.RecordUser(visitorIpAddress, DateTime.Now);
            }        

    }

    private void GetActiveDeals()
    {
        
            var dealsToBind = _dBal.GetAllActiveDeals(true);
            BindtoRepeater(dealsToBind);
            dealType = 1;        
        
    }

    internal void ValidateLogin(object sender, EventArgs e)
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

    internal void RegisterUser(object sender, EventArgs e)
    {
        
    }
    protected void btnPrev_Click(object sender, EventArgs e)
    {
           PostListCurrentPage--;
            switch (dealType)
            {
                case 1:
                    GetActiveDeals();
                    break;
                case 2:
                    GetDealsForCategoriesAndPrices();
                    break;
                case 3:
                    {

                        var latestDealsToBind = _dBal.GetAllActiveDeals(true);
                        var hiRatedDeals = (from hiRated in latestDealsToBind orderby hiRated.DealDegree descending select hiRated).ToArray();
                        BindtoRepeater(hiRatedDeals);
                        dealType = 3;
                        break;
                    }


            }
        
        
    }
    protected void btnNext_Click(object sender, EventArgs e)
    {
        
            PostListCurrentPage++;

            switch (dealType)
            {
                case 1:
                    GetActiveDeals();
                    break;
                case 2:
                    GetDealsForCategoriesAndPrices();
                    break;
                case 3:
                    {
                        var latestDealsToBind = _dBal.GetAllActiveDeals(true);
                        var hiRatedDeals = (from hiRated in latestDealsToBind orderby hiRated.DealDegree descending select hiRated).ToArray();
                        BindtoRepeater(hiRatedDeals);
                        dealType = 3;
                        break;
                    }



            }
        
        
        
    }
    protected void RepDeals_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {

            var text = ((Label)e.Item.FindControl("lblDealDescription")).Text;
            ((Label)e.Item.FindControl("lblDealDescription")).Text = text.SplitToNewLine();
        }
              
    }    
    protected void btnSearch_Click(object sender, EventArgs e)
    {
       
            var latestDealsToBind = _dBal.GetAllActiveDeals(true);
            var dealsOnSearch = (from latest in latestDealsToBind where latest.DealDescription.Contains(txtSearch.Text) select latest).ToArray();
            BindtoRepeater(dealsOnSearch);
            txtSearch.Text = string.Empty;
        
            
    }
    protected void CheckBoxListFieldsCategories_SelectedIndexChanged(object sender, EventArgs e)
    {
        GetDealsForCategoriesAndPrices();
        
    }

    private void GetDealsForCategoriesAndPrices()
    {
        
            if (!String.IsNullOrEmpty(CheckBoxListCategories.SelectedValue) && String.IsNullOrEmpty(CheckBoxListPrices.SelectedValue))
            {
                var categoriesList = (from ListItem item in CheckBoxListCategories.Items where item.Selected select Convert.ToInt32(item.Value)).ToArray();

                var latestDealsToBind = _dBal.GetAllActiveDeals(true);
                var dealsOnCategory = (from deals in latestDealsToBind where categoriesList.Contains(deals.DealCategory) select deals).ToArray();
                BindtoRepeater(dealsOnCategory);

            }
            if (!String.IsNullOrEmpty(CheckBoxListPrices.SelectedValue) && String.IsNullOrEmpty(CheckBoxListCategories.SelectedValue))
            {
                var pricesList =
                    (from ListItem item in CheckBoxListPrices.Items where item.Selected select Convert.ToInt32(item.Value))
                        .ToArray();

                var latestDealsToBind = _dBal.GetAllActiveDeals(true);
                var dealsOnCategory = (from deals in latestDealsToBind where pricesList.Contains(deals.DealPriceCategory) orderby deals.DealPrice descending select deals).ToArray();
                BindtoRepeater(dealsOnCategory);

            }
            if (!String.IsNullOrEmpty(CheckBoxListPrices.SelectedValue) && !String.IsNullOrEmpty(CheckBoxListCategories.SelectedValue))
            {
                var pricesList =
                    (from ListItem item in CheckBoxListPrices.Items where item.Selected select Convert.ToInt32(item.Value))
                        .ToArray();
                var categoriesList = (from ListItem item in CheckBoxListCategories.Items where item.Selected select Convert.ToInt32(item.Value)).ToArray();

                var latestDealsToBind = _dBal.GetAllActiveDeals(true);
                var dealsOnCategory = (from deals in latestDealsToBind where categoriesList.Contains(deals.DealCategory) select deals).ToArray();
                var dealsOnprcieAndCategory = (from price in dealsOnCategory
                                              where pricesList.Contains(price.DealPriceCategory)
                                              orderby price.DealPrice descending
                                              select price).ToArray();
                BindtoRepeater(dealsOnCategory);



            }

            dealType = 2;
            if (String.IsNullOrEmpty(CheckBoxListPrices.SelectedValue) && String.IsNullOrEmpty(CheckBoxListCategories.SelectedValue))
            {
                GetActiveDeals();
            }
        
    }
    protected void CheckBoxListPrices_SelectedIndexChanged(object sender, EventArgs e)
    {
        GetDealsForCategoriesAndPrices();
    }
    protected void btnHighrated_Click(object sender, EventArgs e)
    {        
            var latestDealsToBind = _dBal.GetAllActiveDeals(true);
            var hiRatedDeals = (from hiRated in latestDealsToBind orderby hiRated.DealDegree descending select hiRated).ToArray();
            BindtoRepeater(hiRatedDeals);
            dealType = 3;       

    }
    protected void btnLatestDeals_Click(object sender, EventArgs e)
    {
        GetActiveDeals();
    }

    private void BindtoRepeater(DealsDto[] deals)
    {
            var dealsPaging = new PagedDataSource
            {
                DataSource = deals,
                AllowPaging = true,
                PageSize = 15,
                CurrentPageIndex = PostListCurrentPage
            };
            
            lblCurrentPage.Text = (PostListCurrentPage + 1).ToString() + " of " + dealsPaging.PageCount.ToString();
            btnPrev.Enabled = !dealsPaging.IsFirstPage;
            btnNext.Enabled = !dealsPaging.IsLastPage;

            RepDeals.DataSource = dealsPaging;
            RepDeals.DataBind();

            if (deals.Count() == 0)
            {
                btnPrev.Visible = false;
                btnNext.Visible = false;
                lblCurrentPage.Visible = false;
            }
        
    }
    protected void lbRegister_Click(object sender, EventArgs e)
    {
        Response.Redirect("Signup.aspx");
        
    }

    protected void RepDeals_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        Response.Redirect("Signup.aspx");    
    }
    protected void lbForgotPassword_Click(object sender, EventArgs e)
    {
        Response.Redirect("ForgotPassword.aspx");
    }
    protected void btnShareADeal_Click(object sender, EventArgs e)
    {
        Response.Redirect("Signup.aspx");
    }
    public string GetImage(object img)
    {
        if (img != null)
        {
            return "data:image/jpg;base64," + Convert.ToBase64String((byte[])img);
        }
        else
        {
            return "~//Images//NoImage.jpg";
        }
    }
}