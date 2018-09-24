<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="A21sep2018.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-left: 0px;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
            text-align: left;
        }
        .auto-style5 {
            text-align: left;
        }
        .auto-style6 {
            height: 26px;
            text-align: left;
        }
        .auto-style7 {
            height: 66px;
        }
        .auto-style8 {
            text-align: center;
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
        }
        .auto-style9 {
            height: 26px;
            width: 139px;
            font-size: large;
        }
        .auto-style10 {
            height: 23px;
            text-align: left;
            width: 139px;
            font-size: large;
        }
        .auto-style11 {
            width: 139px;
            font-size: large;
        }
        .auto-style12 {
            height: 23px;
            width: 139px;
        }
        .auto-style13 {
            font-size: large;
        }
        .auto-style14 {
            height: 23px;
            width: 139px;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style7" colspan="2">
                        <h1 class="auto-style8">Registration Page</h1>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">First Name</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="FName" runat="server" CssClass="auto-style13"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter First Name" ControlToValidate="FName" CssClass="auto-style13"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">Last Name</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="LName" runat="server" CssClass="auto-style13"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Last Name" ControlToValidate="LName" CssClass="auto-style13"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Age</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="Age" runat="server" CssClass="auto-style13"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">Mobile Number</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="MobileNo" runat="server" CssClass="auto-style13"></asp:TextBox>
                        <asp:RegularExpressionValidator  ID="MobileNoValidator2" runat="server" ErrorMessage="Mobile no should be only  10 digits" ControlToValidate="MobileNo" ValidationExpression="\d{10}" CssClass="auto-style13"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Date of Birth</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="Dob" TextMode="Date" runat="server" CssClass="auto-style13"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Gender</td>
                    <td class="auto-style5">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Country</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style13">
                            <asp:ListItem>India</asp:ListItem>
                            <asp:ListItem>USA</asp:ListItem>
                            <asp:ListItem>UK</asp:ListItem>
                            <asp:ListItem>Australia</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Submit" Width="77px" CssClass="auto-style13" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
