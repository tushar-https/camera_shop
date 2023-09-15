using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Login : System.Web.UI.Page
{
    DS_ADMIN.ADMIN_SELECTDataTable adt = new DS_ADMIN.ADMIN_SELECTDataTable();
    DS_ADMINTableAdapters.ADMIN_SELECTTableAdapter aadpter = new DS_ADMINTableAdapters.ADMIN_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        adt = aadpter.SELECT_LOGIN(txtuname.Text, txtpasw.Text);
        if (adt.Rows.Count >= 1)
        {
            Response.Redirect("Addcate.aspx");
        }
        else
        {
            lblmsg.Text = "Invalid Username And Password";
        }
    }
}