<%@ Page Title="" Language="C#" MasterPageFile="~/User/Home.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="User_Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                MY CART</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    Width="935px" onrowcommand="GridView1_RowCommand" DataKeyNames="oid" 
                    onrowdeleting="GridView1_RowDeleting" CellPadding="4" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                <Columns>
                <asp:TemplateField HeaderText="Item Image">
                <ItemTemplate>
                <asp:Image ID="img" runat="server" ImageUrl='<%#Eval("image") %>' Height="55px" Width="50px" />
                </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField HeaderText="Item Name" DataField="iname" />
                 <asp:TemplateField HeaderText="Item Quantity">
                <ItemTemplate>
                <asp:TextBox ID="txtq" runat="server" Text='<%#Eval("quntity") %>' Height="20px" Width="40px" />
                </ItemTemplate>
                </asp:TemplateField>
       <%--         <asp:BoundField HeaderText="Quantity" DataField="quntity" />--%>
                <asp:BoundField HeaderText="Price" DataField="price" />
                <asp:BoundField HeaderText="Total Price" DataField="totalprice" />
                <asp:TemplateField HeaderText="Update">
                <ItemTemplate>
                <asp:LinkButton ID="lnkupdate" runat="server" Text="Update" CommandName="Delete" CommandArgument='<%#Eval("oid") %>'></asp:LinkButton>
                </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                <asp:LinkButton ID="lnkupdadte" runat="server" Text="Delete" CommandName="del" CommandArgument='<%#Eval("oid") %>'></asp:LinkButton>
                </ItemTemplate>
                </asp:TemplateField>
                </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button2" runat="server" CssClass="btn" Height="30px" 
                    Text="Continew Shopping.." Width="200px" PostBackUrl="~/User/Home.aspx" 
                    onclick="Button2_Click" />
&nbsp;
                <asp:Button ID="Button3" runat="server" CssClass="btn" Height="30px" 
                    Text="Check Out" Width="200px" PostBackUrl="~/User/Checkout.aspx" 
                    onclick="Button3_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

