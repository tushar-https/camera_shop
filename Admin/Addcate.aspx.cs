using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Addcate : System.Web.UI.Page
{
    DS_CAT.CAT_SELECTDataTable CatDT = new DS_CAT.CAT_SELECTDataTable();
    DS_CATTableAdapters.CAT_SELECTTableAdapter CatAdapter = new DS_CATTableAdapters.CAT_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            CatDT = CatAdapter.SELECT();
            GridView1.DataSource = CatDT;
            GridView1.DataBind();
        }

    }
    protected void btnaddcat_Click(object sender, EventArgs e)
    {

        int inst = CatAdapter.Insert(txtcat.Text);

        CatDT = CatAdapter.SELECT();
        GridView1.DataSource = CatDT;
        GridView1.DataBind();
       
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        CatDT = CatAdapter.SELECT();
        GridView1.DataSource = CatDT;
        GridView1.DataBind();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        CatDT = CatAdapter.SELECT();
        GridView1.DataSource = CatDT;
        GridView1.DataBind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int cid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

        TextBox tcat = GridView1.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox;
        int up = CatAdapter.Update(cid, tcat.Text);
        GridView1.EditIndex = -1;
        CatDT = CatAdapter.SELECT();
        GridView1.DataSource = CatDT;
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int CID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        int del = CatAdapter.Delete(CID);
        GridView1.EditIndex = -1;
        CatDT = CatAdapter.SELECT();
        GridView1.DataSource = CatDT;
        GridView1.DataBind();
    }
}