using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class haberdetay : System.Web.UI.Page
{
    Metodlar klas = new Metodlar();
    string HaberID;
    public string foto, baslik;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {


            HaberID = RouteData.Values["HaberID"].ToString();
            DataTable dthaberdetay = klas.GetDataTable("select HaberAdi,Detay,Tarih,thump from Haberler join resimler on resimler.HaberID=haberler.HaberID where haberler.HaberID=" + HaberID);
            rptrhaberdetay.DataSource = dthaberdetay;
            rptrhaberdetay.DataBind();

            baslik = dthaberdetay.Rows[0]["HaberAdi"].ToString();

            DataTable dthaberler = klas.GetDataTable("select HaberAdi,HaberID from Haberler where cop=0 and DilID=0 and HaberID!=" + HaberID);
            rphaber.DataSource = dthaberler;
            rphaber.DataBind();

            DataRow dr = klas.GetDataRow("select HaberAdi,Detay from Haberler where HaberID=" + HaberID);
            Title = dr["HaberAdi"].ToString();
            MetaDescription = dr["HaberAdi"].ToString() + " " + dr["Detay"].ToString();
            MetaKeywords = dr["HaberAdi"].ToString() + " " + dr["Detay"].ToString();

            //  klas.GetDataCell("select ResimAdi from Resimler where Varsayilan=1 and HaberID=" + HaberID);


            //  ltrl.Text = "<img style='min-width: 100%; max-Height:500px; ; ' src='/Haberler/Thump/" + klas.GetDataCell("select Thump from Resimler where Varsayilan=1 and HaberID=" + HaberID) + "' class='img-responsive'/>";
       

        }
        catch (Exception)
        {

            Response.Redirect("/error?code=500");
        }


    }

}