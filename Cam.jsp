<%@page import="javax.swing.text.html.ImageView"%>
<%@page import="oracle.jdbc.driver.OracleDriver"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.*"%>
<html>
<script language="javascript">
function Update()
{
document.form1.action="ModifyCam.jsp";
document.form1.submit();
}
function Delete()
{
document.form1.action="DeleteMob.jsp";
document.form1.submit();
}

</script>
<head>
<title>User Feedback Analysis System</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<!-- CuFon: Enables smooth pretty custom font rendering. 100% SEO friendly. To disable, remove this section -->
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>


<!-- CuFon ends -->
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
.style2 {color: #CCFF00}
.style3 {font-weight: bold}
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
      <div align="right" class="style1"> <span class="style6 style1"><em><strong>Welcome</strong></em></span> <span class="style3 style2">Admin</span>      <a href="Login.jsp" class="style6 style1" color:"white"><em><strong>Sign Out</strong></em></a>       </div>
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
<h2><%=request.getParameter("productName")%></h2>
<%
	String productName = request.getParameter("productName");
	String Category = request.getParameter("Category");
	session.setAttribute("nameOfProduct",productName);
	session.setAttribute("Category",Category);
	
	String imageURL = null;
	try {

		DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "SYSTEM", "manager");

		PreparedStatement pst = con.prepareStatement("Select * from " + Category + " where PRODUCTNAME =?");
		pst.setString(1, request.getParameter("productName"));
		ResultSet rs = pst.executeQuery();

		int columnCount = rs.getMetaData().getColumnCount();

		if(rs.next()) {
			
%>
<div class="clr"></div>
<form name="form1">
<table width="571">
  <tr>
    <td width="192"><strong>Company:</strong> </td>
    <td width="367"><label></label>
      <input name="t1" type="text" value="<%= rs.getString(1) %>" size="30"></td>
  </tr>
  <tr>
    <td><strong>Product Name: </strong></td>
    <td><label>
      <input name="t2" type="text" id="t2" value="<%= rs.getString(2) %>" size="30">
    </label></td>
  </tr>
  <tr>
    <td><strong>Battery:</strong></td>
    <td><input name="t3" type="text" value="<%= rs.getString(3) %>" size="30"></td>
  </tr>
  <tr>
    <td><strong>Pixels:</strong></td>
    <td><input name="t4" type="text" value="<%= rs.getString(4) %>" size="30"></td>
  </tr>
  <tr>
    <td><strong>Flash:</strong></td>
    <td><input name="t5" type="text" value="<%= rs.getString(5) %>" size="30"></td>
  </tr>
  <tr>
    <td><strong>Zoom:</strong></td>
    <td><input name="t6" type="text" value="<%= rs.getString(6) %>" size="30"></td>
  </tr>
  <tr>
    <td><strong>Face detection:</strong></td>
    <td><input name="t7" type="text" value="<%= rs.getString(7) %>" size="30"></td>
  </tr>
  <tr>
    <td><strong>Shooting Modes:</strong></td>
    <td><input name="t8" type="text" value="<%= rs.getString(8) %>" size="30"></td>
  </tr>
  <tr>
    <td><strong>Image:</strong></td>
    <td><input name="t9" type="text" value="<%= rs.getString(9) %>" size="30"></td>
  </tr>
  <tr>
    <td><strong>Sensor:</strong></td>
    <td><input name="t10" type="text" value="<%= rs.getString(10) %>" size="30"></td>
  </tr>
  <tr>
    <td><strong>Price:</strong></td>
    <td><input name="t11" type="text" value="<%= rs.getString(11) %>" size="30"></td>
  </tr>
  <tr>
    <td><strong>ImageUrl:</strong></td>
    <td><input name="t12" type="text" value="<%= rs.getString(12) %>" size="30"></td>
  </tr>
 <tr>
    <td><input type="button" name="Button" value="Update" onClick="Update()">
      <input type="button" name="Submit2" value="Delete" onClick="Delete()"> </td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
</form>
<h2><span> </span></h2>
<%
} 
	}
	catch(Exception e){}
%>
<h4 style="margin-left: 30px;"></h4>


<h2><span><br>
</span></h2>
</div>
</div>

<div class="clr"></div>
</div>
</div>

<div class="fbg"></div>
<div class="footer">
<div class="footer_resize">
<p class="lf"><a href="#"></a></p>
<ul class="fmenu">
	<li><a href="AddProduct.jsp">Add Product</a></li>
               <li class="active"><a href="MobModify.jsp?Category=Mobile&productCategory=Apple">Modify/Delete Product</a></li>
               <li><a href="XmlRead.jsp"> Amazon Product Analysation </a></li>
</ul>
<blockquote>	
         <div align="right"><span class="style7 style1">&copy; Copyright 2016</span></div>
       </blockquote>
</div>
</div>
</div>
</div>
</body>
</html>
