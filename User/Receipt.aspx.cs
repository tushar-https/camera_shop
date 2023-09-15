using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.CrystalReports;
using CrystalDecisions.Shared;
using System.Data;

public partial class User_Receipt : System.Web.UI.Page
{
    DS_ORDER.ORDER_SELECTDataTable ORD = new DS_ORDER.ORDER_SELECTDataTable();
    DS_ORDERTableAdapters.ORDER_SELECTTableAdapter OAdapter = new DS_ORDERTableAdapters.ORDER_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
         ORD = OAdapter.Select_BY_UNAME(Session["uname"].ToString());
         ReportDocument Rpt = new ReportDocument();
         string rpath = (Server.MapPath("~/") + "Crbill.rpt");
        Rpt.Load(rpath);
        Rpt.SetDataSource((DataTable)ORD);

        CrystalReportViewer1.ReportSource = Rpt;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {


    }
}