<%@ Page Title="" Language="C#" MasterPageFile="~/User/Home.master" AutoEventWireup="true" CodeFile="Thanks.aspx.cs" Inherits="User_Thanks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <table class="tbl">
        <tr>
            <td class="tblhead">
                Thank You Visit Again.....</td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
        </tr>
        <tr>
            <td style="font-weight: 700; font-size: x-large; color: #006600; text-align: center">
                Thank You for Payment,
                <br />
                Your Order has been Placed Successfully.
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
            <asp:Button ID="Button2" runat="server" CssClass="btn" 
                Text="Continew Shopping" PostBackUrl="~/User/Home.aspx" Height="30px" 
                    Width="119px" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" CssClass="btn" 
                Text="Receipt" PostBackUrl="~/User/Receipt.aspx" Height="30px" 
                    Width="119px" />
            </td>
        </tr>
    </table>
</asp:Content>

