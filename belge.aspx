<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="belge.aspx.cs" Inherits="belge" %>

<%@ Register Assembly="PdfViewer" Namespace="PdfViewer" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cnticerik" runat="Server">
    <!-- Page info -->
    <div class="page-top-info wow fadeIn">
        <div class="container wow fadeInLeft">
            <h4>Belgeler<br />
            </h4>
            <div class="site-pagination">
                <a href="/">Anasayfa</a> /
				<a href="#">BELGELER</a> /
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
                                <span><i class="fa fa-file-text" aria-hidden="true"></i>&nbsp;BELGELER</span>
                            </div>
                        </div>
                    </div>
                    <div class="bg_dis">
                        <!-- CONTENT START -->
                        <div class="bosluk"></div>
                        <section id="page-content" style="width: 80%; margin: 0 auto;">

                            <div id="about-us" class="container padding35">
                                <div class="row">
                                    <h4 style="font-family: monospace; font-size: 20px; letter-spacing: 1px; font-weight: 600;">BELGE-1</h4>
                                    <cc1:ShowPdf ID="ShowPdf1" runat="server" FilePath="/belgeler/Belge.pdf" Height="700px" Width="100%" />
                                   
                                    <h4 style="font-family: monospace; font-size: 20px; letter-spacing: 1px; font-weight: 600; margin-top:25px;">BELGE-2</h4>
                                    <cc1:ShowPdf ID="ShowPdf2" runat="server" FilePath="/belgeler/1.pdf" Height="700px" Width="100%" style="margin-bottom:25px;"/>

                                    <h4 style="font-family: monospace; font-size: 20px; letter-spacing: 1px; font-weight: 600; margin-top:25px;">BELGE-3</h4>
                                    <cc1:ShowPdf ID="ShowPdf3" runat="server" FilePath="/belgeler/CE_BELGESİ.pdf" Height="700px" Width="100%" style="margin-bottom:25px;"/>
                                    
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



