<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Bloglar.aspx.cs" Inherits="Bloglar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
          <script src="/vendor/owl-carousel/owl.carousel.js"></script>

    <!-- EDURA JS REQUIRED ON ALL PAGES-->
        <link href="/vendor/owl-carousel/owl.theme.css" rel="stylesheet" />
   <link href="/vendor/owl-carousel/owl.transitions.css" rel="stylesheet" />
    <link href="/vendor/owl-carousel/owl.carousel.css" rel="stylesheet" />
 
 
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cnticerik" Runat="Server">

      <!-- Page info -->
	<div class="page-top-info wow fadeIn">
		<div class="container wow fadeInLeft">
			<h4>Blog<br></h4>
			<div class="site-pagination">
				<a href="/">Anasayfa</a> /
				<a href="#">Blog</a> /
			</div>
		</div>
	</div>
    <!-- Category section -->
   
     <div class="col-md-11 div_ortala">
                      <div class="col-md-4 wow fadeInLeft">
                <div class="material_box">
                    <div class="material_box_header dis_color3">
                           <span><i class="fa fa-commenting" aria-hidden="true"></i> Blog</span>
                    </div>
                </div> </div>
            <div class="bg_dis">
                 <div class="bosluk"></div>
    <section class="category-section ">
        <div class="container">
            <div class="row">
            <div class="col-lg-9">
                   <asp:Repeater ID="rptrblog" runat="server" >
                            <ItemTemplate>
                                <div class="col-lg-6 float-left wow fadeInUp">
                                <figure class="overlay overlay4">
                                        <a  href="/<%#Seo.urlseo(Eval("BlogAdi").ToString()) %>/blogu/<%#Eval("BlogID") %>" title="<%#Eval("BlogAdi") %>"><span class="bg"></span><span class="bg"></span>
                                            <img src="/Bloglar/thump/<%#Eval("thump") %>"  alt="<%#Eval("BlogAdi") %>"></a>
                                        <figcaption class="d-flex text-left">
                                            <div class="align-self-end mt-auto">
                                                <div class="meta"><span class="date"><%#Eval("tarih") %></span></div>
                                                <h2 class="post-title"><%#Eval("BlogAdi") %></h2>
                                            </div>
                                        </figcaption>
                                    </figure>
                                    </div>

              
                            </ItemTemplate>
                        </asp:Repeater>       

            </div>
                  <div class="col-lg-3">
                      <ul class="image-list">
                             <h3 class="widget-title">Popüler Bloglar<hr /></h3>
                          
                       <asp:Repeater ID="rptrsol" runat="server">
                            <ItemTemplate>
                                <li class="wow fadeInUp">
                                    <figure><a title="<%#Eval("BlogAdi") %>" href="/<%#Seo.urlseo(Eval("BlogAdi").ToString()) %>/blogu/<%#Eval("BlogID") %>">
                                        <img  src="/Bloglar/thump/<%#Eval("thump") %>" alt="<%#Eval("BlogAdi") %>"></a></figure>
                                    <div class="post-content">
                                        <h6 class="post-title"><a  href="/<%#Seo.urlseo(Eval("BlogAdi").ToString()) %>/blogu/<%#Eval("BlogID") %>"><%#Eval("BlogAdi") %></a> </h6>
                                        <div class="meta"><span class="date"><%#Eval("tarih") %></span></div>
                                    </div>
                                </li>
                                  </ItemTemplate>
                        </asp:Repeater>
                              
                            </ul>
                  </div>
    	</div>
            </div>
        </section>

   </div>
         </div>
</asp:Content>


