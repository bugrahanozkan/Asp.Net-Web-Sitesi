<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="haberler.aspx.cs" Inherits="haberler" %>

<%@ Register Assembly="GoogleReCaptcha" Namespace="GoogleReCaptcha" TagPrefix="cc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cnticerik" runat="Server">

    <!-- Page info -->
    <div class="page-top-info wow fadeIn">
        <div class="container wow fadeInLeft">
            <h4>BAYİLER<br />
            </h4>
            <div class="site-pagination">
                <a href="/">Anasayfa</a> /
				<a href="#">Bayiler</a> /
            </div>
        </div>
    </div>
    <!-- Page info end -->
    <div class="col-md-12">
        <div class="div_ortala">
            <div class="col-md-4 wow fadeInLeft">
                <div class="material_box">
                    <div class="material_box_header dis_color3">
                        <span><i class="fa fa-thumb-tack" aria-hidden="true"></i>&nbsp;BAYİLER</span>
                    </div>
                </div>
            </div>
            <div class="bg_dis" style="background-image: url('../img/turkeymapopak2.png');">
                <div class="bosluk"></div>
                <!-- Start Contact -->
                <section id="contact-us" class="contact-us section" style="padding: 0px;">
                    <div class="container">
                        <h4 style="font-family: monospace; font-size: 20px; letter-spacing: 1px;font-weight:600;">Yetkili bayimiz olmak için aşağıdaki bilgileri doldurunuz.<br/>Bize ulaşın: +90 (534) 668 70 54</h4>
                        <br />
                        <div class="row">
                            <!-- Contact Form -->
                            <div class="col-md-12 col-sm-12 col-xs-12 wow fadeInLeft">

                                <div class="row">
                                    <div class="form-group col-md-4">
                                        <asp:TextBox ID="txtfirmaadi" runat="server" placeholder="Firma Adı*" style="border: 1px solid rgb(141 141 141);"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-4">
                                        <asp:TextBox ID="txtyetkiliadi" runat="server" placeholder="Yetkili Adı*" style="border: 1px solid rgb(141 141 141);"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-4">
                                        <asp:TextBox ID="txttel" runat="server" placeholder="Telefon*" style="border: 1px solid rgb(141 141 141);"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <asp:TextBox ID="txtfirmaadresi" runat="server" placeholder="Firma Adresi*" style="border: 1px solid rgb(141 141 141);"></asp:TextBox>
                                    </div>
                                    <h4 style="font-family: monospace;  font-size: 15px; letter-spacing: 1px; font-weight: 600; margin: 0 15px 5px 15px;">Hizmet Verdiğiniz İller*:</h4>
                                    <div class="iller" style="height: 250px;padding-top: 10px; overflow-x: hidden; overflow-y: scroll; width: 100%; margin: 0px 15px; border: 1px solid #a4a4a4;background:white;" >
                                        <div class="form-group col-md-12">
                                            <asp:CheckBoxList ID="cbIller" runat="server"></asp:CheckBoxList>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12" style="margin-top: 25px!important">
                                        <div class="form-group col-md-6">
                                            <cc2:GoogleReCaptcha ID="ctrl1GoogleReCaptcha" runat="server" PublicKey="6LdqQS4cAAAAAKm5WHrjPvnQIG7PpXqXmYuLm6Qb" PrivateKey="6LdqQS4cAAAAAHq074N71e5vvViN7EJGuLyZPS2t" />
                                        </div>
                                        <div class="form-group col-md-6">
                                            <asp:Button ID="btngonder" runat="server" Text="Gönder" class="btn primary" BorderStyle="None" OnClick="btngonder_Click" />
                                        </div>
                                    </div>
                                </div>
                                <!--/ End Contact Form -->
                            </div>
                        </div>
                    </div>
                </section>
                <!--/ End Contact -->
            </div>
        </div>
        <div style="height: 40px; width: 100%"></div>
    </div>
    <!-- CONTENT END -->
</asp:Content>

