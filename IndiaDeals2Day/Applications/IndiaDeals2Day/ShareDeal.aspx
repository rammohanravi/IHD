<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShareDeal.aspx.cs" Inherits="ShareDeal" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Share A Deal</title>    
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
    <form id="frmShareDeal" runat="server">
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
        <asp:LinkButton ID="lbSignout" runat="server" onclick="lbSignout_Click">Signout</asp:LinkButton>
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
              <asp:Label ID="Label2" runat="server" Text="Share A Deal Here"></asp:Label>
          </td>
          </tr>
          <tr>          
          <td valign = "top">
          <table>
          <tr>
          <td colspan = "2">
              <asp:Label ID="lblDealTitle" runat="server" Text="Title"></asp:Label>
          </td>
          </tr>
          <tr>
          <td>
              <asp:TextBox ID="txtTitle" runat="server" Width="750px"></asp:TextBox> 
          
              <asp:RequiredFieldValidator ID="rfvTitle" runat="server" 
                  ErrorMessage="Please enter deal title" ControlToValidate="txtTitle" 
                  ForeColor="Red" ToolTip="Please enter deal title">*</asp:RequiredFieldValidator>
          </td>
          </tr> 
          <tr>
          <td colspan = "2">
              <asp:Label ID="Label1" runat="server" Text="Price"></asp:Label>
          </td>
          </tr> 
          <tr>
          <td>
              <asp:TextBox ID="txtPrice" runat="server" Width="750px"></asp:TextBox>
              <asp:RequiredFieldValidator ID="rfvPrice" runat="server" 
                  ErrorMessage="Please enter deal price" ControlToValidate="txtPrice" 
                  ForeColor="Red" ToolTip="Please enter deal price">*</asp:RequiredFieldValidator>
              <asp:RegularExpressionValidator ID="revPrice" runat="server" 
                  ErrorMessage="Please enter valid deal price" 
                  ValidationExpression="^(?=.*\d)\d*(?:\.\d\d)?$" 
                  ControlToValidate="txtPrice" ForeColor="Red">*</asp:RegularExpressionValidator>
              
          </td>
          </tr>  
           <tr>
          <td colspan = "2">
              <asp:Label ID="Label3" runat="server" Text="Category"></asp:Label>
          </td>
          </tr>
          <tr>
          <td colspan = "2">
              <asp:DropDownList ID="ddlCategory" runat="server" Width = "350px">
              </asp:DropDownList>
          </td>
          </tr>
          <tr>
          <td colspan = "2">
              <asp:Label ID="Label8" runat="server" Text="DealUrl"></asp:Label>
          </td>
          </tr>
          <tr>
          <td colspan = "2">
              <asp:TextBox ID="txtDealUrl" runat="server"  Width="747px"></asp:TextBox>
          </td>
          </tr>
          <tr>
          <td colspan = "2">
              <asp:Label ID="Label9" runat="server" Text="DealDescription"></asp:Label>
          </td>
          </tr>
          <tr>
          <td colspan = "2">
              <asp:TextBox ID="txtDescription" runat="server" TextMode = "MultiLine" 
                  Height="200px" Width="749px"></asp:TextBox>
          </td>
          </tr> 
          <tr>
          <td colspan = "2">
              <asp:Label ID="Label10" runat="server" Text="Start Date"></asp:Label>
          </td>
          </tr>
          <tr>
          <td colspan = "2">
                  <asp:DropDownList ID="ddlStartYear" runat="server" AutoPostBack="True" 
                      onselectedindexchanged="ddlStartYear_SelectedIndexChanged">
                  </asp:DropDownList>
                  
                  <asp:DropDownList ID="ddlStartMonth" runat="server" AutoPostBack="True" 
                      onselectedindexchanged="ddlStartMonth_SelectedIndexChanged">
                  </asp:DropDownList>
                  
                  <asp:DropDownList ID="ddlStartDay" runat="server">
                  </asp:DropDownList>
                  </td>
          </tr> 
          <tr>
          <td colspan = "2">
              <asp:Label ID="Label11" runat="server" Text="End Date"></asp:Label>
          </td>
          </tr>
          <tr>
          <td colspan = "2">
                  <asp:DropDownList ID="ddlEndYear" runat="server" AutoPostBack="True" 
                      onselectedindexchanged="ddlEndYear_SelectedIndexChanged">
                  </asp:DropDownList>
                  
                  <asp:DropDownList ID="ddlEndMonth" runat="server" AutoPostBack="True" 
                      onselectedindexchanged="ddlEndMonth_SelectedIndexChanged">
                  </asp:DropDownList>
                  
                  <asp:DropDownList ID="ddlEndDay" runat="server">
                  </asp:DropDownList>
                  </td>
          </tr>
          <tr>
          <td colspan = "2">
              <asp:Label ID="Label12" runat="server" Text="Upload Deal Image"></asp:Label>
          </td>
          </tr>
          <tr>
          <td colspan = "2">
          <asp:FileUpload ID="DealPictureUploader" runat="server" />
          </td>
          </tr> 
          <tr>
          <td colspan = "2">
              <asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" Width="127px" 
                  onclick="btnSubmit_Click" />
          </td>
          </tr>
          <tr>
          <td colspan = "2">
              <asp:Label ID="lblResult" runat="server" Text="" ForeColor = "Red"></asp:Label>
          </td>
          </tr>     
          </table>
          </td>
          <td>
          </td>
          </tr>          
          </table>   
            </td>     
              
        <td>
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
