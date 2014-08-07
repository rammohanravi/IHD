using System;
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

public partial class DealDetails : System.Web.UI.Page
{

    UserBal _uBal = new UserBal();
    DealsBal _dBal = new DealsBal();    
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
                var displayvalue = Request.QueryString[0];
                //var dealId = int.Parse(_dBal.GetDecryptedData(displayvalue));
                var dealId = int.Parse(displayvalue);
                LoadAndDisplayDealDeatils(dealId);
                LoadAndDisplayDealComments(dealId);
            }
            
        }
    }

    private void LoadAndDisplayDealComments(int dealId)
    {
        var dealComments = _dBal.GetDealComments(dealId);
        lblCommentsCount.Text = dealComments.Count() + " Comments";
        var dealCommentsPaging = new PagedDataSource
        {
            DataSource = dealComments,
            AllowPaging = true,
            PageSize = 15,
            CurrentPageIndex = PostListCurrentPage
        };

        lblCurrentPage.Text = (PostListCurrentPage + 1).ToString() + " of " + dealCommentsPaging.PageCount.ToString();
        btnPrev.Enabled = !dealCommentsPaging.IsFirstPage;
        btnNext.Enabled = !dealCommentsPaging.IsLastPage;

        RepComments.DataSource = dealCommentsPaging;
        RepComments.DataBind();

        if (dealComments.Count() == 0)
        {
            btnPrev.Visible = false;
            btnNext.Visible = false;
            lblCurrentPage.Visible = false;
        }
    }

    private void LoadAndDisplayDealDeatils(int dealId)
    {
        var DealDeatils = _dBal.GetDealDetails(dealId);
        if (DealDeatils != null)
        {
            lblDealTitle.Text = DealDeatils.DealTopicname;
            lblDealPrice.Text = DealDeatils.DealPrice;
            lblDealDescription.Text = DealDeatils.DealDescription.SplitToNewLine() ;
            lblPostedBy.Text = DealDeatils.UserName;
            lblPostedDate.Text = DealDeatils.DealPosteddate.ToString();
            dealUrl.Text = DealDeatils.DealUrl;
            if (!string.IsNullOrEmpty(DealDeatils.DealUrl))
            {
                UriBuilder uri = new UriBuilder(DealDeatils.DealUrl);
                dealUrl.NavigateUrl = uri.Uri.AbsoluteUri;
            }
            else
            {
                dealUrl.NavigateUrl = DealDeatils.DealUrl;
            }
            if (DealDeatils.DealImageData != null)
            {
                dealImage.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])DealDeatils.DealImageData);
            }
            else
                dealImage.ImageUrl = "~//Images//NoImage.jpg";
        }

    }
    protected void lbSignout_Click1(object sender, EventArgs e)
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
    protected void btnNext_Click(object sender, EventArgs e)
    {
        PostListCurrentPage++;
    }
    protected void btnPrev_Click(object sender, EventArgs e)
    {
        PostListCurrentPage--;       

    }
    protected void btnComment_Click(object sender, EventArgs e)
    {       
        var displayvalue = Request.QueryString[0];
        //var dealId = int.Parse(_dBal.GetDecryptedData(displayvalue));
        var dealId = int.Parse(displayvalue);
        var dealComment = txtDealComment.Text;
        _dBal.EnterDealComment(lblUserName.Text, dealId, dealComment);
        LoadAndDisplayDealComments(dealId);
    }
    protected void RepComments_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            var text = ((Label)e.Item.FindControl("lblComment")).Text;
            ((Label)e.Item.FindControl("lblComment")).Text = text.SplitToNewLine();
        }

    }
}