<%@ Page Title="" Language="C#" MasterPageFile="~/MastePages/Moderator.master" AutoEventWireup="true" CodeFile="ModeratorHome.aspx.cs" Inherits="ModeratorHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<asp:Literal>Hello,This is moderator home page</asp:Literal>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table>
    <tr>
    <td>
        <asp:LinkButton ID="lbSignout" runat="server" onclick="lbSignout_Click">Signout</asp:LinkButton>
    </td>
    </tr>
    </table>
</asp:Content>

