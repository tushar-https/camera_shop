using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_additem : System.Web.UI.Page
{
    DS_ADDITEM.ITEM_SELECTDataTable itemdt = new DS_ADDITEM.ITEM_SELECTDataTable();
    DS_ADDITEMTableAdapters.ITEM_SELECTTableAdapter itemadapter = new DS_ADDITEMTableAdapters.ITEM_SELECTTableAdapter();

    DS_CAT.CAT_SELECTDataTable cdt = new DS_CAT.CAT_SELECTDataTable();
    DS_CATTableAdapters.CAT_SELECTTableAdapter cadapter = new DS_CATTableAdapters.CAT_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            cdt = cadapter.SELECT();
            drpctname.DataSource = cdt;
            drpctname.DataTextField = "cname";
            drpctname.DataValueField = "cid";
            drpctname.DataBind();
            itemdt = itemadapter.SELECT();
            GridView1.DataSource = itemdt;
            GridView1.DataBind();
        }
    }
    protected void btnadditem_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("~/img/") + FileUpload1.FileName);
        FileUpload2.SaveAs(Server.MapPath("~/img/") + FileUpload2.FileName);
        FileUpload3.SaveAs(Server.MapPath("~/img/") + FileUpload3.FileName);

        int i = itemadapter.Insert(txtitem.Text, txtdsc.Text, Convert.ToDouble(txtpri.Text), Convert.ToInt32(txtqnt.Text), "~/img/" + FileUpload1.FileName, Convert.ToInt32(drpctname.SelectedValue),"~/img/" + FileUpload2.FileName,"~/img/" + FileUpload3.FileName);
        lblmsg.Text = "Your Item Is Added";
        itemdt = itemadapter.SELECT();
        GridView1.DataSource = itemdt;
        GridView1.DataBind();

        txtitem.Text = "";
        txtdsc.Text = "";
        txtpri.Text = "";
        txtqnt.Text = "";
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        itemdt = itemadapter.SELECT();
        GridView1.DataSource = itemdt;
        GridView1.DataBind();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        itemdt = itemadapter.SELECT();
        GridView1.DataSource = itemdt;
        GridView1.DataBind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int iid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        TextBox titem = GridView1.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox;
        TextBox iprice = GridView1.Rows[e.RowIndex].Cells[3].Controls[0] as TextBox;
        itemadapter.ITEM_UP(iid, titem.Text, Convert.ToDouble(iprice.Text));
        GridView1.EditIndex = -1;
        itemdt = itemadapter.SELECT();
        GridView1.DataSource = itemdt;
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int iid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        int del = itemadapter.Delete(iid);
        itemdt = itemadapter.SELECT();
        GridView1.DataSource = itemdt;
        GridView1.DataBind();
    }
}