<%@ Page Title="" Language="C#" MasterPageFile="~/MastePages/Admin.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID = "ScriptManager1" runat = "server">

</asp:ScriptManager>
<table>
    <tr>
    <td>
        <asp:LinkButton ID="lbSignout" runat="server" onclick="lbSignout_Click">Signout</asp:LinkButton>
    </td>
    </tr>
    </table>
    <asp:LinkButton ID="lbAddModerator" runat="server" 
        onclick="lbAddModerator_Click">Add Moderator</asp:LinkButton>
    <cc1:ModalPopupExtender ID="mpeJoin" runat="server" PopupControlID="panelJoin" TargetControlID="lbAddModerator"
    CancelControlID = "btnRCancel" BackgroundCssClass="Background" >
</cc1:ModalPopupExtender>
    <asp:Panel ID="panelJoin" runat="server" CssClass="Popup2" align="center" style = "display:none">

    <table>
    <tr>
    <td colspan = "2" align = "left">
        <asp:Label ID="lblJoin" runat="server" Text="Add Moderator" CssClass = "lbl"></asp:Label>
    </td>
    <%--<td colspan = "1" align = "right">
        <asp:LinkButton ID="lbAccountExists" runat="server" CssClass = "btn" CausesValidation = "false">Alredy have an account</asp:LinkButton>
    </td>--%>
    </tr>
     <tr>
     <td>
    <asp:Label ID="lblRegisterUserName" runat="server" CssClass="lbl" Text="Username"></asp:Label>
    </td>
    <td>
    <asp:TextBox ID="txtRegisterUserName" runat="server" Font-Size="14px" TabIndex = "1"></asp:TextBox>
    </td>
    <td>
        <asp:RequiredFieldValidator ID="rfvRUserName" runat="server" ToolTip = "Please Enter Username" Text = "*" ForeColor = "Red" ControlToValidate = "txtRegisterUserName" ValidationGroup = "vRegister"></asp:RequiredFieldValidator>
    </td>
     </tr>
     <tr>
     <td>
    <asp:Label ID="lblRegisterPassword" runat="server" CssClass="lbl" Text="Password" ></asp:Label>
    </td>
    <td>
    <asp:TextBox ID="txtRegisterpassword" runat="server" Font-Size="14px" TabIndex = "2" TextMode = "Password"></asp:TextBox>
    </td>
    <td>
        <asp:RequiredFieldValidator ID="rfvRPassword" runat="server" ToolTip = "Please Enter Password" Text = "*" ForeColor = "Red" ControlToValidate = "txtRegisterpassword" ValidationGroup = "vRegister"></asp:RequiredFieldValidator>
    </td>
     </tr>
     <tr>
     <td>
    <asp:Label ID="lblEMail" runat="server" CssClass="lbl" Text="E-Mail"></asp:Label>
    </td>
    <td>
    <asp:TextBox ID="txtEMail" runat="server" Font-Size="14px" TabIndex = "3"></asp:TextBox>
    </td>
    <td>
        <asp:RequiredFieldValidator ID="rfvEMail" runat="server" ToolTip = "Please Enter E-Mail Address" Text = "*" ForeColor = "Red" ControlToValidate = "txtEMail" ValidationGroup = "vRegister"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="revEmail" runat="server" ToolTip = "Please Enter Valid Email Address" Text = "*" ForeColor = "Red" ControlToValidate = "txtEMail" ValidationGroup = "vRegister" ValidationExpression = "^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"></asp:RegularExpressionValidator>
    </td>
     </tr>
     <tr>
     <td>
    <asp:Label ID="lblCEmail" runat="server" CssClass="lbl" Text="Confirm E-Mail"></asp:Label>
    </td>
    <td>
    <asp:TextBox ID="txtConfirmEMail" runat="server" Font-Size="14px" TabIndex = "4"></asp:TextBox>
    </td>
    <td>
        <asp:RequiredFieldValidator ID="rfvConfirmEmail" runat="server" ToolTip = "Please Re Enter  E-Mail Address" Text = "*" ForeColor = "Red" ControlToValidate = "txtConfirmEMail" ValidationGroup = "vRegister"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="cvEmail" runat="server" ToolTip = "Email doesn't match" Text = "*" ForeColor = "Red" ControlToValidate = "txtConfirmEMail" ControlToCompare = "txtEMail" ValidationGroup = "vRegister"></asp:CompareValidator>
    </td>
     </tr>
     <tr>
     <td colspan = "2" align = "right">
         <asp:Button ID="btnSignup" runat="server" Text="Add Moderator" CssClass = "btn" CausesValidation = "true" ValidationGroup = "vRegister" OnClick = "RegisterModerator" TabIndex = "5"/>
     </td>
     <td colspan = "2" align = "left">
         <asp:Button ID="btnRCancel" runat="server" Text="Cancel" CssClass = "btn" 
             CausesValidation = "false" TabIndex = "6"/>
     </td>
     </tr>
     <tr>
     <td colspan = 4 align = "left">
         <asp:Label ID="lblRegisterResult" runat="server" Text="" ForeColor = "Red"></asp:Label>
     </td>
     </tr>
    </table>  

</asp:Panel>
</asp:Content>

