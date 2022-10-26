<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="BlogDetay.aspx.cs" Inherits="BlogDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #slider{padding:0}
        .col-lg-12,.col-lg-6,.col-lg-8,.col-lg-4{float:left}
        .filter-widget{margin-bottom:35px!important;margin-top:20px!important}
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cnticerik" Runat="Server">
  
   <div class="page-top-info wow fadeIn">
		<div class="container wow fadeInLeft">
			<h4>Blog Detayı<br></h4>
			<div class="site-pagination">
				<a href="/">Anasayfa</a> /
				<a href="#">Blog Detayı</a> /
			</div>
		</div>
	</div>
  <div class="col-md-11 div_ortala">
    <div class="bg_dis">
                 
 <div class="container">
			<div class="row">
				<div class="col-sm-9">
                    <div style="width:100%; padding-bottom:30px;"><asp:Literal ID="ltrl" runat="server"></asp:Literal><hr /></div>
                <asp:Repeater ID="rptr" runat="server">
                        <ItemTemplate>
         		
					<div class="blog-post-area">
						<h4 class="title text-center"><%#Eval("BlogAdi") %></h2>
						<div class="single-blog-post" style="padding:15px">
                            
							<%#Eval("Detay") %>
			
						</div>
                            <div class="col-lg-12">
                                 <div class="col-lg-4 yuzdeyuz"  style="text-align:left;"><span>Tarih: </span> <%#Eval("Tarih") %></div> <div class="col-lg-8 yuzdeyuz"> <div class="col-lg-6 yuzdeyuz"  style="text-align:right;"><span>Yazar: </span> 	<%#Eval("Yazar") %></div> <div style="text-align:right;" class="col-lg-6v yuzdeyuz"><span>Okunma: </span>#	<%Response.Write(okuma); %></div></div>
                            </div>
					</div><!--/blog-post-area-->
                           </ItemTemplate>
					</asp:Repeater>
					
					<div class="col-lg-12">
                        <asp:Repeater ID="rprtetiket" runat="server" OnItemCommand="rprtetiket_ItemCommand" OnItemDataBound="rprtetiket_ItemDataBound">
                            <ItemTemplate>
                                <asp:Button ID="btnetiket" CssClass="btnetiket" runat="server"  CommandName="gonder" CommandArgument=""  />
                            </ItemTemplate>
                        </asp:Repeater>
					</div>
					  
    
                     </div>
					     <div class="col-sm-3">
				
 
						<div class="filter-widget">
						<h4>İlgili Yazılar<hr /></h4>
						<ul class="category-menu">
                                    <asp:Repeater ID="rpmenu" runat="server">
                                 <ItemTemplate>
                                      <li><a title="<%#Eval("BlogAdi") %>" href="../../<%#Seo.urlseo(Eval("BlogAdi").ToString()) %>/blogu/<%#Eval("BlogID") %>"><%#Eval("BlogAdi") %></a></li>
                                    </ItemTemplate>
					              </asp:Repeater>                 
                            </ul>
						</div><!--/category-products-->
					
					
							
						<div class="filter-widget">
						<h4>Blog Kategorileri<hr /></h4>
						<ul class="category-menu">
						
							          
                    <asp:Repeater ID="rptrsolkat" runat="server" OnItemDataBound="rptrsolkat_ItemDataBound">
                        <ItemTemplate>
                                <li><a title="<%#Eval("KategoriAdi") %>" href="../../<%#Seo.urlseo(Eval("KategoriAdi").ToString()) %>/bloglari/<%#Eval("KategoriID") %>"><%#Eval("KategoriAdi") %> <span class="pull-right">(<asp:Literal ID="ltrlkatrunsayisi" runat="server"></asp:Literal>)</span></a></li>

                        </ItemTemplate>
                    </asp:Repeater>
							
						</ul>
					</div>
				</div>
    <div class="bosluk"></div>
   </div></div>
</div>
</div>
</asp:Content>
