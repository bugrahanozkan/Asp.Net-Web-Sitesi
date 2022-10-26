using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class urungrup : System.Web.UI.Page
{
    Metodlar klas = new Metodlar();
    string KatID;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        try
        {
            KatID = RouteData.Values["KategoriID"].ToString();
            DataTable dt = klas.GetDataTable("select KategoriAdi,KategoriID from kategoriler where cop=0 and PARENT_ID='"+KatID+"' or KategoriID='"+KatID+"'");
            rpkat.DataSource = dt;
            rpkat.DataBind();

            Title =dt.Rows[0][0].ToString();
            MetaDescription = "Ürünlerimiz " + dt.Rows[0][0].ToString();
            MetaKeywords = "Ürünlerimiz " + dt.Rows[0][0].ToString();
        }
        catch (Exception)
        {
            Response.Redirect("/error.aspx?code=500");
        }
        
    }

    protected void rpkat_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        Repeater rpurunler = (Repeater)e.Item.FindControl("rpurunler");
        DataTable dt = klas.GetDataTable("select UrunAdi,urunler.UrunID,resimler.thump from iliskiler join  urunler on urunler.UrunID=iliskiler.UrunID join resimler on resimler.UrunID=urunler.UrunID where cop=0 and varsayilan=1 and PARENT_ID='" + DataBinder.Eval(e.Item.DataItem,"KategoriID")+"' order by urunler.UrunID desc");
        rpurunler.DataSource = dt;
        rpurunler.DataBind();
    }
}