<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductDelete.aspx.cs" Inherits="A24sep2018.ProductDelete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>
        Welcome to Product Delete Page..</h1>
    <table class="nav-justified">
        <tr>
            <td style="font-size: large">ProductId</td>
            <td>
                <asp:TextBox ID="ProductId" runat="server" style="font-size: large"></asp:TextBox>
            </td>
        </tr>
        <tr style="font-size: medium">
            <td style="font-size: large">&nbsp;</td>
            <td style="font-size: large">&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: large">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Delete" Width="112px" style="font-size: large" />
    </td>
        </tr>
    </table>
</asp:Content>
