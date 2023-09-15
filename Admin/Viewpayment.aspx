<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Viewpayment.aspx.cs" Inherits="Admin_Viewpayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            View Payment</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table align="center" class="style1">
                <tr>
                    <td class="lbl">
                        Select User:</td>
                    <td>
                        <asp:DropDownList ID="drpselectuser" runat="server">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="drpselectuser" ErrorMessage="Please Select User!!" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td align="left">
                        <asp:Button ID="btnview" runat="server" CssClass="btn" Text="VIEW" 
                            onclick="btnview_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                style="text-align: center" Width="782px" Height="117px">
            <Columns>
            <asp:BoundField HeaderText="Payment Type"  DataField="type" />
<asp:BoundField HeaderText="Bank Name"  DataField="BANK" />
<asp:BoundField HeaderText="Bank Branch"  DataField="BRANCH" />
              <asp:BoundField HeaderText="Amount"  DataField="AMOUNT" />
           <asp:BoundField HeaderText="Payment Date"  DataField="ENTRYDATE" />
            </Columns>
            </asp:GridView>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;</td>
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

