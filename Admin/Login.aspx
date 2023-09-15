<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Admin_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login Page</title>
    <link href="Style.css" rel="stylesheet" type="text/css" />
</head>
<body>


    <form id="form1" runat="server">


    <div id="login">
    
        <table class="tbl">
            <tr>
                <td class="tblhead" colspan="2">
                    ADMIN LOGIN</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="lbl">
                    Admin Name :</td>
                <td>
                    <asp:TextBox ID="txtuname" placeholder="Enter Admin Name" runat="server" CssClass="txt"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtuname" ErrorMessage="Please Enter Admin Name!" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="lbl">
                    Password :</td>
                <td>
                    <asp:TextBox ID="txtpasw" placeholder="Enter Admin Password" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtpasw" ErrorMessage="Please Enter Password!" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="lbl">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnlogin" runat="server" CssClass="btn" Text="Login" 
                        Width="80px" Height="32px" onclick="btnlogin_Click" />
                    <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
