using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Site : System.Web.UI.MasterPage
{
    Metodlar klas = new Metodlar();
    public static string hak = "", iletisim = "", Bos = "bos";
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {

            DataRow dr = klas.GetDataRow("select hakkimizda,iletisim from icerikler");

            hak = Seo.OzetCek(dr["hakkimizda"].ToString(), 400).ToString() + "<a href='/kurumsal'>... Devamı</a>";
            iletisim = dr["iletisim"].ToString();


            //DataTable dtmenu = klas.GetDataTable("select Link,MenuAdi from Menular where durum=1 and DilID=0 order by sira");

            //rptrsira1.DataSource = dtmenu;
            //rptrsira1.DataBind();


            DataTable dt = klas.GetDataTable("select * from Sosyaller where Link not Like '%" + Bos + "%'");
            rpsosyal.DataSource = dt;
            rpsosyal.DataBind();

          

            DataTable dtmenu = klas.GetDataTable("select Link,MenuAdi,MenuAdiBig from Menular where durum=1 and DilID=0 order by sira");
            rpmenusira.DataSource = dtmenu;
            rpmenusira.DataBind();
            rpmenu2.DataSource = dtmenu;
            rpmenu2.DataBind();
			rp_alt_menu.DataSource = dtmenu;
			rp_alt_menu.DataBind();
            

            //DataTable dtkat = klas.GetDataTable("select top 2  KategoriAdi,KategoriID from sayfakategoriler where ParentID=0 and cop=0");
            //rpsayfakat.DataSource = dtkat;
            //rpsayfakat.DataBind();
          
            
            //string veri="";
            //DataTable dtkaturun = klas.GetDataTable("select  KategoriAdi,KategoriID from kategoriler where PARENT_ID=0 and cop=0 order by sira");
            //rpkatmobil.DataSource = dtkaturun;
            //rpkatmobil.DataBind();
            //rpfooterurunler.DataSource = dtkaturun;
            //rpfooterurunler.DataBind();

            //for (int i = 0; i < dtkaturun.Rows.Count; i++)
            //{
            //    DataTable dtsub = klas.GetDataTable("select  KategoriAdi,KategoriID from kategoriler where PARENT_ID='"+dtkaturun.Rows[i][1]+"' and cop=0 order by sira");
            //    if(dtsub.Rows.Count!=0)
            //    {
            //        veri = "";
            //        for (int x = 0; x < dtsub.Rows.Count; x++)
            //            veri += "<li><a href='/" + Seo.urlseo(dtsub.Rows[x][0].ToString()) + "-grubu-" + dtsub.Rows[x][1] + "'>"+ dtsub.Rows[x][0].ToString() + "</a></li>";

            //        ltrlmenu.Text += @"<li class='opener'><a href='#'>" + dtkaturun.Rows[i][0] + " <i class='fa fa-angle-right' aria-hidden='true'></i></a><ul class='sub shadow' style='display:none'>" + veri+"</ul></li>";
            //    }else
            //        ltrlmenu.Text += "<li><a href='/" + Seo.urlseo(dtkaturun.Rows[i][0].ToString()) + "-grubu-" + dtkaturun.Rows[i][1] + "'>" + dtkaturun.Rows[i][0] + "</a></li>";
            //}
            //rpurun.DataSource = dtkaturun;
            //rpurun.DataBind();

            //rpmobil.DataSource = dtkat;
            //rpmobil.DataBind();

        }
        catch (Exception ex)
        {

        }

    }


    protected void rptrmenu_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {

        Repeater rp = (Repeater)e.Item.FindControl("rptraltmenu");

        DataTable dt = klas.GetDataTable("select KategoriAdi,KategoriID from kategoriler where PARENT_ID=" + DataBinder.Eval(e.Item.DataItem, "KategoriID").ToString() + " order by sira");
        rp.DataSource = dt;
        rp.DataBind();

    }

    protected void rptrtmobilmenudis_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        Repeater rp = (Repeater)e.Item.FindControl("rptrtmobilmenu");

        DataTable dt = klas.GetDataTable("select KategoriAdi,KategoriID from kategoriler where PARENT_ID=" + DataBinder.Eval(e.Item.DataItem, "KategoriID").ToString());
        rp.DataSource = dt;
        rp.DataBind();
    }

    protected void rptraltmenu_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        Literal ltrl = (Literal)e.Item.FindControl("ltrlalt");
        ltrl.Text = "";
        DataTable dt = klas.GetDataTable("select KategoriAdi,KategoriID from kategoriler where PARENT_ID=" + DataBinder.Eval(e.Item.DataItem, "KategoriID").ToString());

        for (int i = 0; i < dt.Rows.Count; i++)
        {
            if (ltrl.Text == "")
                ltrl.Text = "<a href='../../" + Seo.urlseo(dt.Rows[i]["KategoriAdi"].ToString()) + "/grubu/" + dt.Rows[i]["KategoriID"].ToString() + "'> " + dt.Rows[i]["KategoriAdi"].ToString() + ",&nbsp; </a>";
            else
                ltrl.Text += "<a href='../../" + Seo.urlseo(dt.Rows[i]["KategoriAdi"].ToString()) + "/grubu/" + dt.Rows[i]["KategoriID"].ToString() + "'> " + dt.Rows[i]["KategoriAdi"].ToString() + ",&nbsp;</a>";
        }
    }

    protected void btncikis_Click(object sender, EventArgs e)
    {
        Response.Cookies["_user"].Expires = DateTime.Now.AddDays(-1);
        Response.Redirect("/");
    }

    //protected void rpsayfakat_ItemDataBound(object sender, RepeaterItemEventArgs e)
    //{
    //    Repeater rp = (Repeater)e.Item.FindControl("rp");
    //    DataTable dtkat = klas.GetDataTable("select KategoriAdi,KategoriID,ParentID from sayfakategoriler where ParentID='" + DataBinder.Eval(e.Item.DataItem,"KategoriID")+"' and cop=0 order by KategoriID ");
    //    rp.DataSource = dtkat;
    //    rp.DataBind();
    //    rphizmetmobil.DataSource = dtkat;
    //    rphizmetmobil.DataBind();
    //}

    protected void rp_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        Literal ltrl = (Literal)e.Item.FindControl("ltrl");
        ltrl.Text = "/" + Seo.urlseo(klas.GetDataCell("select KategoriAdi from sayfakategoriler where KategoriID=" + DataBinder.Eval(e.Item.DataItem, "ParentID").ToString()));
    }

    protected void rpmobil_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        Repeater rp = (Repeater)e.Item.FindControl("rp");
        DataTable dtkat = klas.GetDataTable("select KategoriAdi,KategoriID,ParentID from sayfakategoriler where ParentID='" + DataBinder.Eval(e.Item.DataItem, "KategoriID") + "' and cop=0 order by KategoriID ");
        rp.DataSource = dtkat;
        rp.DataBind();
    }

    protected void rp_ItemDataBound1(object sender, RepeaterItemEventArgs e)
    {
        Literal ltrl = (Literal)e.Item.FindControl("ltrl");
        ltrl.Text = "/" + Seo.urlseo(klas.GetDataCell("select KategoriAdi from sayfakategoriler where KategoriID=" + DataBinder.Eval(e.Item.DataItem, "ParentID").ToString()));
    }

    protected void rpurun_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        Repeater rp = (Repeater)e.Item.FindControl("rp");
        DataTable dtkat = klas.GetDataTable("select KategoriAdi,KategoriID,ParentID from kategoriler where ParentID='" + DataBinder.Eval(e.Item.DataItem, "KategoriID") + "' and cop=0 order by KategoriID ");
        rp.DataSource = dtkat;
        rp.DataBind();
    }

    protected void rpurun_ItemDataBound1(object sender, RepeaterItemEventArgs e)
    {
        Repeater rp = (Repeater)e.Item.FindControl("rpsub");
        DataTable dtkat = klas.GetDataTable("select KategoriAdi,KategoriID from kategoriler where Parent_ID='" + DataBinder.Eval(e.Item.DataItem, "KategoriID") + "' and cop=0 order by KategoriID ");
        rp.DataSource = dtkat;
        rp.DataBind();
    }

    protected void rpkatmobil_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        Repeater rp = (Repeater)e.Item.FindControl("rpalt");
        DataTable dtkat = klas.GetDataTable("select KategoriAdi,KategoriID from kategoriler where Parent_ID='" + DataBinder.Eval(e.Item.DataItem, "KategoriID") + "' and cop=0 order by KategoriID ");
        rp.DataSource = dtkat;
        rp.DataBind();
    }
}
