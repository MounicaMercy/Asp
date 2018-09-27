<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserPage.aspx.cs" Inherits="A24sep2018.UserPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>
        Product List...</h1>
    <p>
        <asp:TextBox ID="UserSearch" runat="server" Height="20px" Width="122px"></asp:TextBox>
        <strong>
        <asp:Button ID="Button1" runat="server" Height="23px" style="font-weight: bold" Text="Search" Width="123px" OnClick="Button1_Click" />
        </strong><br />
</p>
<p>
    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
</p>
</asp:Content>

