using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Fpassword : System.Web.UI.Page
{
    DS_USER.USER_SELECTDataTable userdt = new DS_USER.USER_SELECTDataTable();
    DS_USERTableAdapters.USER_SELECTTableAdapter uadapters = new DS_USERTableAdapters.USER_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        userdt = uadapters.SELECT_FOR_FORGOT_PASSWORD(txtmail.Text, txtmobile.Text);
        if (userdt.Rows.Count > 0)
        {
            txtmail.Text = "";
            lblpass.Text = "Your Password=" + userdt.Rows[0]["password"].ToString();
            lblmsg.Text = "";
        }
        else
        {
            lblmsg.Text = "Invalid Mobile Or Email";
        }

    }
}