<html>
<head>
<title>User Feedback Analysis System</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<!-- CuFon: Enables smooth pretty custom font rendering. 100% SEO friendly. To disable, remove this section -->
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<%@page language="java" import="java.sql.*;"%>
<!-- CuFon ends -->
<style type="text/css">
<!--
.style1 {
	font-size: 24px;
	font-weight: bold;
}
.style5 {
	color: #FFFFFF;
	font-size: 12px;
	font-style: italic;
	font-weight: bold;
}
.style6 {
	font-size: 12px;
	color: #FFFFFF;
}
.style7 {color: #CCFF00; font-size: 12px;}
-->
</style>
</head>
<body>
<div id="wrapper">
<div class="main">

<div class="header">
<div class="header_resize">
<div class="logo">
<h1><a href="Index.jsp"><span>USER FEEDBACK</span> Analysis System <small>Using NLP and AI</small></a></h1>
</div>

<label>
      <div align="right" class="style1"> <span class="style5">Welcome</span> <span class="style7">Admin</span>      <a href="Login.jsp" class="style6 style1" color:"white"><em><strong>Sign Out</strong></em></a>       </div>
      </label>
      
<div class="searchform">
<form id="formsearch" name="formsearch" method="post" action="">
<input name="button_search" src="images/search_btn.gif"
	class="button_search" type="image" /> <span><input
	name="editbox_search" class="editbox_search" id="editbox_search"
	maxlength="80" value="Search" type="text" /></span></form>
</div>
<div class="clr"></div>
</div>
</div>

 <nav>
	<ul>
		

		<li><a href="Mobiles.jsp?Category=Mobile&productCategory=Apple">Add Product</a>
			<ul>
				<li><a href="Mobiles.jsp?Category=Mobile&productCategory=Apple">Mobiles</a></li>
				<li><a href="Cameras.jsp?Category=Camera&productCategory=Nikon" >Cameras</a></li>
				<li><a href="Computers.jsp?Category=Computer&productCategory=HP">Computers</a></li>
				<li><a href="Television.jsp?Category=Television&productCategory=Samsung">Television</a></li>
				<li><a href="Memory.jsp?Category=Memory&productCategory=WD">Memory</a></li>				
			</ul>
		</li>
				
		<<li><a href="MobModify.jsp?Category=Mobile&productCategory=Apple">Modify/Delete Product</a>
		<ul>
			<li><a href="MobModify.jsp?Category=Mobile&productCategory=Apple">Mobiles</a>
				<ul>
				<li><a href="MobModify.jsp?Category=Mobile&productCategory=Apple">Apple</a></li>
				<li><a href="MobModify.jsp?Category=Mobile&productCategory=Samsung">Samsung</a></li>
				<li><a href="MobModify.jsp?Category=Mobile&productCategory=Nokia">Nokia</a></li>
				<li><a href="MobModify.jsp?Category=Mobile&productCategory=HTC">HTC</a></li>
				<li><a href="MobModify.jsp?Category=Mobile&productCategory=Sony">Sony</a></li>
				<li><a href="MobModify.jsp?Category=Mobile&productCategory=BlackBerry">BlackBerry</a></li>
		</ul></li>
		
		<li><a href="CamModify.jsp?Category=Camera&productCategory=Nikon" >Cameras</a>
		<ul>
    			<li><a href="CamModify.jsp?Category=Camera&productCategory=Nikon">Nikon</a></li>
   				<li><a href="CamModify.jsp?Category=Camera&productCategory=Canon" onClick="2">Canon</a></li>
    			<li><a href="CamModify.jsp?Category=Camera&productCategory=Sony" onClick="3">Sony</a></li>
				<li><a href="CamModify.jsp?Category=Camera&productCategory=Fujifilm" onClick="4">Fujifilm</a></li>
    			<li><a href="CamModify.jsp?Category=Camera&productCategory=Panasonic" onClick="5">Panasonic</a></li>
    			<li><a href="CamModify.jsp?Category=Camera&productCategory=Samsung" onClick="6">Samsung</a></li>
    	</ul></li>
    	<li><a href="CompModify.jsp?Category=Computer&productCategory=HP">Computers</a>
	<ul>
	<li><a href="CompModify.jsp?Category=Computer&productCategory=HP" >HP</a></li>
    <li><a href="CompModify.jsp?Category=Computer&productCategory=Apple" onClick="2">Apple</a></li>
    <li><a href="CompModify.jsp?Category=Computer&productCategory=Dell" onClick="3">Dell</a></li>
	<li><a href="CompModify.jsp?Category=Computer&productCategory=Lenovo" onClick="4">Lenovo</a></li>
    <li><a href="CompModify.jsp?Category=Computer&productCategory=Asus" onClick="5">Asus</a></li>
    <li><a href="CompModify.jsp?Category=Computer&productCategory=Sony" onClick="6">Sony</a></li>
	<li><a href="CompModify.jsp?Category=Computer&productCategory=Acer" onClick="7">Acer</a></li>
    <li><a href="CompModify.jsp?Category=Computer&productCategory=HCL" onClick="8">HCL</a></li>
	</ul>
</li>
<li><a href="TeleModify.jsp?Category=Television&productCategory=Samsung">Television</a>
	<ul>
	<li><a href="TeleModify.jsp?Category=Television&productCategory=Samsung">Samsung</a></li>
    <li><a href="TeleModify.jsp?Category=Television&productCategory=LG" onClick="2">LG</a></li>
    <li><a href="TeleModify.jsp?Category=Television&productCategory=Sony" onClick="3">Sony</a></li>
	<li><a href="TeleModify.jsp?Category=Television&productCategory=Panasonic" onClick="4">Panasonic</a></li>
    <li><a href="TeleModify.jsp?Category=Television&productCategory=Sharp" onClick="5">Sharp</a></li>
	</ul>
</li>
<li><a href="MemModify.jsp?Category=Memory&productCategory=WD">Memory</a>
    <ul>
    <li><a href="MemModify.jsp?Category=Memory&productCategory=WD">WD</a></li>
    <li><a href="MemModify.jsp?Category=Memory&productCategory=Transcend" onClick="2">Transcend</a></li>
    <li><a href="MemModify.jsp?Category=Memory&productCategory=HP" onClick="3">HP</a></li>
    <li><a href="MemModify.jsp?Category=Memory&productCategory=Sandisk" onClick="4">Sandisk</a></li>
    <li><a href="MemModify.jsp?Category=Memory&productCategory=SDHC" onClick="5">SDHC</a></li>
     </ul>
</li>
		</ul>
		</li>
		
			
		<li><a href="XmlRead.jsp">Amazon Product Analysation</a>
		<ul>
    <li><a href="XmlRead.jsp">Computer DataSet</a></li>
    <li><a href="XmlRead2.jsp">Camera DataSet</a></li>
    <li><a href="XmlRead3.jsp">Router DataSet</a></li>
    
     </ul>
		</li>
		
	</ul>
</nav>

<div class="content">
 <div class="content_resize">
   
   <div class="mainbar">
<div class="article">
<form method=post action="MemoryData.jsp" name="AddDetails" >
<table width="329" align="center">
  <tr>
    <td width="193" height="38"><div align="left"><strong>TYPE:</strong> </div></td>
    <td width="124"><input name="type" type="text" id="type" size="20"></td>
  </tr>
  <tr>
    <td height="36"><div align="left"><strong>COMPANY:</strong> </div></td>
    <td><input name="company" type="text" id="company" size="20"></td>
  </tr>
  <tr>
    <td height="35"><div align="left"><strong>MEMORY:</strong></div></td>
    <td><input name="mem" type="text" id="mem" size="20"></td>
  </tr>
  <tr>
    <td height="35"><strong>PRICE:</strong></td>
    <td><input name="price" type="text" id="price" size="20"></td>
  </tr>
  <tr>
    <td height="35"><strong>PRODUCT NAME :</strong></td>
    <td><input name="product" type="text" id="product" size="20"></td>
  </tr>
  <tr>
    <td height="35"><div align="left"><strong>IMAGE URL :</strong> </div></td>
    <td><input name="processor" type="text" id="processor" size="20"></td>
  </tr>
  
  <tr>
    <td height="40" colspan="2"><div align="center">
      <input type="submit" name="Submit"
			value="ADD DETAILS">
    </div></td>
    </tr>
</table>
</form>
<h2>&nbsp;</h2>
<h4 style="margin-left: 30px;">&nbsp;</h4>
<h4 style="margin-left: 30px;">&nbsp;</h4>
</div>
</div>
<div class="clr"></div>
  </div>
</div>
<div class="fbg"></div>
<div class="footer">
<div class="footer_resize">
<p class="lf"> <a href="#"></a></p>
<ul class="fmenu">
	
        <li class="active"><a href="AddProduct.jsp">Add Product</a></li>
               <li><a href="MobModify.jsp">Modify/Delete Product</a></li>
               
        <li><a href="XmlRead.jsp">Amazon Products </a></li>
</ul>
<blockquote>	
         <div align="right"><span class="style6">&copy; Copyright 2016</span></div>
       </blockquote>
<div class="clr"></div>
</div>
</div>
</div>
</div>
</body>
</html>
