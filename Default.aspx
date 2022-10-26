<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="/js/jssor.slider-24.1.5.min.js"></script>
    <script src="/js/slider.js"></script>
    <link href="/css/slider.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cnticerik" runat="Server">
    <div class="main_slider wow fadeIn">
        <div id="jssor_1" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 1300px; height: 560px; overflow: hidden; visibility: hidden;">
            <!-- Loading Screen -->
            <div data-u="loading" style="position: absolute; top: 0px; left: 0px; background: url('img/loading.gif') no-repeat 50% 50%; background-color: rgba(0, 0, 0, 0.7);"></div>
            <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 1300px; height: 560px;">
                <asp:Repeater ID="rptrslider" runat="server">
                    <ItemTemplate>
                        <div>
                            <img data-u="image" src="../Sliderlar/<%#Eval("ResimAdi")%>" />
                        </div>

                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <!-- Bullet Navigator -->
            <div data-u="navigator" class="jssorb05" style="bottom: 16px; right: 16px;" data-autocenter="1">
                <!-- bullet navigator item prototype -->
                <div data-u="prototype" style="width: 16px; height: 16px;"></div>
            </div>
            <!-- Arrow Navigator -->
            <div data-u="arrowleft" class="jssora031" style="width: 50px; height: 50px; top: 0px; left: 20px;" data-autocenter="2">
                <svg viewbox="-12986 -2977 16000 16000" style="width: 100%; height: 100%;">
                    <polygon class="a" points="-1182.1,12825.5 -792,12435.4 -8204.5,5023 -792,-2389.4 -1182.1,-2779.5 -8984.8,5023"></polygon>
                </svg>
            </div>
            <div data-u="arrowright" class="jssora031" style="width: 50px; height: 50px; top: 0px; right: 20px;" data-autocenter="2">
                <svg viewbox="-12986 -2977 16000 16000" style="width: 100%; height: 100%;">
                    <polygon class="a" points="-8594.7,12825.5 -8984.8,12435.4 -1572.3,5023 -8984.8,-2389.4 -8594.7,-2779.5 -792,5023"></polygon>
                </svg>
            </div>
        </div>
    </div>

    <div class="col-md-12 wow fadeIn">
        <div class="div_ortala">
            <div class="bg_dis">
                <div class="urundis_title wow fadeIn">
                    <h3 class="txt_color2">Uygulama Alanlarımız</h3>
                </div>
                <div class="urundis_title hr txt_color1 wow fadeIn"></div>
                <div class="urundis wow fadeInUp" style="width: 100%!important; box-shadow: none!important;">
                    <div class="col-md-12">
                        <p class="product-title"><i class="fa fa-hand-o-right" aria-hidden="true"></i>&nbsp;Cafe, Restoran ve Açık Alanlar</p>
                    </div>
                </div>
                <div class="urundis wow fadeInUp" style="width: 100%!important;">
                    <div class="col-md-12">
                        <p class="product-title"><i class="fa fa-hand-o-right" aria-hidden="true"></i>&nbsp;Atölye</p>
                    </div>
                </div>
                <div class="urundis wow fadeInUp" style="width: 100%!important;">
                    <div class="col-md-12">
                        <p class="product-title"><i class="fa fa-hand-o-right" aria-hidden="true"></i>&nbsp;İbadethane</p>
                    </div>
                </div>
                <div class="urundis wow fadeInUp" style="width: 100%!important;">
                    <div class="col-md-12">
                        <p class="product-title"><i class="fa fa-hand-o-right" aria-hidden="true"></i>&nbsp;Depo-Antrepo</p>
                    </div>
                </div>
                <div class="urundis wow fadeInUp" style="width: 100%!important;">
                    <div class="col-md-12">
                        <p class="product-title"><i class="fa fa-hand-o-right" aria-hidden="true"></i>&nbsp;Stadyum</p>
                    </div>
                </div>
                <div class="urundis wow fadeInUp" style="width: 100%!important;">
                    <div class="col-md-12">
                        <p class="product-title"><i class="fa fa-hand-o-right" aria-hidden="true"></i>&nbsp;Spor Salonu</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-12 wow fadeIn">
        <div class="div_ortala">
            <div class="bg_dis">
                <div class="urundis_title wow fadeIn">
                    <h3 class="txt_color2">Neden Aes Isı Sistemleri</h3>
                </div>
                <div class="urundis_title hr txt_color1 wow fadeIn"></div>
                <div class="urundis wow fadeInUp" style="width: 100%!important; box-shadow: none!important;">
                    <div class="col-md-12">
                        <p class="product-title" style="font-family: monospace!important; font-size: 18px!important; font-weight: 600!important; letter-spacing: 1px!important;"><i class="fa fa-bookmark" aria-hidden="true"></i>Tasarım</p>
                        <p class="product-title">Uzun yıllar kullanmanız için ısı değişimi ve neme dayanıklı özel 1300 °C’lik boya ile boyanmıştır.</p>
                    </div>
                </div>
                <div class="urundis wow fadeInUp" style="width: 100%!important; box-shadow: none!important;">
                    <div class="col-md-12">
                        <p class="product-title" style="font-family: monospace!important; font-size: 18px!important; font-weight: 600!important; letter-spacing: 1px!important;"><i class="fa fa-bookmark" aria-hidden="true"></i>Özel Seramik Plaka</p>
                        <p class="product-title">Yüksek yanma ve ışınıma sahip İspanyol malı seramik ile maksimum verim.</p>
                    </div>
                </div>
                <div class="urundis wow fadeInUp" style="width: 100%!important; box-shadow: none!important;">
                    <div class="col-md-12">
                        <p class="product-title" style="font-family: monospace!important; font-size: 18px!important; font-weight: 600!important; letter-spacing: 1px!important;"><i class="fa fa-bookmark" aria-hidden="true"></i>Opsiyonel Kademeli Yakma Sistemi</p>
                        <p class="product-title">Düşük veya yüksek kademli yakma sistemi ile havanın sıcaklığına göre istenilen sıcaklık konforu rahatlıkla sağlanabilir.</p>
                    </div>
                </div>
                <div class="urundis wow fadeInUp" style="width: 100%!important; box-shadow: none!important;">
                    <div class="col-md-12">
                        <p class="product-title" style="font-family: monospace!important; font-size: 18px!important; font-weight: 600!important; letter-spacing: 1px!important;"><i class="fa fa-bookmark" aria-hidden="true"></i>Opsiyonel Uzaktan Kumanda</p>
                        <p class="product-title">Opsiyonel olarak sunulan uzaktan kumanda ile rahat ve kolay kullanım.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-12 wow fadeIn">
        <div class="div_ortala">
            <div class="bg_dis">
                <div class="urundis_title wow fadeIn">
                    <h3 class="txt_color2">Çalışma Alanlarımız</h3>
                </div>
                <div class="urundis_title hr txt_color1 wow fadeIn"></div>
               <%-- <div class="urundis wow fadeInUp" style="width: 100%!important; box-shadow: none!important">
                    <div class="col-md-12">
                        <p class="product-title">Ürünlerimiz çok yakında eklenecektir.</p>
                    </div>
                </div>--%>
                <div class="urundis wow fadeInUp"><div class="col-md-12 urun_gorsel"><a href="/calismaAlanlari/9.jpg"><img src="/calismaAlanlari/9.jpg" /></a></div></div>
                <div class="urundis wow fadeInUp"><div class="col-md-12 urun_gorsel"><a href="/calismaAlanlari/8.jpg"><img src="/calismaAlanlari/8.jpg" /></a></div></div>
                <div class="urundis wow fadeInUp"><div class="col-md-12 urun_gorsel"><a href="/calismaAlanlari/1.jpg"><img src="/calismaAlanlari/1.jpg" /></a></div></div>
                <div class="urundis wow fadeInUp"><div class="col-md-12 urun_gorsel"><a href="/calismaAlanlari/7.jpg"><img src="/calismaAlanlari/7.jpg" /></a></div></div>
                <div class="urundis wow fadeInUp"><div class="col-md-12 urun_gorsel"><a href="/calismaAlanlari/2.jpg"><img src="/calismaAlanlari/2.jpg" /></a></div></div>
                <div class="urundis wow fadeInUp"><div class="col-md-12 urun_gorsel"><a href="/calismaAlanlari/3.jpg"><img src="/calismaAlanlari/3.jpg" /></a></div></div>
                <div class="urundis wow fadeInUp"><div class="col-md-12 urun_gorsel"><a href="/calismaAlanlari/4.jpg"><img src="/calismaAlanlari/4.jpg" /></a></div></div>
                <div class="urundis wow fadeInUp"><div class="col-md-12 urun_gorsel"><a href="/calismaAlanlari/5.jpg"><img src="/calismaAlanlari/5.jpg" /></a></div></div>
                <div class="urundis wow fadeInUp"><div class="col-md-12 urun_gorsel"><a href="/calismaAlanlari/6.jpg"><img src="/calismaAlanlari/6.jpg" /></a></div></div>
                <%--<asp:Repeater ID="rpurunler" runat="server">
                    <ItemTemplate>
                        <div class="urundis wow fadeInUp">
                            <div class="col-md-12 urun_gorsel"><a href="/<%#Seo.urlseo(Eval("UrunAdi").ToString()) %>-detay-<%#Eval("UrunID") %>">
                                <img src="/urunler/thump/<%#Eval("thump") %>" /></a></div>
                            <div class="col-md-12">
                                <p class="product-title"><a href="/<%#Seo.urlseo(Eval("UrunAdi").ToString()) %>-detay-<%#Eval("UrunID") %>"><%#Eval("UrunAdi") %></a></p>
                                <p class="product-subtitle"><a href="#"><%#Eval("KategoriAdi") %></a></p>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>--%>
            </div>
        </div>
    </div>
    <div class="col-md-12 wow fadeIn">
        <div class="div_ortala">
            <div class="bg_dis" style="margin-bottom: 0px">
                <div class="grid-wrapper">
                    <div class="line line-1"></div>
                    <div class="line line-2"></div>
                    <div class="line line-3"></div>
                    <div class="line line-4"></div>
                </div>
                <div class="row align-items-center">
                    <div class="col-lg-11 div_ortala">
                        <div class="col-lg-6">
                            <div class="faq-custom-col">
                                <div class="section-title-wrap">

                                    <h3 class="heading wow fadeIn">
                                        <asp:Literal ID="ltrlBaslik" runat="server"></asp:Literal></h3>

                                    <p class="text mt-30 wow fadeIn">
                                        <asp:Literal ID="ltrlYazi" runat="server"></asp:Literal>
                                    </p>

                                    <div class="form-group section-space--mt_60">
                                        <asp:Button ID="btn1" runat="server" class="btn primary shadow" PostBackUrl="/kurumsal" BorderStyle="None" Style="border-radius: 30px" Text="DETAYLI BİLGİ" />

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 text-center">
                            <div class="rv-video-section">

                                <div class="col-md-9 div_ortala wow fadeInRight">
                                    <img alt="" class="img-circle shadow" style="width: 100%" src="/img/corporate.jpg">
                                    <div style="height: 20px; width: 100%"></div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <link href="../owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="../owl-carousel/owl.theme.css" rel="stylesheet">
    <div class="col-md-12 wow fadeIn">
        <div class="div_ortala">
            <%--<div class="bg_dis" style="min-height: auto; padding-top: 0">
                <div class="page-top-info wow fadeIn" style="padding: 90px 0px 70px; border-radius: 10px;">
                    <div class="container wow fadeInLeft">
                        <div class="col-md-8">
                            <h4 style="text-transform: inherit!important">Isı yalıtım ihtiyaçlarınıza hemen çözüm bulmak ister misiniz?<br />
                            </h4>
                        </div>
                        <div class="col-md-4 form-group"><a href="/" class="btn primary shadow" style="width: 100%"><i class="fa fa-whatsapp" aria-hidden="true"></i>Whatsapp</a></div>

                    </div>
                </div>
            </div>--%>
        </div>
    </div>
    <%--<div class="col-md-12 wow fadeIn">
            <div class="div_ortala">
                <div class="bg_dis">
                    <div class="urundis_title wow fadeIn">
                        <h3 class="txt_color2">Referanslarımıza Göz Atın</h3>
                    </div>
                    <div class="urundis_title hr txt_color1 wow fadeIn">Referanslar</div>
                    <div id="owl-demo" class="owl-carousel">
                        <asp:Repeater ID="rp" runat="server">
                            <ItemTemplate>
                                <div class="item">
                                    <img class="lazyOwl" data-src="/referanslar/<%#Eval("ResimAdi") %>" alt="Lazy Owl Image" /></div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>--%>
    <script src="../assets/js/jquery-1.9.1.min.js"></script>
    <script src="../owl-carousel/owl.carousel.js"></script>

    <script>
        $(document).ready(function () {


            $("#owl-demo").owlCarousel({

                items: 4,
                lazyLoad: true,
                navigation: true
            }, $(".owl-prev").text = "",
                $(".owl-next").text = "");

        });
    </script>
    <%--<div class="col-md-11 div_ortala">

            <div class="col-md-4 wow fadeInLeft">
                <div class="material_box">
                    <div class="material_box_header dis_color3">
                        <span><i class="fa fa-commenting" aria-hidden="true"></i> Blog</span>
                    </div>
                </div>
            </div>
            <div class="bg_dis">

                <div class="bosluk"></div>
                <section class="category-section ">

                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="grid-wrapper" style="z-index: 0;">
                                    <div class="line line-1" ></div>
                                    <div class="line line-2"></div>
                                    <div class="line line-3"></div>
                                    <div class="line line-4"></div>
                                </div>
                                <asp:Repeater ID="rptrblog" runat="server">
                                    <ItemTemplate>
                                          <a href="/<%#Seo.urlseo(Eval("BlogAdi").ToString()) %>/blogu/<%#Eval("BlogID") %>" title="<%#Eval("BlogAdi") %>">
                                        <div class="col-lg-6 float-left wow fadeInUp">
                                            <figure class="overlay overlay4">
                                              <span class="bg"></span><span class="bg"></span>
                                                    <img src="/Bloglar/thump/<%#Eval("thump") %>" alt="<%#Eval("BlogAdi") %>">
                                                <figcaption class="d-flex text-left">
                                                    <div class="align-self-end mt-auto">
                                                        <div class="meta"><span class="date"><%#Eval("tarih") %></span></div>
                                                        <h2 class="post-title"><%#Eval("BlogAdi") %></h2>
                                                    </div>
                                                </figcaption>
                                            </figure>
                                        </div></a>


                                    </ItemTemplate>
                                </asp:Repeater>

                            </div>

                        </div>
                    </div>
                </section>

            </div>
        </div>--%>
</asp:Content>

