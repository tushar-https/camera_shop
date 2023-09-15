<%@ Page Title="" Language="C#" MasterPageFile="~/User/Home.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="User_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            height: 19px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Product</td>
        </tr>
        <tr>
            <td class="style2">
                            <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" 
                                RepeatDirection="Horizontal" onitemcommand="DataList1_ItemCommand" 
                                Width="140px">
                                <ItemTemplate>
                                   <table class="dtbl">
                                        <tr>
                                            <td class="style5" style="border: thin solid #E4E4E4">
                                               
                                    <div id="dimg">
                                        <asp:Image ID="Image1" runat="server" Height="150px" 
                                            ImageUrl='<%#Eval("image") %>' Width="128px" />
                                    </div> 
                                        <table class="style1">
                                            <tr>
                                                <td colspan="2" class="style4">
                                                    <asp:Label ID="lbllname" runat="server" Text='<%#Eval("iname") %>'></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td class="style2">
                                                    Price : <asp:Label ID="lblprice" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                                                </td>
                                                <td class="style3">
                                                    <asp:Button ID="Button1" runat="server" CssClass="btn" 
                                                        CommandArgument='<%#Eval("iid") %>' Text="Buy" Height="19px" Width="60px" />
                                                </td>
                                            </tr>
                                        </table>
                                     
                              </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                              
                            
                            </asp:DataList>
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

