using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class urundetay : System.Web.UI.Page
{
    Metodlar klas = new Metodlar();
    public string grupadi, anagrup, grupid,UrunID,katadi;
    protected void Page_Load(object sender, EventArgs e)
    {
        UrunID = RouteData.Values["UrunID"].ToString();
        DataTable dt = klas.GetDataTable("select UrunAdi,fiyat,Ozellikleri,Model,MarkaAdi,UrunID,urunkodu from  urunler  join Markalar on Markalar.MarkaID=Urunler.MarkaID where urunler.UrunID="+UrunID);
        rptruruncek.DataSource = dt;
        rptruruncek.DataBind();

        Title = dt.Rows[0]["UrunAdi"].ToString();
        MetaDescription = dt.Rows[0]["UrunAdi"].ToString() + " " + Seo.nbsp(Seo.htltemizle(dt.Rows[0]["Ozellikleri"].ToString()));
        MetaKeywords = dt.Rows[0]["UrunAdi"].ToString() + " " + Seo.nbsp(Seo.htltemizle(dt.Rows[0]["Ozellikleri"].ToString()));

        DataTable dturunslider = klas.GetDataTable("select thump,ResimAdi from resimler where UrunID=" + UrunID);
        rpslider.DataSource = dturunslider;
        rpslider.DataBind();

        //DataTable dturunsliderthump = klas.GetDataTable("select ResimAdi from resimler where UrunID=" + UrunID);
        //rptrturunsliderthump.DataSource = dturunsliderthump;
        //rptrturunsliderthump.DataBind();

    }
    protected void rptruruncek_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        Literal ltrl = (Literal)e.Item.FindControl("ltrlkat");
        DataTable dtkat = klas.GetDataTable("select KategoriAdi,KategoriID from iliskiler join Kategoriler on Kategoriler.KategoriID=iliskiler.PARENT_ID where iliskiler.UrunID=" + UrunID);
        int x = 0;
        for (int i = 0; i < dtkat.Rows.Count; i++)
        {

            ltrl.Text += dtkat.Rows[i]["KategoriAdi"].ToString() + " / ";
            katadi = ltrl.Text;
            if (x == 0)
            {
                grupadi = dtkat.Rows[i]["KategoriAdi"].ToString();
                anagrup = klas.GetDataCell("select KategoriAdi from kategoriler where kategoriID=" + klas.GetDataCell("select PARENT_ID from kategoriler where kategoriID=" + dtkat.Rows[i]["kategoriID"].ToString()));
                grupid = dtkat.Rows[i]["KategoriID"].ToString();
            }

            x = 1;
        }

    }
}