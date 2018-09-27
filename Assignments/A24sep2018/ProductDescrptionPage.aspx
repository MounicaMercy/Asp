<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductDescrptionPage.aspx.cs" Inherits="A24sep2018.ProductDescrptionPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Welcome to Product Descrption Page..</h1>
    <table class="nav-justified">
        <tr>
            <td rowspan="8">
                <asp:Image ID="Image1" runat="server" />
            </td>
            <td>
                <strong><span style="font-size: medium">Name of the Product:</span></strong></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="ProductName" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="font-size: medium">
                <strong>Price of the Product:</strong></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="ProductPrice" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="font-size: medium">
                <strong>Desciption:</strong></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="ProductDescrption" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td><strong>
                <asp:Button ID="Button1" runat="server" style="font-weight: bold" Text="Add To Cart" />
                </strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
