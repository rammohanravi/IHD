<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DealDetails.aspx.cs" Inherits="DealDetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>DealDetails</title>    
    <style type="text/css">
        .style1
        {
            width: 118px;
        }
        .style2
        {
            width: 231px;
        }
    </style>
    </head>
<body>
    <form id="frmDealDetails" runat="server">
    <div>   

    <table>
       <tr>
            <td class="style2" >
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
    <td  align = "center" class="style1">
        <asp:Label ID="Label6" runat="server" Text="Welcome"></asp:Label>
    </td>
    
    <td  align = "center" class="style1">
        <asp:Label ID="Label7" runat="server" Text=":"></asp:Label>
    </td>
    
    <td  align = "center" class="style1">
        <asp:Label ID="lblUserName" runat="server" Text=""></asp:Label>
    </td>
    </tr>    
    <tr>
    <td colspan = "3" align = "center" class="style1">
        <asp:LinkButton ID="lbSignout" runat="server" onclick="lbSignout_Click1">Signout</asp:LinkButton>
    </td>
    </tr>   
    <tr>
    <td colspan = "3" align = "center" class="style1">
        <asp:Label ID="Label5" runat="server" Text="Profile Information"></asp:Label>
    </td>
    </tr>
    </table> 
            </td>           
        </tr>       
       
        <tr>        
        <td valign = "top" class="style2">
         <table>
         <tr>
         <td>
             <asp:Button ID="btnGoToHome" runat="server" Text="Goto Home Page" 
                 onclick="btnGoToHome_Click" />
         </td>
         </tr>
         </table>   
        Adevertisements
        </td>
        <td colspan = "3" align = "left" width = "250px">
          <table>
          <tr>
          <td colspan = "3" align = "center">
              <asp:Label ID="Label2" runat="server" Text="DealDetails"></asp:Label>
          </td>
          </tr>
          <tr>
          <td valign = "top">
              <asp:Image ID="dealImage" runat="server" Width="150px" Height = "150px"/>
          </td>
          <td valign = "top">
          <table>
          <tr>
          <td colspan = "3">
              <asp:Label ID="lblDealTitle" runat="server" Text="Label" Font-Bold="True" 
                  Font-Size="Large"></asp:Label>
          </td>
          </tr>
          <tr>
          <td>
              <asp:Label ID="lblPostedBy" runat="server" Text="Label"></asp:Label>
          </td>
          <td>
              <asp:Label ID="lblPostedDate" runat="server" Text="Label"></asp:Label>
          </td>
          <td>
              <asp:Label ID="lblDealPrice" runat="server" Text="Label"></asp:Label>
          </td>
          </tr>
          <tr>
          <td colspan = "3">
              <asp:HyperLink ID="dealUrl" runat="server">HyperLink</asp:HyperLink>
          </td>
          </tr>
          <tr>
          <td colspan = "3">
              <asp:Label ID="lblDealDescription" runat="server" Text="Label" Width = "1000px" 
                  Height = "250px" ></asp:Label>
          </td>
          </tr>
          </table>
          </td>
          <td>
          </td>
          </tr>
          <tr>
          <td colspan = "2" align = "left">
              <asp:Label ID="lblCommentsCount" runat="server" Text=""></asp:Label>
          </td>
          </tr>
          <tr>
          <td colspan = "2" align = "left" width = "1000px">
          <asp:Repeater ID="RepComments" runat="server" 
                  onitemdatabound="RepComments_ItemDataBound">
          <ItemTemplate>
          <table style="background-color:#EBEFF0;border-top:1px dotted #df5015; width:1000px">
          <tr>
          <td align = "left">
          <asp:Image ID="userPicture" runat="server" ImageUrl = '<%# Eval("UserProfilePicture") %>' Width = "50px" Height = "50px"/>
          </td>
          <td align = "left">
          <table>
          <tr>
          <td>
              <asp:Label ID="lblUserName" runat="server" Text='<%# Eval("CommentedBy") %>'></asp:Label>
          </td>
          </tr>
          <tr>
          <td>
              <asp:Label ID="lblComment" runat="server" Text='<%# Eval("CommentDescription") %>'></asp:Label>
          </td>
          </tr>
          </table>
          </td>
          <td align = "left">
              <asp:Label ID="lblPostedDate" runat="server" Text='<%# Eval("CommentMadeOn") %>'></asp:Label>
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
          </tr>
          <tr>
          <td colspan = "2" align = "left">
              <asp:Label ID="Label1" runat="server" Text="Add Your Comment Here"></asp:Label>
          </td>
          </tr>
          <tr>
          <td colspan = "2" align = "left">
              <asp:TextBox ID="txtDealComment" runat="server" Width="1000px" Height = "150px" 
                  TextMode="MultiLine"></asp:TextBox>
          </td>
          <td align = "left">
              <asp:RequiredFieldValidator ID="rfvComment" runat="server" ErrorMessage="" 
                  ControlToValidate="txtDealComment" ForeColor="Red" 
                  ToolTip="Please enter comment" ValidationGroup="v1">*</asp:RequiredFieldValidator> 
          </td>
          </tr> 
          <tr>
          <td colspan = "2" align = "left">
              <asp:Button ID="btnComment" runat="server" Text="Add Comment" 
                  onclick="btnComment_Click" ValidationGroup="v1" />
          </td>
          </tr>                   
          </table>   
            </td>     
              
        <td>
        Advertisements        
         Advertisements        
        </td>            
        </tr>
        <tr>
            <td colspan="5" height="48" align = "center">
            Advertisements
                </td>
        </tr>
    </table>

    </div>
    </form>
</body>
</html>
