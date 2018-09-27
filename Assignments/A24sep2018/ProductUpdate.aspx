<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductUpdate.aspx.cs" Inherits="A24sep2018.ProductUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        WELCOME TO PRODUCT UPDATE PAGE..</h2>
    <br />
    <table class="nav-justified">
        <tr>
            <td colspan="2">
                <h2>Update a Product..</h2>
            </td>
        </tr>
        <tr>
            <td style="height: 22px; width: 178px">&nbsp;</td>
            <td style="height: 22px; width: 134px;">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 22px; width: 178px">
                <asp:Label ID="Label1" runat="server" Text="Product ID"></asp:Label>
            </td>
            <td style="height: 22px; width: 134px;">
                <asp:TextBox ID="ProductIdtxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 178px">
                <asp:Label ID="Label2" runat="server" Text="Product Name"></asp:Label>
            </td>
            <td style="width: 134px">
                <asp:TextBox ID="ProductNametxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 178px">
                <asp:Label ID="Label3" runat="server" Text="Product Image Url"></asp:Label>
            </td>
            <td style="width: 134px">
                <asp:TextBox ID="ProdcutImgUrltxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 178px">
                <asp:Label ID="Label4" runat="server" Text="Product Price"></asp:Label>
            </td>
            <td style="width: 134px">
                <asp:TextBox ID="ProductPricetxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 178px">
                <asp:Label ID="Label5" runat="server" Text="Description"></asp:Label>
            </td>
            <td style="width: 134px">
                <asp:TextBox ID="Decriptiontxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 178px">Brand</td>
            <td style="width: 134px">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="BrandName" DataValueField="BrandId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [BrandId], [BrandName] FROM [Brand]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="height: 20px; width: 178px"></td>
            <td style="height: 20px; width: 134px;"></td>
        </tr>
        <tr>
            <td style="width: 178px">&nbsp;</td>
            <td style="width: 134px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Update!" Width="98px" />
            </td>
        </tr>
        <tr>
            <td style="width: 178px">&nbsp;</td>
            <td style="width: 134px">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
