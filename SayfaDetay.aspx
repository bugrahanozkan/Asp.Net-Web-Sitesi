<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SayfaDetay.aspx.cs" Inherits="SayfaDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        #slider {
            padding: 0;
        }
    </style>
    <script src="/js/jquery.min.js"></script>
    <link rel="stylesheet" href="/css/flexslider.css" type="text/css" media="screen" property="" />
    <link rel="stylesheet" href="/css/swipebox.css" type="text/css" media="all" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cnticerik" runat="Server">
   <div class="page-top-info wow fadeIn">
		<div class="container wow fadeInLeft">
            <h4>Hizmetler<br>
            </h4>
            <div class="site-pagination">
                <a href="/">Anasayfa</a> /
				<a href="#"><%Response.Write(sayfaadi);%></a> /
            </div>
        </div>
    </div>
  
    <div class="container">
        <div class="row">
              <div class="col-md-11 div_ortala">
            <div class="bg_dis">
              
                
                <div class="col-sm-9">
                    <asp:Literal ID="ltrl" runat="server"></asp:Literal>
                    <div class="bosluk1"></div>
                    <asp:Repeater ID="rptr" runat="server">
                        <ItemTemplate>
                            <div class="blog-post-area">
                                <h4 class="title text-center"><%#Eval("SayfaAdi") %></h2>
					
                                    <div class="single-blog-post" style="padding: 15px">

                                        <%#Eval("Detay") %>
                                    </div>
                            </div>
                            <!--/blog-post-area-->
                            <div class="fixedteklifiste product_cart_button"><a style="display: block; color: #fff; padding-top: 1px; height: 100%;" href="../../teklif-iste">Teklif İste</a></div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <div class="col-sm-12">
                    <asp:Panel ID="pnlgaleri" runat="server" Style="100%" Visible="false">

                        <div class="row">
                            <div class="col text-center">
                                <div class="section_title new_arrivals_title">
                                    <h3>Sayfa Galerisi<hr></h3>
                                </div>
                            </div>
                        </div>

                        <!-- Portfolio -->
                        <div class="portfolio" id="specials">
                            <div class="tabs tabs-style-bar">
                                <div class="content-wrap">
                                    <!-- Tab-1 -->
                                    <section id="section-bar-1" class="content-current">
                                        <div class="gallery-grids">
                                            <asp:Repeater ID="rptrgeleri" runat="server">
                                                <ItemTemplate>

                                                    <div class="col-sm-6 gallery-top float-left" style="
    padding-right: 5px;">
                                                        <a href="/Sayfalar/<%#Eval("ResimAdi") %>" class="swipebox">
                                                            <figure class="effect-apollo">
                                                                <img src="/Sayfalar/280/<%#Eval("ResimAdi") %>" alt="<%#Eval("ResimAdi") %>" class="img-responsive">
                                                                <figcaption></figcaption>
                                                            </figure>
                                                        </a>
                                                    </div>

                                                </ItemTemplate>
                                            </asp:Repeater>

                                        </div>
                                    </section>
                                    <!-- //Tab-1 -->
                                </div>
                            </div>
                            <!-- //Tabs -->

                        </div>
                    </asp:Panel>
                </div>
                <div class="col-sm-3">
                    <ul class="image-list">
                        <h4 class="widget-title">Diğer Hizmetlerimiz<hr />
                        </h4>
                        <asp:Repeater ID="rptrsol" runat="server">
                            <ItemTemplate>
                                <li>
                                    <figure>
                                        <a title="<%#Eval("SayfaAdi") %>" href="/hizmetler/<%#Seo.urlseo(Eval("SayfaAdi").ToString()) %>-hizmeti-<%#Eval("SayfaID") %>">
                                            <img src="/sayfalar/thump/<%#Eval("thump") %>" alt="<%#Eval("SayfaAdi") %>"></a>
                                    </figure>
                                    <div class="post-content">
                                        <h6 class="post-title"><a href="/<%#Seo.urlseo(Eval("SayfaAdi").ToString()) %>/portfoy/<%#Eval("SayfaID") %>"><%#Eval("SayfaAdi") %></a> </h6>
                                        <div class="meta"><span class="date"><%#Eval("KategoriAdi") %></span></div>
                                    </div>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
</div>
            </div>

            <div class="bosluk"></div>

            <!-- Swipe-Box-JavaScript -->
            <script src="/js/jquery.swipebox.min.js"></script>
            <script type="text/javascript">
                jQuery(function ($) {
                    $(".swipebox").swipebox();
                });
            </script>
            <!-- //Swipe-Box-JavaScript -->
        </div>
    </div>

</asp:Content>




