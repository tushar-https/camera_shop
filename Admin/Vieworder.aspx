<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Vieworder.aspx.cs" Inherits="Vieworder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 658px;
        }
        .style8
        {
            text-align: right;
            color: #3333CC;
            height: 30px;
            width: 77px;
        }
        .style9
        {
            width: 77px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            View Order</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table align="center" class="style1">
                <tr>
                    <td class="style8">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl" colspan="2">
                        <table class="style7">
                            <tr>
                                <td>
                        Select User:</td>
                                <td style="text-align: left">
                        <asp:DropDownList ID="drpselectuser" runat="server" 
                                        onselectedindexchanged="drpselectuser_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="drpselectuser" ErrorMessage="Please Select User!!" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                        Order Status :</td>
                                <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Pending</asp:ListItem>
                            <asp:ListItem>Complete</asp:ListItem>
                        </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td style="text-align: left">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="style9">
                        &nbsp;</td>
                    <td align="left">
                        <asp:Button ID="btnview" runat="server" CssClass="btn" Text="VIEW" 
                            onclick="btnview_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                 Width="786px" 
                Height="16px">
            <Columns>
            <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
            <asp:Image ID="imgg" ImageUrl='<%#Eval("image") %>' runat="server" Height="50" Width="50"/>
            </ItemTemplate>

            </asp:TemplateField>
            <asp:BoundField HeaderText="Item Name" DataField="INAME" />
                <asp:BoundField HeaderText="Item Qnt" DataField="quntity" />
                    <asp:BoundField HeaderText="Item price" DataField="PRICE" />
                        <asp:BoundField HeaderText="Total Price" DataField="TOTALPRICE" />
            </Columns>
            </asp:GridView>
                    </td>
                </tr>
            </table>&nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

