<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="additem.aspx.cs" Inherits="Admin_additem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            ADD ITEM</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table align="center" class="style1" style="width: 499px">
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lblas">
                        Item Name :</td>
                    <td>
                        <asp:TextBox ID="txtitem" placeholder="Enter Item Name" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtitem" ErrorMessage="Please Enter Item Name!" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="lblas">
                        Descripation:</td>
                    <td>
                        <asp:TextBox ID="txtdsc" placeholder="Enter Item Descripation" runat="server" CssClass="txt" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtdsc" ErrorMessage="Please Enter Descripation!" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="lblas">
                        Price:</td>
                    <td>
                        <asp:TextBox ID="txtpri" placeholder="Enter Item Price" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtpri" ErrorMessage="Please Enter Price!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="lblas">
                        Quantity:</td>
                    <td>
                        <asp:TextBox ID="txtqnt" placeholder="Enter Item Quantity" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtqnt" ErrorMessage="Please Enter Quantity!" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="lblas">
                        Image:</td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="lblas">
                        Image1:</td>
                    <td>
                        <asp:FileUpload ID="FileUpload2" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="lblas">
                        Image2:</td>
                    <td>
                        <asp:FileUpload ID="FileUpload3" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="lblas">
                        Category Name:</td>
                    <td>
                        <asp:DropDownList ID="drpctname" runat="server">
                        </asp:DropDownList>
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
                    <td>
                        <asp:Button ID="btnadditem" runat="server" CssClass="btnadd" Text="ADD Item" 
                            onclick="btnadditem_Click" Height="32px" Width="142px" />
                    &nbsp;
                        <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateDeleteButton="True" 
                            AutoGenerateEditButton="false" AutoGenerateColumns="False" 
                            onrowcancelingedit="GridView1_RowCancelingEdit" 
                            onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
                            onrowupdating="GridView1_RowUpdating" DataKeyNames="iid">
                             <Columns>
                            <asp:CommandField CausesValidation="false" ShowEditButton="true" />
                                <asp:BoundField DataField="iname" HeaderText="ITEM NAME" 
                                    SortExpression="iname" />
                                <asp:BoundField DataField="price" HeaderText="PRICE" SortExpression="price" />
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

