<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductPreview.aspx.cs" Inherits="A24sep2018.ProductPreview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 style="font-family: Cambria">PRODUCT PRE-VIEW...</h1>
    <table class="nav-justified">
        <tr>
            <td rowspan="10" style="width: 63px">
                <asp:Image ID="images" runat="server" />
            </td>
            <td><span style="font-size: medium"><strong>ID of the Product:</strong></span></td>
        </tr>
        <tr>
            <td style="height: 20px">
                <asp:Label ID="Productid" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td><strong>N<span style="font-size: medium">ame of the Product:</span></strong></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Name" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td><strong>Price of the Product:</strong></td>
        </tr>
        <tr>
            <td style="height: 20px">
                <asp:Label ID="Price" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td><strong>Description of the Product:</strong></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Description" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="height: 26px" Text="Back" />
            </td>
        </tr>
    </table>
</asp:Content>
