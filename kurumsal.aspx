<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="kurumsal.aspx.cs" Inherits="kurumsal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cnticerik" runat="Server">

    <!-- Page info -->
    <div class="page-top-info wow fadeIn">
        <div class="container wow fadeInLeft">
            <h4>Hakkımızda<br>
            </h4>
            <div class="site-pagination">
                <a href="/">Anasayfa</a> /
				<a href="#">KURUMSAL</a> /
            </div>
        </div>
    </div>
    <div class="col-md-12">
        <div class="div_ortala">
            <div class="container">
                <div class="row">

                    <div class="col-md-4 wow fadeInLeft">
                        <div class="material_box">
                            <div class="material_box_header dis_color3">
                                <span><i class="fa fa-info" aria-hidden="true"></i>KURUMSAL</span>
                            </div>
                        </div>
                    </div>
                    <div class="bg_dis">
                        <!-- CONTENT START -->
                        <div class="bosluk"></div>
                        <section id="page-content" style="width: 80%; margin: 0 auto;">

                            <div id="about-us" class="container padding35">
                                <div class="row">
                                    <div class="col-md-6 text-center wow bounceIn">
                                        <div class="col-md-9">
                                            <img alt="" class="img-circle" style="width: 100%" src="/img/corporate.jpg">
                                            <div style="height: 20px; width: 100%"></div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 wow fadeInRight">

                                        <h2>BİZ <b>KİMİZ ?</b></h2>

                                        <div class="space20"></div>
                                        <div class="bizkimiz">
                                            <asp:Literal ID="ltrl" runat="server"></asp:Literal>
                                        </div>
                                    </div>
                                </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- CONTENT END -->
</asp:Content>

