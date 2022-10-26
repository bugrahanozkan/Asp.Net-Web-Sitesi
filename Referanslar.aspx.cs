using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Referanslar : System.Web.UI.Page
{
    Metodlar klas = new Metodlar();
    protected void Page_Load(object sender, EventArgs e)
    {
        Title = "Referanslarımız";

        DataTable dt = klas.GetDataTable("select ReferansAdi,Thump,ResimAdi from Referanslar join Resimler on Referanslar.ResimID=Resimler.ResimID");
        rptr.DataSource = dt;
        rptr.DataBind();

    }
}