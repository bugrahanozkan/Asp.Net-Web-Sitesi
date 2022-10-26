using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Galeri : System.Web.UI.Page
{
    public string fa_yaz,GaleriAdi;
     Metodlar klas = new Metodlar();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Title =" Galeri";

            DataTable dtgaleri = klas.GetDataTable("select Thump,ResimAdi from Resimler where Galeri=0");
            rptrgeleri.DataSource = dtgaleri;
            rptrgeleri.DataBind();
        }
        catch (Exception)
        {

            
        }
    }
}