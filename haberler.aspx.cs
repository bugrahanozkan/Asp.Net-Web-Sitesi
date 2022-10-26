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

public partial class haberler : System.Web.UI.Page
{
    Metodlar klas = new Metodlar();
    protected void Page_Load(object sender, EventArgs e)
    {
        Title = "Bayiler";
        if (!IsPostBack)
        {
            DataTable dt = klas.GetDataTable("select * from iller");
            cbIller.DataSource = dt;
            cbIller.DataTextField = "sehir";
            cbIller.DataValueField = "id";
            cbIller.DataBind();
        }
    }
    protected void btngonder_Click(object sender, EventArgs e)
    {
        if (ctrl1GoogleReCaptcha.Validate())
        {
            if (txtfirmaadi.Text != "" && txtyetkiliadi.Text != "" && txttel.Text != "" && txtfirmaadresi.Text != "")
            {
                string secilenIller = "";
                for (int i = 0; i < cbIller.Items.Count; i++)
                {
                    if (cbIller.Items[i].Selected)
                        secilenIller += "," + cbIller.Items[i].Text;
                }
                if (secilenIller != "")
                {
                    secilenIller = secilenIller.Substring(1);
                    try
                    {
                        MailMessage msg = new MailMessage();
                        msg.IsBodyHtml = true;
                        msg.To.Add("aesradyant@gmail.com");
                        msg.From = new MailAddress("aesradyant@gmail.com", "Aes Radyant Isı Sistemleri", System.Text.Encoding.UTF8);
                        msg.Subject = "Aes Radyant Isı Sistemleri Site Mesaj";
                        msg.Body = "Firma Adı: " + txtfirmaadi.Text + " <br/></br>Yetkili Adı: " + txtyetkiliadi.Text + " </br> <br/>Telefon: " + txttel.Text + " <br/></br>Firma Adresi: " + txtfirmaadresi.Text + "<br><br>Hizmet Verilen İller: " + secilenIller + " <br/></br>Siteye Gitmek İçin <a href='https://aesradyant.com/'>Tıklayın</a>";
                        SmtpClient smp = new SmtpClient();
                        smp.Credentials = new NetworkCredential("ykilic855.yk.yk@gmail.com", "5893117870008183");
                        smp.Port = 25;
                        smp.Host = "smtp.gmail.com";
                        smp.EnableSsl = true;
                        smp.Send(msg);
                        Response.Write("<script type='text/javascript'>alert('Bilgilerinizi aldık size en kısa zamanda dönüş yapacağız...');</script>");
                    }
                    catch (Exception)
                    {
                        Response.Write("<script type='text/javascript'>alert('Sistem Hatası Lütfen Tekrar Deneyiniz!!!');</script>");
                    }
                }
                else
                    Response.Write("<script type='text/javascript'>alert('Hizmet Verdiğiniz İlleri Seçiniz.');</script>");
            }
            else
                Response.Write("<script type='text/javascript'>alert('Eksik Alanları Doldurunuz.');</script>");
        }
        else
            Response.Write("<script type='text/javascript'>alert('Lütfen güvenlik işlemini doğrulayın! (Recaptcha)');</script>");
    }
}