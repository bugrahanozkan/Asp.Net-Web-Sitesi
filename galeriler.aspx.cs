using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class galeriler : System.Web.UI.Page
{
    public string fa_yaz, GaleriAdi,KategoriID;
    Metodlar klas = new Metodlar();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            GaleriAdi = RouteData.Values["Link"].ToString();

            DataRow dr = klas.GetDataRow("select KategoriAdi,KategoriID from Birim_Kategoriler where Link='" + GaleriAdi + "'");
            fa_yaz = "<i class='fa fa-picture-o'></i> " + dr["KategoriAdi"].ToString();

            Title = dr["KategoriAdi"].ToString() + " Galerisi";

            DataTable dtgaleri = klas.GetDataTable("select ResimAdi from birimler where KategoriID=" + dr["KategoriID"].ToString());
            rptrgeleri.DataSource = dtgaleri;
            rptrgeleri.DataBind();
        }
        catch (Exception)
        {


        }
    }
}