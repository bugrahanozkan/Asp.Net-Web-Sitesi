<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<%@ Register Assembly="GoogleReCaptcha" Namespace="GoogleReCaptcha" TagPrefix="cc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cnticerik" runat="Server">

    <div class="page-top-info wow fadeIn">
        <div class="container wow fadeInLeft">
            <h4>İLETİŞİM<br>
            </h4>
            <div class="site-pagination">
                <a href="/">Anasayfa</a> /
				<a href="#">İLETİŞİM</a> /
            </div>
        </div>
    </div>
    <div class="col-md-12">
        <div class="col-md-4 wow fadeInLeft">
            <div class="material_box">
                <div class="material_box_header dis_color3">
                    <span><i class="fa fa-commenting" aria-hidden="true"></i>&nbsp;İLETİŞİM</span>
                </div>
            </div>
        </div>
        <div class="bg_dis">
            <!-- Start Contact -->
            <section id="contact-us" class="contact-us section" style="padding-bottom: 0">
                <div class="container">
                    <div class="row">
                        <!-- Contact Form -->
                        <div class="col-md-8 col-sm-6 col-xs-12 wow fadeInLeft">

                            <div class="row">
                                <div class="form-group col-md-4">
                                    <asp:TextBox ID="txtad" runat="server" placeholder="Ad ve Soyad*"></asp:TextBox>

                                </div>
                                <div class="form-group col-md-4">
                                    <asp:TextBox ID="txtemail" runat="server" placeholder="E-Mail*"></asp:TextBox>
                                </div>
                                <div class="form-group col-md-4">
                                    <asp:TextBox ID="txttel" runat="server" placeholder="Telefon*"></asp:TextBox>
                                </div>
                                <div class="form-group col-md-12">
                                    <asp:TextBox ID="txtkonu" runat="server" placeholder="Konu*"></asp:TextBox>
                                </div>

                                <div class="form-group col-md-12">
                                    <asp:TextBox ID="txtaciklama" runat="server" TextMode="MultiLine" Height="250" placeholder="Açıklama*"></asp:TextBox>


                                </div>
                                <div class="form-group col-md-12">
                                    <div class="form-group col-md-6">
                                        <cc2:GoogleReCaptcha ID="ctrl1GoogleReCaptcha" runat="server" PublicKey="6LdqQS4cAAAAAKm5WHrjPvnQIG7PpXqXmYuLm6Qb" PrivateKey="6LdqQS4cAAAAAHq074N71e5vvViN7EJGuLyZPS2t" />
                                    </div>
                                    <div class="form-group col-md-6">
                                        <asp:Button ID="btngonder" runat="server" Text="Gönder" class="btn primary" BorderStyle="None" OnClick="btngonder_Click" />
                                    </div>
                                </div>
                                <div class="form-group col-xs-12">
                                    <asp:Label ID="lblbilgi" runat="server" Text="" ForeColor="red"></asp:Label>
                                </div>
                            </div>

                        </div>
                        <!--/ End Contact Form -->
                        <!-- Contact Address -->
                        <div class="col-md-4 col-sm-6 col-xs-12 wow fadeInRight">
                            <div class="contact-address">
                                <div class="contact">
                                    <h2>BİZE<b> ULAŞIN</b></h2>
                                    <!-- Single Address -->
                                    <div class="single-address">
                                        <asp:Literal ID="ltrl" runat="server"></asp:Literal>
                                    </div>
                                    <!--/ End Single Address -->

                                </div>
                            </div>
                        </div>
                        <!--/ End Contact Address -->
                    </div>
                </div>
            </section>
            <!--/ End Contact -->
            <!-- Map Section -->
            <div class="map-section">
                <%--<asp:Literal ID="ltrliframe" runat="server"></asp:Literal>--%>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d753.0711797947907!2d28.737521029215443!3d40.97524589870649!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14caa1bcbc512ad5%3A0xee6f74fe3ef72518!2zRGVuaXprw7bFn2tsZXIsIERpbGF2ZXIgU2suIE5vOjcsIDM0MzE1IEF2Y8SxbGFyL8Swc3RhbmJ1bA!5e0!3m2!1str!2str!4v1630184792136!5m2!1str!2str" width="100%" height="450" style="border: 0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
        </div>
    </div>





    <!--/ End Map Section -->
</asp:Content>

