<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Addquantity.aspx.cs" Inherits="Addquantity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 95px;
        }
        .style4
        {
            text-align: right;
            color: Red;
            height: 30px;
            width: 95px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            ADD Quantity</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table align="center" class="style1" style="width: 517px">
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lblas">
                        Select Item:</td>
                    <td>
                        <asp:DropDownList ID="drpitem" runat="server">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="drpitem" ErrorMessage="Please Select Item!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="lblas">
                        Add quantity:</td>
                    <td>
                        <asp:TextBox ID="txtaddqnt" placeholder="Enter Add Quantity" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtaddqnt" ErrorMessage="Please Add Quantity!" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="adqnt" runat="server" CssClass="btnadd" Text="Add Quantity" 
                            onclick="adqnt_Click" Height="32px" Width="142px" />
                             
                    &nbsp;
                        <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
                             
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                        <Columns>  <asp:BoundField DataField="iname" HeaderText="ITEM NAME" 
                                    SortExpression="iname" />
                               <asp:BoundField DataField="quantity" HeaderText="TOTAL QUANTITY" 
                                    SortExpression="quantity" />
                            
                                <asp:BoundField DataField="aquantity" HeaderText="AVAILABLE QUANTITY" 
                                    SortExpression="aquantity" />
                                <asp:BoundField DataField="squantity" HeaderText="SELL QUANTITY" 
                                    SortExpression="squantity" />
                               </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

