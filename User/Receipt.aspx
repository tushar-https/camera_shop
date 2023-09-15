<%@ Page Title="" Language="C#" MasterPageFile="~/User/Home.master" AutoEventWireup="true" CodeFile="Receipt.aspx.cs" Inherits="User_Receipt" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
            width: 820px;
        }
        .style11
        {
            width: 196px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Payment Receipt</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="style10">
                    <tr>
                        <td class="style11">
                            &nbsp;</td>
                        <td>
                            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
                                AutoDataBind="true" />
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

