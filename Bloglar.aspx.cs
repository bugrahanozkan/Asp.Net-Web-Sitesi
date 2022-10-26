using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Bloglar : System.Web.UI.Page
{
    Metodlar klas = new Metodlar();
    string KategoriID = "", Anahtar = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dtblog = klas.GetDataTable("select BlogAdi,BlogID,thump,okuma,Tarih from bloglar where Cop=0  order by BlogID");
        rptrblog.DataSource = dtblog;
        rptrblog.DataBind();

        rptrsol.DataSource = dtblog;
        rptrsol.DataBind();
        Title = "Blog";

        MetaDescription = "Blog " + MetaDescription;
        MetaKeywords = "Blog " + MetaKeywords;

    }
    protected void rptrsolkat_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        Literal ltrl = (Literal)e.Item.FindControl("ltrlkatrunsayisi");
        DataTable dt = klas.GetDataTable("select BlogID from bloglar where KategoriID=" + DataBinder.Eval(e.Item.DataItem, "KategoriID").ToString());
        ltrl.Text = dt.Rows.Count.ToString();
    }
}