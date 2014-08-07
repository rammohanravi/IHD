<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" EnableViewStateMac="false"%>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%--<%@ OutputCache Duration="20" VaryByParam="None" %>--%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ID2D Home</title>    
    </head>
<body>
    <form id="frmHome" runat="server">
    <div>
    <asp:ScriptManager ID = "ScriptManager1" runat = "server">
</asp:ScriptManager>
lbl
    <table>
       <tr>
            <td >
            <asp:Image ID="Logo" runat="server" 
                    ImageUrl = "~/Images/LogoID2D.JPG" 
                    Width="250px" Height = "150"/>
            </td>
            <td colspan = "3">
                <asp:Label ID="Label4" runat="server" Text="Header Position" Width = "700px"></asp:Label>
                </td>
            <td>
            <table>
    <tr>
    <td>
    <asp:Label ID="lblUserName" runat="server" Text="Username"></asp:Label>
    </td>
    <td>
    <asp:TextBox ID="txtUserName" runat="server" Font-Size="14px" Width="200px" ></asp:TextBox>
    </td>
    <td>
        <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ToolTip = "Please Enter Username" Text = "*" ForeColor = "Red" ControlToValidate = "txtUserName" ValidationGroup = "vLogin"></asp:RequiredFieldValidator>
    </td>
    </tr>
    <tr>
    <td>
    <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
    </td>
    <td>
    <asp:TextBox ID="txtPassword" runat="server" Font-Size="14px" TextMode = "Password" 
            Width="200px"></asp:TextBox>
    </td>
    <td>
        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ToolTip="Please Enter Password" Text = "*" ForeColor = "Red" ControlToValidate = "txtPassword" ValidationGroup = "vLogin"></asp:RequiredFieldValidator>
    </td>
    </tr>
     <tr>
    <td align = "right" colspan = "2">
        <asp:Button ID="btnLogin" runat="server" Text="Sign In" 
            CausesValidation = "true" ValidationGroup = "vLogin" OnClick = "ValidateLogin" 
            Width="200px"/>
    </td>    
    </tr>
    <tr>
    <td colspan = "2" align = "center">
        <asp:LinkButton ID="lbForgotPassword" runat="server" CausesValidation = "false" 
            onclick="lbForgotPassword_Click">Forgot Password</asp:LinkButton>
    </td>   
    </tr>
    <tr>
    <td colspan = "2" align = "center">
        <asp:LinkButton ID="lbRegister" runat="server" CausesValidation = "false" 
            onclick="lbRegister_Click">Create an account</asp:LinkButton>
    </td>   
    </tr>
    <tr>
    <td colspan = "3" align = "left">
        <asp:Label ID="lblResult" runat="server" Text="" ForeColor = "Red"></asp:Label>
    </td>
    </tr>
    </table> 
            </td>            
        </tr>        
        <tr>
        <td colspan = "5" align = "center">
         <asp:Button ID="btnHighrated" runat="server" Text="Hi-Rated" 
                onclick="btnHighrated_Click" />
            <asp:Button ID="btnLatestDeals" runat="server" Text="Latest Deals" 
                onclick="btnLatestDeals_Click" />                      
            <asp:Button ID="btnAskShare" runat="server" Text="Ask/Share" />
            <asp:TextBox ID="txtSearch" runat="server" Width="200px"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="Search" 
            onclick="btnSearch_Click" /> 
        </td>
        </tr>
        <tr>        
        <td valign = "top"> 
        <table >
<tr>
<td>
<asp:Button ID="btnShareADeal" runat="server" Text="Share A Deal" Width = "200" 
        onclick="btnShareADeal_Click" />
</td>    
</tr> 
<%--<tr>
<td>
<asp:Button ID="btnShareACoupon" runat="server" Text="Share A Coupon" Width = "200"/>
</td>
</tr>--%>
</table>                   
        <cc1:CollapsiblePanelExtender ID = "ID2DPanelCategoryExtender" runat = "server"
        TargetControlID="PannelCategoriesList" ExpandControlID="PanelCategoryHeaderList" Collapsed="False"
        TextLabelID = "lblCollapse">
    </cc1:CollapsiblePanelExtender>
            <asp:Label ID="lblCollapse" runat="server" Text="Customize Your Needs Here"></asp:Label>
            <cc1:CollapsiblePanelExtender ID = "ID2DPanelPriceExtender" runat = "server"
        TargetControlID="PannelPricesList" ExpandControlID="PannelPriceHeaderList" Collapsed="false"
       >
    </cc1:CollapsiblePanelExtender>
<table >

    <tr>
        <td>
        <asp:Panel ID="PanelCategoryHeaderList" runat="server">
            <asp:Label ID="Label2" runat="server" Text="+ Categories"></asp:Label>
        </asp:Panel>
        </td>
    </tr>
        <tr>
        <td valign = "top">           
        
            <asp:Panel ID="PannelCategoriesList" runat="server" Visible="true">
                <asp:CheckBoxList ID="CheckBoxListCategories" runat="server" 
                                  OnSelectedIndexChanged="CheckBoxListFieldsCategories_SelectedIndexChanged" 
                                  BorderStyle="Solid" BorderColor="Blue" BorderWidth="1px" AutoPostBack="True">
                </asp:CheckBoxList>
            </asp:Panel> 
            </td>  
        </tr>

</table>
<table >
    <tr>
        <td >
        <asp:Panel ID="PannelPriceHeaderList" runat="server">
            <asp:Label ID="Label3" runat="server" Text="+ Price"></asp:Label>
        </asp:Panel>
        </td>
    </tr>
        <tr>
        <td >          
        
            <asp:Panel ID="PannelPricesList" runat="server" Visible="true">
                <asp:CheckBoxList ID="CheckBoxListPrices" runat="server" 
                                  OnSelectedIndexChanged="CheckBoxListPrices_SelectedIndexChanged" 
                                  BorderStyle="Solid" BorderColor="Blue" BorderWidth="1px" AutoPostBack="True">
                </asp:CheckBoxList>
            </asp:Panel> 
            </td>  
        </tr>

</table>
        </td>
        <td colspan = "4" align = "left" width = "250px">  
            <asp:Repeater ID="RepDeals" runat="server" 
                onitemdatabound="RepDeals_ItemDataBound" 
                onitemcommand="RepDeals_ItemCommand">
            <ItemTemplate>
            <table style="background-color:#EBEFF0;border-top:1px dotted #df5015; width:1000px">
            <tr>
            <td align = "left">
            <table>
            <tr>
            <td>                          
                <asp:Image ID="dealPicture" runat="server" ImageUrl = '<%# GetImage(Eval("DealImageData")) %>' Width = "100px" Height = "100px"/>
                </td>
            </tr>
            <tr>
            <td>
                <asp:Button ID="btnGetDeal" runat="server" Text="GET DEAL" Width = "100px" />
                </td>
            </tr>            
            </table>           
            </td>
            <td>
            <table>
            <tr>
                <asp:Label ID="lblDealTitle" runat="server" Text='<%# Eval("DealTopicname") %>' Font-Bold = "true"></asp:Label>
                </td>
            </tr>
            <tr>
            <td>
                <asp:Label ID="lblDealId" runat="server" Text='<%# Eval("DealId") %>' Visible = "false"></asp:Label>
                </td>
            </tr>
            <tr>
            <td>
                <asp:Label ID="lblDealDescription" runat="server" Text='<%# Eval("DealDescription") %>'></asp:Label>
                <asp:LinkButton ID="lbDealComments" runat="server" Text ='<%# Eval("DealComments") %>'></asp:LinkButton>
            </td>
            </tr>
            <tr>
            <td colspan = "3" align = "left">
                <asp:Label ID="lblDealPostedBy" runat="server" Text='<%# Eval("UserName") %>'></asp:Label>
                |          
                <asp:Label ID="lblDealPostedDateTime" runat="server" Text='<%# Eval("DealPosteddate") %>'></asp:Label>
            </td>
            <td align = "right" width = "100px">
                <asp:Label ID="lblDealCost" runat="server" Text='<%# Eval("DealPrice") %>'></asp:Label>
            </td>
            </tr>
            </table>
            </td>
            <td>
            <table>
            <tr>
            <td align = "center">
            
                <asp:Label ID="lblDealVolts" runat="server" Text='<%# Eval("DealDegree") %>'></asp:Label>
                </td>
            </tr>
            <tr>
              <td>
                <asp:Button ID="btnAddVolts" runat="server" Text="+ HIGH" Width = "75px" />
                </td>
            </tr>
            <tr>
            <td>
                <asp:Button ID="btnCutVolts" runat="server" Text="- LOW" Width = "75px" />
                </td>
            </tr>
            </table>
            </td>
            </tr>
            </table>
            </ItemTemplate>
            <SeparatorTemplate>
            <hr />
            </SeparatorTemplate>
            </asp:Repeater>
             <div style = "text-align :left">
                 <asp:Label ID="lblCurrentPage" runat="server" Text="CurrentPage"></asp:Label>
                 <br />
                 <asp:Button ID="btnPrev" runat="server" Text="<<" onclick="btnPrev_Click" />
                 <asp:Button ID="btnNext" runat="server" Text=">>" onclick="btnNext_Click" />
             </div> 
            </td>       
        <td>
        Advertisements        
        </td>            
        </tr>
        <tr>
            <td colspan="5" height="48" align = "center">
                <table>
                <tr>
                <td colspan = "4" align = "left">
                    <asp:Label ID="Label1" runat="server" Text="ID2D Stats"></asp:Label>
                </td>
                </tr>
                <tr>
                <td width = "100">
                Now Online
                </td>                
                <td width = "100">
                People Viewing ID2D Now
                </td>
                <td width = "100">
                Total Members
                </td>
                <td width = "100">
                Total Deals
                </td>
                </tr>
                <tr>
                <td width = "100">
                    <asp:Label ID="lblOnline" runat="server" Text="0" Font-Bold = "true" Font-Size = "Larger"></asp:Label>
                </td>                
                <td width = "100">
                <asp:Label ID="lblView" runat="server" Text="0" Font-Bold = "true" Font-Size = "Larger"></asp:Label>
                </td>
                <td width = "100">
                <asp:Label ID="lblMembers" runat="server" Text="0" Font-Bold = "true" Font-Size = "Larger"></asp:Label>
                </td>
                <td width = "100">
                <asp:Label ID="lblPosts" runat="server" Text="0" Font-Bold = "true" Font-Size = "Larger"></asp:Label>
                </td>
                </tr>
                </table></td>
        </tr>
    </table>

    </div>
    </form>
</body>
</html>
