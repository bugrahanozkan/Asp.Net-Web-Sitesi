using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;

public partial class iletisim : System.Web.UI.Page
{
    Metodlar klas = new Metodlar();
    string islem, Bos = "bos";
    protected void Page_Load(object sender, EventArgs e)
    {
        islem = Request.QueryString["islem"];

        Title = "İletişim";

        //if (islem == "bilgi")
        //    lblbilgi.Text = "Mesajınız Gönderildi...";

        ltrl.Text = klas.GetDataCell("select Adres from icerikler") + "<br>" + klas.GetDataCell("select iletisim from icerikler");
        //ltrliframe.Text = klas.GetDataCell("select iframe from icerikler");
        MetaDescription = Seo.nbsp(ltrl.Text) + " | " + MetaDescription;
        MetaKeywords = Seo.nbsp(ltrl.Text) + " | " + MetaKeywords;

    }

    protected void btngonder_Click(object sender, EventArgs e)
    {


        if (ctrl1GoogleReCaptcha.Validate())
        {
            string Email = txtemail.Text;
            if (txtemail.Text != "" && txtaciklama.Text != "" && txtad.Text != "" & txtkonu.Text != "")
            {
                try
                {
                    MailMessage msg = new MailMessage();
                    msg.IsBodyHtml = true;
                    msg.To.Add("aesradyant@yandex.com");
                    msg.From = new MailAddress("aesradyant@yandex.com", "Aes Radyant Isı Sistemleri", System.Text.Encoding.UTF8);
                    msg.Subject = "Aes Radyant Isı Sistemleri Site Mesaj";
                    msg.Body = "Gönderen Kişi: " + txtad.Text + " <br/></br> Email: " + txtemail.Text + " </br> <br/> Telefon: " + txttel.Text + " <br/></br> Konu: " + txtkonu.Text + "<br><br>   Açıklama: " + txtaciklama.Text + " <br/></br> Siteye Gitmek İçin <a href='https://aesradyant.com/'>Tıklayın</a>";
                    SmtpClient smp = new SmtpClient();
                    smp.Credentials = new NetworkCredential("sender@gmail.com", "deneme123");
                    smp.Port = 25;
                    smp.Host = "smtp.gmail.com";
                    smp.EnableSsl = true;
                    smp.Send(msg);
                    Response.Write("<script type='text/javascript'>alert('Bilgilerinizi aldık size en kısa zamanda dönüş yapacağız...');</script>");
                }
                catch (Exception)
                {

                    Response.Write("<script type='text/javascript'>alert('Sitem Hatası Lütfen Tekrar Deneyiniz!!!');</script>");
                }

            }
            else
                Response.Write("<script type='text/javascript'>alert('Eksik Alanları Doldurunuz.');</script>");

        }
        else
        {
            Response.Write("<script type='text/javascript'>alert('Lütfen güvenlik işlemini doğrulayın! (Recaptcha)');</script>");
        }

    }
}