<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="urungrup.aspx.cs" Inherits="urungrup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cnticerik" Runat="Server">
    
    	<div class="page-top-info wow fadeIn">
		<div class="container wow fadeInLeft">
			<h4>Ürünlerimiz<br></h4>
			<div class="site-pagination">
				<a href="/">Anasayfa</a> /
				<a href="#">Ürünlerimiz</a> /
			</div>
		</div>
            </div>

    <div class="col-md-12">
                  <div class="div_ortala">
           <div class="col-md-6 wow fadeInLeft">
                <div class="material_box">
                    <div class="material_box_header dis_color3">
                           <span><i class="fa fa-cart-plus" aria-hidden="true"></i> Ürünlerimiz</span>
                    </div>
                </div> </div>
            <div class="bg_dis pad_top_none">
                <div class="bosluk"></div>
                 <div class="bosluk2"></div>
                <asp:Repeater ID="rpkat" runat="server" OnItemDataBound="rpkat_ItemDataBound">
                    <ItemTemplate>

             
    <div class="urundis_title wow fadeIn"><h3 class="txt_color2"> <%#Eval("KategoriAdi") %></h3></div>
            <div class="urundis_title hr txt_color1 wow fadeIn"></div>

                <asp:Repeater ID="rpurunler" runat="server">
                    <ItemTemplate>

            
           <div class="urundis wow fadeInUp"> 
               <div class="col-md-12 urun_gorsel"><a href="/<%#Seo.urlseo(Eval("UrunAdi").ToString()) %>-detay-<%#Eval("UrunID") %>"><img src="/urunler/thump/<%#Eval("thump") %>" /></a></div>
               <div class="col-md-12">
                <p class="product-title"><a href="/<%#Seo.urlseo(Eval("UrunAdi").ToString()) %>-detay-<%#Eval("UrunID") %>"><%#Eval("UrunAdi") %></a></p>
                <p class="product-subtitle"><asp:Literal ID="ltrl" runat="server"></asp:Literal></p>                                                                                
                </div>
            </div>
                       
                  </ItemTemplate>
                </asp:Repeater>

                         <div class="bosluk1"></div>
           </ItemTemplate>
                </asp:Repeater>
            </div>
          </div>
                </div>
    
</asp:Content>

