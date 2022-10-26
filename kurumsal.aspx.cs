using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class kurumsal : System.Web.UI.Page
{
     Metodlar klas = new Metodlar();
    protected void Page_Load(object sender, EventArgs e)
    {
      //DataTable dr = klas.GetDataTable("select * from Ekipler ");
      //  rptr.DataSource = dr;
      //  rptr.DataBind();

        Title ="Hakkımızda";
        ltrl.Text= klas.GetDataCell("select Hakkimizda from icerikler ");



    }
}