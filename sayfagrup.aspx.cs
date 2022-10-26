using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Globalization;

public partial class sayfagrup : System.Web.UI.Page
{
    public string yaz;
    Metodlar klas = new Metodlar();
    string KategoriID; string user_ip;
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            KategoriID = RouteData.Values["KategoriID"].ToString();
            yaz = klas.GetDataCell("select KategoriAdi from sayfakategoriler where KategoriID='"+KategoriID+"'");
          string  ParentID = klas.GetDataCell("select ParentID from sayfakategoriler where KategoriID='" + KategoriID + "'");
            string yaz2 = klas.GetDataCell("select KategoriAdi from sayfakategoriler where KategoriID='" + ParentID + "'");
            Title = yaz2+" - " +yaz;
            MetaDescription = yaz2 + " - " + yaz +" - "+MetaDescription;
            MetaKeywords = yaz2 + " - " + yaz + " - " + MetaKeywords;

            DataTable dt = klas.GetDataTable(@"SELECT dbo.Sayfalar.SayfaID, dbo.Sayfalar.SayfaAdi, dbo.Resimler.Thump FROM dbo.Sayfalar INNER JOIN
                         dbo.Resimler ON dbo.Sayfalar.SayfaID = dbo.Resimler.SayfaID where sayfalar.KategoriID='"+KategoriID+"'");
            rpsayfa.DataSource = dt;
            rpsayfa.DataBind();
       

        }
        catch (Exception)
        {


        }
    }
   
   
}