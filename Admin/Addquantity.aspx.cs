using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Addquantity : System.Web.UI.Page
{
    DS_ADDITEM.ITEM_SELECTDataTable itemdt = new DS_ADDITEM.ITEM_SELECTDataTable();
    DS_ADDITEMTableAdapters.ITEM_SELECTTableAdapter itemadapter = new DS_ADDITEMTableAdapters.ITEM_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            itemdt = itemadapter.SELECT();
            GridView1.DataSource = itemdt;
            GridView1.DataBind();
            itemdt = itemadapter.SELECT();
            drpitem.DataSource = itemdt;
            drpitem.DataTextField = "INAME";
            drpitem.DataValueField = "IID";
            drpitem.DataBind();
        }


    }


    protected void adqnt_Click(object sender, EventArgs e)
    {
        itemadapter.ITEM_ADDQUANTITY(Convert.ToInt32(drpitem.SelectedValue), Convert.ToInt32(txtaddqnt.Text));
        itemdt = itemadapter.SELECT_BYID(Convert.ToInt32(drpitem.SelectedValue));
        lblmsg.Text = "Your Quantity Is Updated";
        
       itemdt = itemadapter.SELECT();
        GridView1.DataSource = itemdt;
        GridView1.DataBind();
        txtaddqnt.Text = "";
    }
}