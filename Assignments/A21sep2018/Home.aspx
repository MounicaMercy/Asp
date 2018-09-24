<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="A21sep2018.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <style>
        #b {
            background-image: url(D:\Code\Asp\Assignments\Assignments\A21sep2018\images1\img2.jpg);
            
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            height: 50px;
        }
        .auto-style3 {
            width: 379px;
        }
        .auto-style4 {
            font-weight: normal;
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
        }
        .auto-style5 {
            background-color: #FFFFFF;
        }
        .auto-style6 {
            color: #000000;
            height: 23px;
            background-color: #FFFFFF;
            font-size: medium;
        }
        .auto-style7 {
            height: 23px;
        }
        .auto-style8 {
            font-size: medium;
        }
        .auto-style9 {
            background-color: #FFFFFF;
            font-size: medium;
        }
    </style>
<body id="b">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2">
                        <h1 class="auto-style5">Forum</h1>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><span class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                        <asp:Image ID="Image1" runat="server" CssClass="auto-style8" ImageUrl="~/images1/login.png" Width="225px" />
                        <span class="auto-style8">&nbsp;</span></td>
                    <td>
                        <table class="auto-style1">
                            <tr>
                                <td colspan="2">
                                    <h2><strong><span class="auto-style9">Login</span></strong></h2>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style8">User Name</td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style8"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style8">Password</td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style8"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style8">&nbsp;</td>
                                <td>
                                    <asp:Button ID="Button1" runat="server" Text="LogIn" Width="74px" CssClass="auto-style8" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">New User?</td>
                                <td class="auto-style7">
                                    <asp:HyperLink ID="HyperLink1" runat="server" BackColor="White" ForeColor="Black" NavigateUrl="~/Registration.aspx" CssClass="auto-style8">Register Here!!</asp:HyperLink>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style8">&nbsp;</td>
                                <td class="auto-style8">&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
