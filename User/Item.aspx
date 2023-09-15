<%@ Page Title="" Language="C#" MasterPageFile="~/User/Home.master" AutoEventWireup="true" CodeFile="Item.aspx.cs" Inherits="User_Item" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>&nbsp;Products
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                </h2>
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" 
                                RepeatDirection="Horizontal" onitemcommand="DataList1_ItemCommand" 
        >
    <ItemTemplate>
        <table class="dtbl">
            <tr>
                <td>
                    <div id="dimg">
                        <asp:Image ID="Image1" runat="server" Height="150px" 
                                            ImageUrl='<%#Eval("image") %>' Width="128px" />
                    </div>
                    <div id="dname">
                        <table class="style1">
                            <tr>
                                <td colspan="2">
                                    <asp:Label ID="lbllname" runat="server" Text='<%#Eval("iname") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                                    Price : 
                                    <asp:Label ID="lblprice" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                                </td>
                                <td class="style3">
                                    <asp:Button ID="Button1" runat="server" CssClass="btn" CommandArgument='<%#Eval("iid") %>' Text="Buy" />
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

