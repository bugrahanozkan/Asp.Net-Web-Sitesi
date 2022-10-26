<%@ Page Language="C#" AutoEventWireup="true" CodeFile="error.aspx.cs" Inherits="error" %>

<!DOCTYPE HTML5>

<html xmlns="http://www.w3.org/1999/xhtml" lang="tr">
<head runat="server">
       
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
     <link href="/css/bootstrap.min.css" rel="stylesheet" />                 
    <title></title>
   <style>
  
.page_404{ padding:40px 0; background:#fff; font-family: 'Arvo', serif;
}

.page_404  img{ width:100%;}

.four_zero_four_bg{
 
 background-image: url(/img/404.gif);
    height: 400px;
    background-position: center;
 }
 
 
 .four_zero_four_bg h1{
 font-size:80px;
 }
 
  .four_zero_four_bg h3{
			 font-size:80px;
			 }
			 
			 .link_404{			 
	color: #fff!important;
    padding: 10px 20px;
    background: #39ac31;
    margin: 20px 0;
    display: inline-block;}
	.contant_box_404{ margin-top:-50px;}
   </style>
 
</head>
<body>
    <form id="form1" runat="server">


        <section class="page_404">
	<div class="col-sm-12 ">
		<div class="row">	
		<div class="col-sm-12 ">
		<div class="col-sm-12 col-sm-offset-1  text-center">
		<div class="four_zero_four_bg">
			<h1 class="text-center "><asp:Literal ID="ltrlkod" runat="server"></asp:Literal></h1>
		
		
		</div>
		
		<div class="contant_box_404">
		<h3 class="h2">
		 <asp:Literal ID="ltrlaciklama" runat="server"></asp:Literal>  
		</h3>
		

		<a href="/" class="link_404">Anasayfaya Git</a>
	</div>
		</div>
		</div>
		</div>
	</div>
</section>

    </form>
</body>
</html>
