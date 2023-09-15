using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_View : System.Web.UI.Page
{
    DS_ADDITEM.ITEM_SELECTDataTable IDT = new DS_ADDITEM.ITEM_SELECTDataTable();
    DS_ADDITEMTableAdapters.ITEM_SELECTTableAdapter IAdapter = new DS_ADDITEMTableAdapters.ITEM_SELECTTableAdapter();

    DS_ORDER.ORDER_SELECTDataTable ODT = new DS_ORDER.ORDER_SELECTDataTable();
    DS_ORDERTableAdapters.ORDER_SELECTTableAdapter OAdapter = new DS_ORDERTableAdapters.ORDER_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        string idd = Request.QueryString["idd"].ToString();
        IDT = IAdapter.SELECT_BYID(Convert.ToInt32(idd));

        Image1.ImageUrl = IDT.Rows[0]["image"].ToString();
        Image2.ImageUrl = IDT.Rows[0]["image"].ToString();
        Image3.ImageUrl = IDT.Rows[0]["image1"].ToString();
        Image4.ImageUrl = IDT.Rows[0]["image2"].ToString();

        lblname.Text = IDT.Rows[0]["iname"].ToString();
        lblprice.Text = IDT.Rows[0]["price"].ToString();
        lblqnt.Text = IDT.Rows[0]["aquantity"].ToString();
        lbldetail.Text = IDT.Rows[0]["descripation"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       // int tprice = Convert.ToInt32(lblqnt.Text) * Convert.ToInt32(lblprice.Text);

        ODT = OAdapter.Select_for_add_to_cart(Session["uname"].ToString(), lblname.Text);
        if (ODT.Rows.Count == 0)
        {
            DateTime ddate=  Convert.ToDateTime( System.DateTime.Now.GetDateTimeFormats()[7]);
            OAdapter.Insert(Session["uname"].ToString(), lblname.Text, 1, Convert.ToDouble(lblprice.Text), Convert.ToDouble(lblprice.Text), 0, Image1.ImageUrl.ToString(),ddate.GetDateTimeFormats()[8].ToString());
        }
        else
        {
            
            OAdapter.ORDER_UPDATE_QUNTITY_CART(Convert.ToInt32(ODT.Rows[0]["oid"].ToString()), 1, Convert.ToDouble(lblprice.Text));
        }

        
    }
}