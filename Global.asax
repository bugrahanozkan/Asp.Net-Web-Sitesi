<%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Routing" %>
<script RunAt="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startup
        Application["OnlineZiyaretci"] = 0;
        RoutingAyarlari(RouteTable.Routes);

    }
    void RoutingAyarlari(RouteCollection routes)
    {

        routes.MapPageRoute("referans", "Referans/", "~/Referanslar.aspx");
        routes.MapPageRoute("belgelerimiz", "belgelerimiz/", "~/galeri.aspx");
        routes.MapPageRoute("Kategori", "{KategoriAdi}-Grubu-{KategoriID}", "~/UrunGrup.aspx");
        routes.MapPageRoute("HaberDetay", "bayi/{HaberAdi}/{HaberID}", "~/HaberDetay.aspx");
        routes.MapPageRoute("UrunDetay", "{UrunAdi}-Detay-{UrunID}", "~/UrunDetay.aspx");
        routes.MapPageRoute("sayfadetay", "hizmetler/{SayfaAdi}-hizmeti-{SayfaID}", "~/SayfaDetay.aspx");
        routes.MapPageRoute("SayfaGrup", "hizmetler/{KategoriAdi}-detay-{KategoriID}", "~/SayfaGrup.aspx");

        routes.MapPageRoute("video", "{VideoAdi}/video/{VideoID}", "~/UrunDetay.aspx");
        routes.MapPageRoute("UrunGrup", "{KategoriAdi}/Kategorisi/{KategoriID}", "~/UrunGrup.aspx");
        routes.MapPageRoute("UrunMarka", "{MarkaAdi}/Markasi/{MarkaID}", "~/urunMarka.aspx");
        routes.MapPageRoute("Kurumsallar", "kurumsal/", "~/Kurumsal.aspx");
        routes.MapPageRoute("ebulten", "E-bulten/", "~/ebulten.aspx");
        routes.MapPageRoute("iletisimbilgileri", "iletisim/", "~/iletisim.aspx");
        routes.MapPageRoute("Galeri", "Galeri/", "~/Galeri.aspx");
        routes.MapPageRoute("Bayiler", "Bayiler/", "~/Haberler.aspx");
        routes.MapPageRoute("Belge", "Belge/", "~/belge.aspx");
        routes.MapPageRoute("Servisler", "Servisler/", "~/servisler.aspx");
        routes.MapPageRoute("Arama", "Arama/", "~/UrunGrup.aspx");
        routes.MapPageRoute("bloglar", "blog/", "~/bloglar.aspx");
        routes.MapPageRoute("uyeonayla", "uyeonay/", "~/uyeonay.aspx");
        routes.MapPageRoute("dosyagonder", "dosya-gonder/", "~/dosyagonder.aspx");

        routes.MapPageRoute("bildirim", "bildirim/", "~/bildirim.aspx");
        routes.MapPageRoute("hakkimizda", "hakkimizda/", "~/hakkimizda.aspx");

        routes.MapPageRoute("yeni-konu", "yeni-konu/", "~/yeni_konu.aspx");
        routes.MapPageRoute("kul-banla", "kul-banla/{KulAdi}", "~/kul-banla.aspx");
        routes.MapPageRoute("galeriler", "{GaleriAdi}/galerisi", "~/galeri.aspx");
        routes.MapPageRoute("galeriler1", "galeri/{Link}", "~/galeriler.aspx");

        routes.MapPageRoute("konu-duzenle", "konu-duzenle/{KonuID}", "~/konu-duzenle.aspx");
        routes.MapPageRoute("dosyaindir", "dosyaindir/{DosyaID}/{DosyaAdi}", "~/dosyaindir.aspx");

        routes.MapPageRoute("yeni-konu1", "yeni-konu/{KategoriAdi}-{KategoriID}", "~/yeni_konu.aspx");

        routes.MapPageRoute("forumlar", "forumlar/{KategoriAdi}-detay-{KategoriID}", "~/forum_konular.aspx");
        routes.MapPageRoute("forum-konu", "forum-konu/{KonuAdi}-detay-{KonuID}", "~/forum_konu_detay.aspx");
        routes.MapPageRoute("kullanicilar", "kullanicilar/{KulAdi}", "~/uye_detay.aspx");
        routes.MapPageRoute("sayfacoklu", "dokumanlar/{KategoriAdi}-detay-{KategoriID}", "~/sayfagrup.aspx");
        routes.MapPageRoute("sayfacoklu1", "denemeler/{KategoriAdi}-detay-{KategoriID}", "~/sayfagrup.aspx");
        routes.MapPageRoute("sayfacoklu2", "mebmem/{KategoriAdi}-detay-{KategoriID}", "~/sayfagrup.aspx");
        routes.MapPageRoute("sayfacoklu3", "planlar/{KategoriAdi}-detay-{KategoriID}", "~/sayfagrup.aspx");

        routes.MapPageRoute("error", "error/", "~/error.aspx");
        routes.MapPageRoute("mesaj-gonder", "mesaj-gonder/{KulAdi}", "~/mesaj_gonder.aspx");
        routes.MapPageRoute("urunlerimiz", "urunlerimiz/", "~/urungrup.aspx");
        routes.MapPageRoute("uyelik", "uyelik/", "~/uye_ol.aspx");
        routes.MapPageRoute("giris", "giris/", "~/giris.aspx");
        routes.MapPageRoute("profilim", "profilim/", "~/profilim.aspx");
        routes.MapPageRoute("profilim-duzenle", "profil-duzenle/", "~/profil_duzenle.aspx");

        routes.MapPageRoute("sifre", "sifre-hatirlat/", "~/sifre_yenile.aspx");
        routes.MapPageRoute("mesaj-kutum", "mesaj-kutum/", "~/mesaj_kutum.aspx");
        routes.MapPageRoute("mesaj-oku", "mesaj-oku-{MesajID}", "~/mesajoku.aspx");




        routes.MapPageRoute("etiketcek", "etiketler/{Anahtar}/", "~/bloglar.aspx");
        routes.MapPageRoute("blogcek", "{KategoriAdi}/bloglari/{KategoriID}/", "~/bloglar.aspx");
        routes.MapPageRoute("blogdetay", "{BlogAdi}/blogu/{BlogID}", "~/BlogDetay.aspx");
        // routes.MapPageRoute("Hizmet", "Hizmetlerimiz/", "~/Hizmetlerimiz.aspx");
        routes.MapPageRoute("Login", "WebPanel/", "~/WP/Login.aspx");
        routes.MapPageRoute("forum", "forum/", "~/forum.aspx");

        routes.MapPageRoute("katalog1", "hasta-yataklari-katalogu/", "~/katalog.aspx");
        routes.MapPageRoute("katalog2", "pharmadis-katalogu/", "~/katalog1.aspx");
        routes.MapPageRoute("urunler", "urunlerimiz/", "~/UrunGrup.aspx");

        routes.MapPageRoute("hospital", "en/hospital-beds-catalog/", "~/en/katalog.aspx");
        routes.MapPageRoute("pharmadis", "en/pharmadis-catalog/", "~/en/katalog1.aspx");
        routes.MapPageRoute("products", "en/products/", "~/en/UrunGrup.aspx");
        routes.MapPageRoute("news", "en/news/", "~/en/haberler.aspx");
        routes.MapPageRoute("contact", "en/contact/", "~/en/iletisim.aspx");
        routes.MapPageRoute("about", "en/about-us/", "~/en/kurumsal.aspx");
        routes.MapPageRoute("reference", "en/reference/", "~/en/referanslar.aspx");
        routes.MapPageRoute("gallery", "en/gallery/", "~/en/galeri.aspx");
        routes.MapPageRoute("sayfadetay1", "en/page/{SayfaAdi}-{SayfaID}", "~/en/SayfaDetay.aspx");
        routes.MapPageRoute("UrunDetay1", "en/{UrunAdi}-detail-{UrunID}", "~/en/UrunDetay.aspx");
        routes.MapPageRoute("HaberDetay1", "en/news/{HaberAdi}/{HaberID}", "~/en/HaberDetay.aspx");





    }

    //protected void Application_BeginRequest(Object sender, EventArgs e)
    //{
    //    if (HttpContext.Current.Request.IsSecureConnection.Equals(false) && HttpContext.Current.Request.IsLocal.Equals(false))
    //    {
    //        Response.Redirect("http://" + Request.ServerVariables["HTTP_HOST"] + HttpContext.Current.Request.RawUrl);
    //    }
    //}

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown
        Application.Remove("OnlineZiyaretci");

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        Session.Timeout = 120;
        Application["OnlineZiyaretci"] = (int)Application["OnlineZiyaretci"] + 1; //Burada sitemize yeni bir kullanıcı girdiğini anlıyoruz ve OnlineZiyaretçi sayımızı 1 artırıyoruz.
        Application.UnLock();

        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e)
    {
        Application.Lock();
        Application["OnlineZiyaretci"] = (int)Application["OnlineZiyaretci"] - 1;  //Burada sitemizden bir kullanıcının ayrılmış olduğunu anlıyoruz ve OnlineZiyaretçi sayımızı 1 azaltıyoruz.
        Application.UnLock();
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

</script>
