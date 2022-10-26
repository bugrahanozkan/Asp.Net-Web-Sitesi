using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class error : System.Web.UI.Page
{
    string code;
    protected void Page_Load(object sender, EventArgs e)
    {
        code = Request.QueryString["code"];

        if(code=="403")
        {
            Title = "403 Yasak İçerik - Pronet Yazılım";
            ltrlkod.Text = "403";
            ltrlaciklama.Text = "Yasak İçerik <br /> Forbidden";
        }
        else if(code=="404")
        {
            Title = "404 Aradığınız Sayfa Bulunamadı - Pronet Yazılım";
            ltrlkod.Text = "404";
            ltrlaciklama.Text = "Aradığınız Sayfa Bulunamadı <br /> Not Found";
        }
        else if (code == "500")
        {
            Title = "500 Sunucu Hatası - Pronet Yazılım";
            ltrlkod.Text = "500";
            ltrlaciklama.Text = "Sunucu Hatası <br /> Server Errors";
        }
        else if(code == "503")
        {
            Title = "503 Hizmet Kullanılamıyor - Pronet Yazılım";
            ltrlkod.Text = "503";
            ltrlaciklama.Text = "Servis Kullanılamıyor <br /> Service Unavailable";
        }
else if(code == "900")
        {
            Title = "Site Kapatıldı Hizmet Kullanılamıyor - Pronet Yazılım";
            ltrlkod.Text = "900";
            ltrlaciklama.Text = "Servis Kullanılamıyor <br />Abone <br />Borcunu Ödemediği İçin Durduruldu";
}
        else 
        {
            Title = "400 Geçersiz İstek - Pronet Yazılım";
            ltrlkod.Text = "400";
            ltrlaciklama.Text = "Geçersiz İstek <br /> Bad Request";

        }


    }

    protected void btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("./");
    }
}