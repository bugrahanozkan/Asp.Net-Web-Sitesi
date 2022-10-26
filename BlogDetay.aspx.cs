using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Text;

public partial class BlogDetay : System.Web.UI.Page
{
    Metodlar klas = new Metodlar();
    string BlogID;
    public static string BlogAdi = "";
    public static int okuma = 0, kontrol = 0;

    public class Ogrenci
    {
        public string AnahatarCek { get; set; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {

        BlogID = RouteData.Values["BlogID"].ToString();
        DataTable dthaberdetay = klas.GetDataTable("select BlogAdi,Detay,Tarih,Yazar,Okuma from bloglar where BlogID=" + BlogID);
        rptr.DataSource = dthaberdetay;
        rptr.DataBind();
       
        DataTable dtsolkat = klas.GetDataTable("select KategoriAdi,KategoriID from BlogKategoriler where Cop=0 order by KategoriAdi");
        rptrsolkat.DataSource = dtsolkat;
        rptrsolkat.DataBind();

        DataRow dr = klas.GetDataRow("select BlogAdi,Detay,Anahtar,ResimAdi,okuma from bloglar where BlogID=" + BlogID);
        Title = dr["BlogAdi"].ToString();
        BlogAdi = dr["BlogAdi"].ToString();
        MetaDescription = dr["BlogAdi"].ToString()+" "+dr["Detay"].ToString();
        MetaKeywords= dr["anahtar"].ToString()+" "+ MetaKeywords;
        string anahtar= dr["anahtar"].ToString();
        okuma = Convert.ToInt16(dr["okuma"]);

        string[] splt = anahtar.Split(new Char[] { ',' }, StringSplitOptions.RemoveEmptyEntries);

        string sorgu = "0"; int say = 0;
        foreach (var item in splt)
        {
            say++;
            if (sorgu == "0")
            {
                sorgu = " (anahtar Like '%" + item + "%' and Cop=0 and BlogID!=" + BlogID + ") ";
            }
            else
                sorgu += "or (anahtar Like '%" + item + "%' and Cop=0 and BlogID!=" + BlogID+") ";
        }

        //int qArrayCount = dtsepet.Rows.Count;
        //object[][] user_basket = new object[qArrayCount][];
        //int i = 0;
        //foreach (DataRow dr in say)
        //{
        //    string skdv = klas.GetDataCell("select KDV_T from urunler where urunID=" + dr["UrunID"]);
        //    string qStokKodu = dr["UrunAdi"].ToString();
        //    double qFiyat = Convert.ToDouble(dr["Tutar"]) + (Convert.ToDouble(skdv) * Convert.ToDouble(dr["adet"]));
        //    int qAdet = Convert.ToInt32(dr["Adet"]);
        //    user_basket[i] = new object[] { qStokKodu, qFiyat, qAdet };
        //    i++;
        //}


    //    List<Ogrenci> ogrenciler = new List<Ogrenci>()
    //{
    //       foreach (var item in splt)
    //        new Ogrenci { AnahatarCek = "Veysel Uğur" };

    //};
    //    rprtetiket.DataSource = ogrenciler;
    //    rprtetiket.DataBind();



        DataTable dtsayfa = klas.GetDataTable("select BlogAdi,BlogID from bloglar where "+sorgu+" ");
        rpmenu.DataSource = dtsayfa;
        rpmenu.DataBind();
        string meta = "";

        if (Request.Cookies["okuma"] == null)
        {

            HttpCookie yeni = new HttpCookie("okuma");
            yeni.Values.Add("BlogID", BlogID);
            yeni.Expires.AddDays(30);
            Response.Cookies.Add(yeni);
            okuma = Convert.ToInt16(dr["okuma"].ToString()) + 1;
            klas.cmd("update bloglar set okuma=" + okuma + " where BlogID=" + BlogID);
        }
        else
        {
            string[] spltokuma = Request.Cookies["okuma"].Values["BlogID"].ToString().Split(new Char[] { ',' }, StringSplitOptions.RemoveEmptyEntries);
            foreach (string item in spltokuma)
            {
               
                if (Convert.ToInt16(item) == Convert.ToInt16(BlogID))
                {
                    kontrol = 1;
                    break;
                }
            }


            if (kontrol == 0)
            {
                okuma = Convert.ToInt16(dr["okuma"].ToString()) + 1;
                klas.cmd("update bloglar set okuma=" + okuma + " where BlogID=" + BlogID);
                HttpCookie yeni = new HttpCookie("okuma");
                yeni.Values.Add("BlogID", Request.Cookies["okuma"].Values["BlogID"] + "," + BlogID);
                yeni.Expires.AddDays(30);
                Response.Cookies.Add(yeni);
            }
        }
     
        ltrl.Text = "<img width='100%' style='max-height:450px' src='/Bloglar/" + dr["ResimAdi"].ToString() + "' class='img-responsive'/>";

    }
	    protected void rptrsolkat_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        Literal ltrl = (Literal)e.Item.FindControl("ltrlkatrunsayisi");
        DataTable dt = klas.GetDataTable("select BlogID from bloglar where KategoriID=" + DataBinder.Eval(e.Item.DataItem, "KategoriID").ToString());
        ltrl.Text = dt.Rows.Count.ToString();    
    }

    protected void rprtetiket_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if(e.CommandName=="gonder")
        {
            using (WebClient client = new WebClient())
            {
                client.Headers.Add("Content-Type", "application/x-www-form-urlencoded");
              //  byte[] result = client.UploadValues("https://www.paytr.com/odeme/api/get-token", "POST", "");
            }
        }
    }

    protected void rprtetiket_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        Button btn = (Button)e.Item.FindControl("btnetiket");

        string anahtar = klas.GetDataCell("select Anahtar from bloglar where BlogID=" + BlogID);

        string[] splt = anahtar.Split(new char[] { ',' }, StringSplitOptions.RemoveEmptyEntries);
        foreach (var item in splt)
        {
            btn.Text = item;
        }

    }
}