﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Home : System.Web.UI.Page
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
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("View.aspx?idd=" + e.CommandArgument.ToString());
    }
    
}