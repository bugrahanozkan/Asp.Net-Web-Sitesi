<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Galeri.aspx.cs" Inherits="Galeri" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
         <script src="/js/jquery.swipebox.min.js"></script> 
				<script type="text/javascript">
				  
					jQuery(function($) {
						$(".swipebox").swipebox();
					});
			</script>
    <link rel="stylesheet" href="/css/flexslider.css" type="text/css" media="screen" property="" />
    <link rel="stylesheet" href="/css/swipebox.css" type="text/css" media="all"/>
    <link href="/css/galeri.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cnticerik" Runat="Server">
    
      <!-- Page info -->
	<div class="page-top-info wow fadeIn">
		<div class="container wow fadeInLeft">
			<h4>Galeri<br></h4>
			<div class="site-pagination">
				<a href="/">Anasayfa</a> /
				<a href="#">Galeri</a> /
			</div>
		</div>
	</div>
    <!-- Category section -->

                        <div class="col-md-12">
                  <div class="div_ortala">
                      <div class="col-md-4 wow fadeInLeft">
                <div class="material_box">
                    <div class="material_box_header dis_color3">
                 <span><i class="fa fa-picture-o" aria-hidden="true"></i> Galeri</span> </div>
                </div> </div>
                      <div class="col-md-4 wow fadeInLeft">
                                        &nbsp;
                      </div>
                                  <div class="col-md-4 wow fadeInRight"> &nbsp;
         </div>
  
            <div class="bg_dis">

               <div class="bosluk"></div>
               
                                        <div class="div_ortala">

                       
                                           <div class="gallery-grids">
                             <asp:Repeater ID="rptrgeleri" runat="server">
                                <ItemTemplate>

							<div style="float:left" class="col-md-3 col-sm-3 gallery-top wow fadeInUp">
								<a href="/Resimler/<%#Eval("ResimAdi") %>" class="swipebox">
									<figure class="effect-apollo">
										<img style="max-height: 363px!important" src="/Resimler/280/<%#Eval("ResimAdi") %>" alt="Flavorful" class="img-responsive">
										<figcaption></figcaption>
									</figure>
								</a>
							</div>
	
                                </ItemTemplate>
                            </asp:Repeater>
						
						</div>
       </div></div>
                </div>
                      </div>
                           
    
</asp:Content>


