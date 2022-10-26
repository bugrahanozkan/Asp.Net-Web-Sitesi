<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="hakkimizda.aspx.cs" Inherits="hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cnticerik" Runat="Server">
    	<div class="page-top-info">
		<div class="container">
			<h4>Hakkımızda<br></h4>
			<div class="site-pagination">
				<a href="/">Anasayfa</a> /
				<a href="#">Hakkımızda</a> /
			</div>
		</div>
	</div>
       <div class="col-md-12">
                  <div class="div_ortala">
                      <div class="col-md-4 wow fadeInLeft">
                <div class="material_box">
                    <div class="material_box_header dis_color1">
                           <span><i class="fa fa-commenting" aria-hidden="true"></i> Hakkımızda</span>
                    </div>
                </div> </div>
            <div class="bg_dis">
                <div class="bosluk"></div>
                <div class="col-md-12">  <div class="col-md-12">
                <%Response.Write(yaz); %></div>
                </div>
                      </div></div>
           </div>
</asp:Content>

