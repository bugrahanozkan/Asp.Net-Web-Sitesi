using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class hakkimizda : System.Web.UI.Page
{
    public string yaz;
    Metodlar klas = new Metodlar();
    protected void Page_Load(object sender, EventArgs e)
{
        try
        {
            Title = "Hakkımızda";
            
            yaz = klas.GetDataCell("select hakkimizda from icerikler");
            MetaDescription = yaz;
        }
        catch (Exception)
        {

            Response.Redirect("/error?code=500");
        }
}
}