﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User/Home.master" AutoEventWireup="true" CodeFile="View.aspx.cs" Inherits="User_View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
        .style2
        {
            width: 856px;
        }
        .style3
        {
            width: 312px;
        }
        .style4
        {
        }
        .style5
        {
            width: 332px;
        }
        .style6
        {
        }
        .style7
        {
            width: 104px;
        }
        .style8
        {
            text-align: right;
            font-size: medium;
            color: #ff6600;
            height: 30px;
            width: 104px;
        }
    </style>
    
    <script type="text/javascript">
        function img(i) {

            var imgg = document.getElementById('<%=Image1.ClientID%>');
            imgg.src = i.src;

        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                ITEM DETAIL</td>
        </tr>
        <tr>
            <td>
                <table style="border-right-style: solid; border-left-style: solid; border-bottom-style: solid; border-right-width: thin; border-bottom-width: thin; border-left-width: thin; border-right-color: #C0C0C0; border-bottom-color: #C0C0C0; border-left-color: #C0C0C0">
<tr>
<td>


<h2>&nbsp;View Product Detail
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                </h2>
    <table align="center" class="style2">
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Image ID="Image1" runat="server" Height="308px" Width="297px" 
                    BorderColor="#E4E4E4" BorderStyle="Double" BorderWidth="1px" />
            </td>
            <td align="left" colspan="2" valign="top" bgcolor="#FFF7F0" rowspan="2">
                <table class="style5">
                    <tr>
                        <td class="style7">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8">
                            Name :</td>
                        <td>
                            <asp:Label ID="lblname" runat="server" CssClass="lbl"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style8">
                            Price :</td>
                        <td>
                            <asp:Label ID="lblprice" runat="server" CssClass="lbl"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style8" valign="top">
                            Detail :</td>
                        <td>
                            <asp:Label ID="lbldetail" runat="server" CssClass="lbl"></asp:Label>
                            <br />
                            <br />
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="style8">
                            Quantity :</td>
                        <td>
                            <asp:Label ID="lblqnt" runat="server" CssClass="lbl"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style8">
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" CssClass="btn" Font-Bold="True" 
                                Font-Size="Medium" Height="30px"  Text="Buy now !!" 
                                Width="120px" onclick="Button1_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style6" colspan="2">
                        &nbsp;&nbsp;
                            </td>
                    </tr>
                    <tr>
                        <td class="style7">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Image ID="Image2" runat="server" Height="70px" Width="70px" 
                    onmouseover="img(this)" CssClass="vimage"/>
&nbsp;&nbsp;
                <asp:Image ID="Image3" runat="server" Height="70px" Width="70px" 
                    onmouseover="img(this)" CssClass="vimage" />
&nbsp;&nbsp;
                <asp:Image ID="Image4" runat="server" Height="70px" Width="70px" 
                    onmouseover="img(this)" CssClass="vimage" />
            </td>
        </tr>
        </table></td>
</tr>
</table>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

