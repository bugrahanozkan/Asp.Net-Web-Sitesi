using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class SayfaDetay : System.Web.UI.Page
{
       Metodlar klas = new Metodlar();
    string SayfaID;
	public static string sayfaadi="";
    protected void Page_Load(object sender, EventArgs e)
    {
      
        SayfaID = RouteData.Values["SayfaID"].ToString();
        DataTable dthaberdetay = klas.GetDataTable("select SayfaAdi,Detay from Sayfalar where SayfaID=" + SayfaID);
        rptr.DataSource = dthaberdetay;
        rptr.DataBind();

        DataTable dtsayfa = klas.GetDataTable("select SayfaAdi,sayfalar.SayfaID,thump,KategoriAdi from Sayfalar join sayfakategoriler on sayfakategoriler.KategoriID=sayfalar.KategoriID join resimler on resimler.SayfaID=sayfalar.SayfaID where sayfalar.Cop=0 and varsayilan=1");
        rptrsol.DataSource = dtsayfa;
        rptrsol.DataBind();


        DataRow dr = klas.GetDataRow("select SayfaAdi,Detay,Anahtar from Sayfalar where SayfaID=" + SayfaID);
        Title = dr["SayfaAdi"].ToString();
		sayfaadi=dr["SayfaAdi"].ToString();
        MetaDescription = dr["SayfaAdi"].ToString() + " "+dr["Detay"].ToString();
        //MetaKeywords = dr["Anahtar"].ToString();
        string Resim = klas.GetDataCell("select Thump from Resimler where varsayilan=1 and SayfaID=" + SayfaID);
        ltrl.Text = "<img width='100%' style='max-height:450px' src='/Sayfalar/thump/" + Resim + "' class='img-responsive'/>";

        DataTable dtgaleri = klas.GetDataTable("select ResimAdi from Resimler where Varsayilan=0 and SayfaID=" + SayfaID);

        if (dtgaleri.Rows.Count > 0)
        {
            pnlgaleri.Visible = true;
            rptrgeleri.DataSource = dtgaleri;
            rptrgeleri.DataBind();
        }
    }
}