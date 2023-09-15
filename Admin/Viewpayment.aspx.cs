using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Viewpayment : System.Web.UI.Page
{
    DS_ORDER.ORDER_SELECTDataTable ODt = new DS_ORDER.ORDER_SELECTDataTable();
    DS_ORDERTableAdapters.ORDER_SELECTTableAdapter OAdapter = new DS_ORDERTableAdapters.ORDER_SELECTTableAdapter();

    DS_PAYMENT.PAYMENT_SELECTDataTable PDt = new DS_PAYMENT.PAYMENT_SELECTDataTable();
    DS_PAYMENTTableAdapters.PAYMENT_SELECTTableAdapter PAdapter = new DS_PAYMENTTableAdapters.PAYMENT_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {

            PDt = PAdapter.Select_dist_uanme();
            drpselectuser.DataSource = PDt;
            drpselectuser.DataTextField = "uname";
            drpselectuser.DataValueField = "pid";
            drpselectuser.DataBind();

        }

    }
    protected void btnview_Click(object sender, EventArgs e)
    {
        PDt = PAdapter.select_by_uname(drpselectuser.SelectedItem.Text);
        GridView1.DataSource = PDt;
        GridView1.DataBind();

    }
}