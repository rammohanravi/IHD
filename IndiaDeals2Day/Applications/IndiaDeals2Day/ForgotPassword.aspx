<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Forgot Password</title>    
    <style type="text/css">
        .style1
        {
            width: 118px;
        }
    </style>
    </head>
<body>
    <form id="frmForgotPassword" runat="server">
    <div>   

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
            Width="200px" ValidationGroup="vLogin"></asp:TextBox>
    </td>
    <td>
        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ToolTip="Please Enter Password" Text = "*" ForeColor = "Red" ControlToValidate = "txtPassword" ValidationGroup = "vLogin"></asp:RequiredFieldValidator>
    </td>
    </tr>
     <tr>
    <td align = "right" colspan = "2">
        <asp:Button ID="btnLogin" runat="server" Text="Sign In" 
            CausesValidation = "true" ValidationGroup = "vLogin"  
            Width="200px" onclick="btnLogin_Click"/>
    </td>    
    </tr>
    <tr>
    <td colspan = "2" align = "center">
        <asp:LinkButton ID="lbForgotPassword" runat="server" CausesValidation = "false">Forgot Password</asp:LinkButton>
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
        <td valign = "top">
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
              <asp:Label ID="Label2" runat="server" Text="Get My Password"></asp:Label>
          </td>
          </tr>
          <tr>
          <td colspan = "1" align = "right" class="style1">
              <asp:Label ID="Label3" runat="server" Text="My username is:" Width = "200px"></asp:Label>
          </td>
          <td>
              <asp:TextBox ID="txtRUserName" runat="server" Width="200px" ValidationGroup="r"></asp:TextBox>
          </td>
          <td>
              <asp:RequiredFieldValidator ID="rfvRUserName" runat="server" ControlToValidate="txtRUserName" 
                  ForeColor="Red" ValidationGroup="r" ToolTip="Please enter username">*</asp:RequiredFieldValidator>
          </td>
          </tr>
         <tr>
          <td colspan = "1" align = "right" class="style1">
              <asp:Label ID="Label1" runat="server" Text="Date Of Birth:" Width = "200px"></asp:Label>
          </td>
          <td>
              <table>
              <tr>              
              <td>
                  <asp:DropDownList ID="ddlYear" runat="server" AutoPostBack="True" 
                      onselectedindexchanged="ddlYear_SelectedIndexChanged">
                  </asp:DropDownList>
                  </td>                  
              <td>
                  <asp:DropDownList ID="ddlMonth" runat="server" AutoPostBack="True" 
                      onselectedindexchanged="ddlMonth_SelectedIndexChanged">
                  </asp:DropDownList>
                  </td>                  
              <td>
                  <asp:DropDownList ID="ddlDay" runat="server">
                  </asp:DropDownList>
                  </td>
              </tr>
              </table>
          </td>
          <td>
              
          </td>
          </tr>
          <tr>
          <td></td>
          <td colspan = "2" align = "left">
              <asp:Button ID="btnGetPassword" runat="server" Text="Get Password"  
                  ValidationGroup = "r" onclick="btnGetPassword_Click" />
          </td>
          </tr>
          <tr>
          <td colspan = "3" align = "left">
              <asp:Label ID="lblPResult" runat="server" ForeColor="Red"></asp:Label>
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
