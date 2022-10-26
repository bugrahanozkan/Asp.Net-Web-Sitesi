<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="haberdetay.aspx.cs" Inherits="haberdetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cnticerik" runat="Server">
    <div class="page-top-info wow fadeIn">
        <div class="container wow fadeInLeft">
            <h4>ÖLÇÜMLER<br/>
            </h4>
            <div class="site-pagination">
                <a href="/">Anasayfa</a> /
				<a href="#">Ölçüm Detay</a> /
            </div>
        </div>
    </div>
    <div class="col-md-12">
        <div class="div_ortala">
            <div class="col-md-4 wow fadeInLeft">
                <div class="material_box">
                    <div class="material_box_header dis_color3">
                        <span><i class="fa fa-newspaper-o" aria-hidden="true"></i> Ölçüm Detay</span>
                    </div>
                </div>
            </div>
            <div class="col-md-4 wow fadeInLeft">
                &nbsp;
            </div>
            <div class="col-md-4 wow fadeInRight">
                &nbsp;
            </div>

            <div class="bg_dis">
                <div class="bosluk"></div>
                <div class="col-md-9">
                    <asp:Repeater ID="rptrhaberdetay" runat="server">
                        <ItemTemplate>
                            <div class="col-md-12 pad_top_bot">
                                <img src="/haberler/thump/<%#Eval("thump") %>" class="img-responsive" />
                            </div>
                            <div class="services-content">
                                <h3 class="text-center"><%#Eval("haberadi") %></h3>
                                <div class="img-right">
                                    <div class="text">
                                        <h5 class="text-center"><i class="fa fa-calendar-o"></i><%#Eval("Tarih") %></h5>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <p><%#Eval("detay") %></p>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>

                </div>
                <div class="col-md-3" style="padding-right: 20px">
                    <div class="list-group">
                        <a href="#" class="list-group-item list-group-item-action active dis_color1" style="border: none">
                            <i class="fa fa-newspaper-o" aria-hidden="true"></i> Diğer Ölçümler
                        </a>
                        <asp:Repeater ID="rphaber" runat="server">
                            <ItemTemplate>
                                <a class="list-group-item list-group-item-action" href="/olcum/<%#Seo.urlseo(Eval("HaberAdi").ToString()) %>/<%#Eval("HaberID") %> "><i class="fa fa-angle-right fa-fw" aria-hidden="true"></i><%#Eval("HaberAdi") %></a>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <style>
        .list-group-item.active {
            background: #eb8a03;
        }
    </style>
</asp:Content>

