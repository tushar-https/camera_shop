using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vieworder : System.Web.UI.Page
{
    DS_ORDER.ORDER_SELECTDataTable ODt = new DS_ORDER.ORDER_SELECTDataTable();
    DS_ORDERTableAdapters.ORDER_SELECTTableAdapter OAdapter = new DS_ORDERTableAdapters.ORDER_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {

            ODt = OAdapter.SelectDistinct_uanme();
            drpselectuser.DataSource = ODt;
            drpselectuser.DataTextField = "uname";
            drpselectuser.DataValueField = "oid";
            drpselectuser.DataBind();

        }

    }
    protected void btnview_Click(object sender, EventArgs e)
    {
        ODt = OAdapter.Select_BY_UNAME_STATUS(drpselectuser.SelectedItem.Text, DropDownList1.SelectedIndex);
        GridView1.DataSource = ODt;
        GridView1.DataBind();
    }
    protected void drpselectuser_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}