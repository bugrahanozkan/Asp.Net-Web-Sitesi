<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="galeriler.aspx.cs" Inherits="galeriler" %>

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
<asp:Content ID="Content2" ContentPlaceHolderID="cnt_icerik" Runat="Server">
                        <div class="col-md-12">
                  <div class="div_ortala">
                      <div class="col-md-4 wow fadeInLeft">
                <div class="material_box">
                    <div class="material_box_header dis_color3">
                 <span><%Response.Write(fa_yaz); %></span> </div>
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
								<a href="/birimler/<%#Eval("ResimAdi") %>" class="swipebox">
									<figure class="effect-apollo">
										<img style="height: 171px!important" src="/birimler/280/<%#Eval("ResimAdi") %>" alt="Flavorful" class="img-responsive">
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

