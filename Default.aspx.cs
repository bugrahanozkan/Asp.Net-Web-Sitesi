using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class _Default : System.Web.UI.Page
{
    Metodlar klas = new Metodlar();
    public string kitap,dagarcik,dogrusu;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            DataTable dtaslider = klas.GetDataTable("select ResimAdi,thump from Sliderlar order by Varsayilan desc");
            rptrslider.DataSource = dtaslider;
            rptrslider.DataBind();

            //DataTable dturun = klas.GetDataTable("select top 20 KategoriAdi,urunler.UrunAdi,thump,urunler.UrunID from  iliskiler join kategoriler on kategoriler.KategoriID=iliskiler.PARENT_ID join urunler on iliskiler.UrunID = urunler.UrunID  join resimler on urunler.UrunID = resimler.UrunID where urunler.cop = 0 and varsayilan = 1  and urunler.DilID=0");
            //rpurunler.DataSource = dturun;
            //rpurunler.DataBind();

            //DataTable dtyeni = klas.GetDataTable("select top 10 thump,urunler.UrunID,UrunAdi,Fiyat from urunler join resimler on resimler.urunID=urunler.UrunID where varsayilan=1 and urunler.cop=0 and urunler.DilID=1 order by sira desc");
            //rptrtyeniurunler.DataSource = dtyeni;
            //rptrtyeniurunler.DataBind();
            //DataTable dtblog = klas.GetDataTable("select BlogAdi,BlogID,thump,okuma,Tarih from bloglar where Cop=0  order by BlogID");
            //rptrblog.DataSource = dtblog;
            //rptrblog.DataBind();

            //DataTable dtref = klas.GetDataTable(@"SELECT dbo.Resimler.ResimAdi FROM dbo.Referanslar INNER JOIN
            //             dbo.Resimler ON dbo.Referanslar.ResimID = dbo.Resimler.ResimID");
            //rp.DataSource = dtref;
            //rp.DataBind();
            DataRow dr = klas.GetDataRow("select UstKisim, UstKisimYazi from icerikler");
            ltrlBaslik.Text = dr[0].ToString();
            ltrlYazi.Text = dr[1].ToString();
        }
        catch (Exception)
        {

            Response.Redirect("/error?code=500");
        }
    }

    protected void rptrtyeniurunler_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        Literal ltrl = (Literal)e.Item.FindControl("ltrlkategori");
        ltrl.Text = "0";
        DataTable dt = klas.GetDataTable("select top 5 KategoriAdi,KategoriID from iliskiler join kategoriler on kategoriler.KategoriID=iliskiler.PARENT_ID where UrunID=" + DataBinder.Eval(e.Item.DataItem, "UrunID").ToString());
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            if (ltrl.Text != "0")
                ltrl.Text += ",<a href='/" + Seo.urlseo(dt.Rows[i]["KategoriAdi"].ToString()) + "/group/" + dt.Rows[i]["KategoriID"].ToString() + "' rel='tag'>" + dt.Rows[i]["KategoriAdi"].ToString() + "</a>";
            else
                ltrl.Text = "<a href='/" + Seo.urlseo(dt.Rows[i]["KategoriAdi"].ToString()) + "/group/" + dt.Rows[i]["KategoriID"].ToString() + "' rel='tag'>" + dt.Rows[i]["KategoriAdi"].ToString() + "</a>";

        }
    }
    protected void btnkitap_Click(object sender, EventArgs e)
    {
        Response.Redirect("/galeri/bir-kitap-okudum");
    }

    protected void btndagarcik_Click(object sender, EventArgs e)
    {
        Response.Redirect("/galeri/dagarcik");
    }

    protected void btndogrusu_Click(object sender, EventArgs e)
    {
        Response.Redirect("/galeri/dogrusu");
    }
}