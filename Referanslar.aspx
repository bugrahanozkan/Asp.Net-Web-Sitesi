<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Referanslar.aspx.cs" Inherits="Referanslar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cnticerik" runat="Server">

    <!-- Page info -->
    <div class="page-top-info wow fadeIn">
        <div class="container wow fadeInLeft">
            <h4>Referanslarımız</h4>
            <div class="site-pagination">
                <a href="/">Anasayfa</a> /
				<a href="#">Referanslar</a> /
            </div>
        </div>
    </div>
    <!-- Page info end -->
    <div class="col-md-12">
        <div class="div_ortala">
            <div class="col-md-4 wow fadeInLeft">
                <div class="material_box">
                    <div class="material_box_header dis_color3">
                        <span><i class="fa fa-slack" aria-hidden="true"></i> REFERANSLAR</span>
                    </div>
                </div>
            </div>
            <div class="bg_dis">
                <div class="bosluk"></div>
                <div class="col-lg-10 ortala">
                    <div class="row">
                        <asp:Repeater ID="rptr" runat="server">
                            <ItemTemplate>

                                <div class="col-lg-3 col-sm-6 wow fadeIn" style="padding: 10px; text-align: center">
                                    <div class="product-item">
                                        <div class="pi-pic">

                                            <img src="/Referanslar/280/<%#Eval("ResimAdi") %>" alt="">
                                        </div>
                                        <div class="pi-text">

                                            <p><%#Eval("ReferansAdi") %></p>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>

                    </div>
                </div>
            </div>
        </div>
        <div style="height: 40px; width: 100%"></div>
        <!-- CONTENT END -->
</asp:Content>

