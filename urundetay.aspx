<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="urundetay.aspx.cs" Inherits="urundetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <link href="/css/flexslider.css" rel="stylesheet" />
    <script src="/js/jquery.flexslider.js"></script>
    <script src="/js/jquery.zoom.js"></script>

    	<script>
$(document).ready(function () {
 
  $("html, body").animate({
            scrollTop: 300
        }, 600);
  
  $('.zoom').zoom();

$(window).load(function () {
    $('.flexslider').flexslider({
        animation: "slide",
        controlNav: "thumbnails"
    });
});
});
</script>
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

    <div class="col-md-12 ">
                  <div class="div_ortala">
           <div class="col-md-6 wow fadeInLeft">
                <div class="material_box">
                    <div class="material_box_header dis_color3">
                           <span><i class="fa fa-book" aria-hidden="true"></i> <%Response.Write(katadi); %></span>
                    </div>
                </div> </div>
            <div class="bg_dis pad_top_none pad40">
                <div class="bosluk"></div>
  
            <div class="urundis_title hr txt_color1 wow fadeIn"> </div>  
                <div class="col-md-5 pad40">
                                       <div class="single-product-wrapper">
                                    <div class="product-images-wrapper">
                                      
                                        
                          <div class="flexslider">
					                    <ul class="slides">
                                            <asp:Repeater ID="rpslider" runat="server">
                                                <ItemTemplate>

						                    <li data-thumb="/Urunler/280/<%#Eval("ResimAdi") %>">
							                    <div class="thumb-image"><span class='zoom'> <img src="/Urunler/<%#Eval("ResimAdi") %>" data-imagezoom="true" class="img-responsive" style="width:80%"> </span></div>
						                    </li>

                                              </ItemTemplate>
                                            </asp:Repeater>
					                    </ul>
				                    </div>
                                    </div><!-- /.product-images-wrapper -->
                </div></div>
                            <div class="col-md-7 pad40">
                    <asp:Repeater ID="rptruruncek" runat="server" OnItemDataBound="rptruruncek_ItemDataBound">
                <ItemTemplate>
                    <div class="padding15">
                        <h4 class="product-title"><b><%#Eval("UrunAdi") %></b></h4>
                                    
                                       
                    </div>
                                    
                     <div class="satir_dis">
                      <div class="tbl_satir">
               <div class="tbl_sol_satir">Ürün Adı</div><div class="tbl_sag_satir"><p class="product-price"><%#Eval("UrunAdi") %></p></div></div>
			  <div class="tbl_satir">
               <div class="tbl_sol_satir">Ürün Kodu</div><div class="tbl_sag_satir">#<%#Eval("urunkodu") %></div></div>
                          <div class="tbl_satir">
               <div class="tbl_sol_satir">Marka</div><div class="tbl_sag_satir"><%#Eval("MarkaAdi") %></div>
			  </div>
                          <div class="tbl_satir">
               <div class="tbl_sol_satir">Sayfa Sayısı</div><div class="tbl_sag_satir"><%#Eval("Model") %></div></div>
                          <div class="tbl_satir">
               <div class="tbl_sol_satir">Stok Durumu</div><div class="tbl_sag_satir">Var</div></div>
                           <div class="tbl_satir">
               <div class="tbl_sol_satir">Kategorisi</div><div class="tbl_sag_satir">
                   <asp:Literal ID="ltrlkat" runat="server"></asp:Literal></div></div>

                          </div> 

            </div>
                    
                             <div class="col-md-12">
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item">
                            <a class="nav-link active" id="tab1" data-toggle="tab" href="#tab_pnl1" role="tab" aria-controls="tab_pnl1" aria-selected="true">Ürün Bilgisi</a>
                            </li>

                            </ul>
                            <div class="tab-content" id="tabcontent">
                            <div class="tab-pane fade show pad20 active" style="padding-left:0" id="tab_pnl1" role="tabpanel" aria-labelledby="tab_pnl1">
                            <%#Eval("Ozellikleri") %>
                            </div>
                            </div>

                            </div> 
                  </ItemTemplate>
                            </asp:Repeater>
          </div>
               </div></div>
        </div>
</asp:Content>

