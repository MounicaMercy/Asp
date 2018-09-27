<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductManagementPage.aspx.cs" Inherits="A24sep2018.ProductManagementPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>
        Welcome to Product Management Page......</h1>
    <p class="text-left">
        <span style="font-size: medium">Products List......</span> 
    <strong>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="font-weight: bold" Text="Add New" Width="115px" />
        </strong> 
    </p>
    <p>
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
    </p>
    </asp:Content>
