<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Signup</title>    
    <style type="text/css">
        .style1
        {
            width: 118px;
        }
    </style>
    </head>
<body>
    <form id="frmSignup" runat="server">
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
            CausesValidation = "true" ValidationGroup = "vLogin" OnClick = "ValidateLogin" 
            Width="200px"/>
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
              <asp:Label ID="Label2" runat="server" Text="Registration"></asp:Label>
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
              <asp:Label ID="Label5" runat="server" Text="My e-mail address is:" Width = "200px"></asp:Label>
          </td>
          <td>
              <asp:TextBox ID="txtREmail" runat="server" Width="200px" ValidationGroup="r"></asp:TextBox>
          </td>
          <td>
              <asp:RequiredFieldValidator ID="rfvREmail" runat="server" ControlToValidate="txtREmail" 
                  ForeColor="Red" ValidationGroup="r" ToolTip="Please enter e-mail">*</asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                  ControlToValidate="txtREmail" ForeColor="Red" 
                  ToolTip="Please enter valid email" 
                  ValidationExpression="[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?" 
                  ValidationGroup="r">*</asp:RegularExpressionValidator>

          </td>
          </tr>
          <tr>
          <td colspan = "1" align = "right" class="style1">
              <asp:Label ID="Label6" runat="server" Text="Type it again:" Width = "200px"></asp:Label>
          </td>
          <td>
              <asp:TextBox ID="txtRREmail" runat="server" Width="200px" ValidationGroup="r"></asp:TextBox>
          </td>
          <td>
              <asp:RequiredFieldValidator ID="rfvTypeEmail" runat="server" ControlToValidate="txtRREmail" 
                  ForeColor="Red" ValidationGroup="r" ToolTip="Please type e-mail again">*</asp:RequiredFieldValidator>
              <asp:CompareValidator ID="cvEmail" runat="server" ControlToCompare="txtREmail" 
                  ControlToValidate="txtRREmail" Text = "*" ValidationGroup = "r" 
                  ForeColor="Red" ToolTip="Both e-mail address doesn't match"></asp:CompareValidator>
                  <asp:RegularExpressionValidator ID="revRREmail" runat="server" 
                  ControlToValidate="txtRREmail" ForeColor="Red" 
                  ToolTip="Please enter valid email" 
                  ValidationExpression="[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?" 
                  ValidationGroup="r">*</asp:RegularExpressionValidator>
          </td>
          </tr>
          <tr>
          <td colspan = "1" align = "right" class="style1">
              <asp:Label ID="Label7" runat="server" Text="My mobile phone number is:" Width = "200px"></asp:Label>
          </td>
          <td>
              <asp:TextBox ID="txtMobile" runat="server" Width="200px" ValidationGroup="r"></asp:TextBox>
              <asp:Label ID="Label8" runat="server" Text="(Optional)"></asp:Label>
          </td>
          <td>
              <asp:RegularExpressionValidator ID="revMobile" runat="server" 
                  ControlToValidate="txtMobile" ForeColor="Red" 
                  ToolTip="Please enter valid mobile number" 
                  ValidationExpression="^((\+){0,1}91(\s){0,1}(\-){0,1}(\s){0,1}){0,1}9[0-9](\s){0,1}(\-){0,1}(\s){0,1}[1-9]{1}[0-9]{7}$" 
                  ValidationGroup="r">*</asp:RegularExpressionValidator>
          </td>
          </tr>
          <tr>
          <td colspan = "1" align = "right" class="style1">
              <asp:Label ID="Label9" runat="server" Text="Enter a new password:" Width = "200px"></asp:Label>
          </td>
          <td>
              <asp:TextBox ID="txtRPassword" runat="server" Width="200px" ValidationGroup="r" 
                  TextMode="Password"></asp:TextBox>
          </td>
          <td>
              <asp:RequiredFieldValidator ID="rfvRPassword" runat="server" ControlToValidate="txtRPassword" 
                  ForeColor="Red" ValidationGroup="r" ToolTip="Please enter password">*</asp:RequiredFieldValidator>
          </td>
          </tr>
          <tr>
          <td colspan = "1" align = "right" class="style1">
              <asp:Label ID="Label10" runat="server" Text="Type it again:" Width = "200px"></asp:Label>
          </td>
          <td>
              <asp:TextBox ID="txtRRPassword" runat="server" Width="200px" 
                  ValidationGroup="r" TextMode="Password"></asp:TextBox>
          </td>
          <td>
              <asp:RequiredFieldValidator ID="rfvRRPassword" runat="server" ControlToValidate="txtRRPassword" 
                  ForeColor="Red" ValidationGroup="r" ToolTip="Please type password again">*</asp:RequiredFieldValidator>
              <asp:CompareValidator ID="cvRRPassword" runat="server" ControlToCompare="txtRPassword" 
                  ControlToValidate="txtRRPassword" Text = "*" ValidationGroup = "r" 
                  ForeColor="Red" ToolTip="Both passwords doesn't match"></asp:CompareValidator>
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
              <asp:Button ID="btnCreateAccount" runat="server" Text="Create Account"  
                  ValidationGroup = "r" onclick="btnCreateAccount_Click" 
                  style="height: 26px"/>
          </td>
          </tr>
          <tr>
          <td colspan = "3" align = "left">
              <asp:Label ID="lblRResult" runat="server" ForeColor="Red"></asp:Label>
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
