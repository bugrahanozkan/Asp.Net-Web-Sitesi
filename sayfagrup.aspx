<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="sayfagrup.aspx.cs" Inherits="sayfagrup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cnticerik" runat="Server">
    <div class="page-top-info wow fadeIn">
        <div class="container wow fadeInLeft">
            <h4>Hizmetlerimiz<br>
            </h4>
            <div class="site-pagination">
                <a href="/">Anasayfa</a> /
				<a href="#">Hizmetlerimiz</a> /
            </div>
        </div>
    </div>

    <div class="col-md-12">
        <div class="div_ortala">
            <div class="col-md-4 wow fadeInLeft">
                <div class="material_box">
                    <div class="material_box_header dis_color3">
                        <span><%Response.Write(yaz); %></span>
                    </div>
                </div>
            </div>
            <div class="col-md-4 wow fadeInLeft">
                &nbsp;
            </div>


            <div class="bg_dis">
                <div class="div_ortala">
                    <div class="bosluk"></div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="grid-wrapper" style="z-index: 0;">
                                    <div class="line line-1" ></div>
                                    <div class="line line-2"></div>
                                    <div class="line line-3"></div>
                                    <div class="line line-4"></div>
                                </div>
                                <asp:Repeater ID="rpsayfa" runat="server">
                                    <ItemTemplate>
                                          <a href="/hizmetler/<%#Seo.urlseo(Eval("SayfaAdi").ToString()) %>-hizmeti-<%#Eval("SayfaID") %>" title="<%#Eval("SayfaAdi") %>">
                                        <div class="col-lg-6 float-left wow fadeInUp">
                                            <figure class="overlay overlay4">
                                              <span class="bg"></span><span class="bg"></span>
                                                    <img src="/sayfalar/thump/<%#Eval("thump") %>" alt="<%#Eval("SayfaAdi") %>">
                                                <figcaption class="d-flex text-left">
                                                    <div class="align-self-end mt-auto">
                                                        <div class="meta"><span class="date"><%Response.Write(yaz); %></span></div>
                                                        <h2 class="post-title"><%#Eval("SayfaAdi") %></h2>
                                                    </div>
                                                </figcaption>
                                            </figure>
                                        </div></a>


                                    </ItemTemplate>
                                </asp:Repeater>

                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

