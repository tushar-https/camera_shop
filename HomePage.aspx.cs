using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{

    DS_ADDITEM.ITEM_SELECTDataTable IDT = new DS_ADDITEM.ITEM_SELECTDataTable();
    DS_ADDITEMTableAdapters.ITEM_SELECTTableAdapter IAdapter = new DS_ADDITEMTableAdapters.ITEM_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            IDT = IAdapter.Select_TOP_10();
            DataList1.DataSource = IDT;
            DataList1.DataBind();
        }
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        Response.Redirect("Search.aspx?name=" + txtsearch.Text);
        //IDT = IAdapter.ITEM_SELECT_SEARCH(txtsearch.Text + "%");
        //DataList1.DataSource = IDT;
        //DataList1.DataBind();
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("Itemview.aspx?idd=" + e.CommandArgument.ToString());
    }
}