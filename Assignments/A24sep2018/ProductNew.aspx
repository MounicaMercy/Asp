<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductNew.aspx.cs" Inherits="A24sep2018.ProductNew" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Add a New Product</h3>
    <table class="nav-justified">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" style="font-size: large" Text="Product Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="ProductName" runat="server" style="font-size: large" Width="192px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" style="font-size: large" Text="Product Price"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Productprice" runat="server" style="font-size: large" Width="192px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" style="font-size: large" Text="Product Image Url"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="ProductImgUrl" runat="server" style="font-size: large" Width="191px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" style="font-size: large" Text="Description"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Description" runat="server" style="font-size: large" Width="190px"></asp:TextBox>
            </td>
        </tr>
        <tr style="font-size: medium">
            <td style="font-size: large; height: 24px;">Brand Name</td>
            <td style="font-size: large; height: 24px;">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1" Width="155px" DataSourceID="SqlDataSource2" DataTextField="BrandName" DataValueField="BrandId">
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AuthDbConnectionString %>" SelectCommand="SELECT [BrandId], [BrandName] FROM [Brand]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Brand]"></asp:SqlDataSource>
        <tr style="font-size: medium">
            <td style="font-size: large">&nbsp;</td>
            <td style="font-size: large">
                <asp:Button ID="Button1" runat="server" Text="Add" Width="88px" OnClick="Button1_Click1" />
    </table>
</asp:Content>
