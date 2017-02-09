<%@page import="javax.swing.text.html.ImageView"%><html>
<%@page import="oracle.jdbc.driver.OracleDriver"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.*"%>
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
.style1 {
	font-size: 18px;
	font-weight: bold;
}
.style3 {
	font-size: 12px;
	color: #CCFF00;
}
.style4 {
	color: #FFFFFF;
	font-size: 12px;
	font-style: italic;
}
.style5 {color: #FFFFFF}
-->
</style>
</head>
<body>

<div class="main">
<div class="header">
<div class="header_resize">
<div class="logo">
<h1><a href="Index.jsp"><span>USER FEEDBACK</span> Analysis System <small>Using NLP and AI</small></a></h1>
</div>
<label>
      <div align="right" class="style1"><span class="style4">Welcome</span><span class="style3"> 
        <% out.println(session.getAttribute("uname")); %>
      </span>      <a href="Login.jsp" class="style4" color:"white" >Sign Out</a>       </div>
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
          <li class="active"><a href="adIndex.jsp">Home</a></li>
          <li><a href="Support.jsp">Support</a></li>
          <li><a href="About.jsp">About Us</a></li>
          <li><a href="Contact.jsp">Contact Us</a></li>
          <li><a href="feedback.jsp">Feedback</a></li>
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
	
	String imageURL = null;
	try {

		DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "SYSTEM", "manager");

		PreparedStatement pst = con.prepareStatement("Select * from " + Category + " where PRODUCTNAME =?");
		pst.setString(1, request.getParameter("productName"));
		ResultSet rs = pst.executeQuery();

		int columnCount = rs.getMetaData().getColumnCount();

		while (rs.next()) {
			imageURL = rs.getString("imageUrl");
%>
<div class="clr"></div>
<table width="605" align="center" style="font-size: 16px;">
	<tr>
		<td colspan="2" style="height: 300px;">
		<center><img src="<%=imageURL%>"></center>
		</td>
	</tr>
</table>

<table width="600" border="0" style="font-size: 16px;">
	<%
		for (int i = 1; i < columnCount; i++) {
	%>
	<tr>
		<td class="text"><b><%=rs.getMetaData().getColumnName(i)%></b></td>
		<td><%=rs.getString(rs.getMetaData().getColumnName(i))%></td>
	</tr>

	<%
		}

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
</table>
<h2><span> </span></h2>
<h4 style="margin-left: 30px;"></h4>


<h2><span><br>
Comment</span></h2>
<p><input type="text" name="nameOfProduct"  value="<%=productName %>" /> </p>

<form method="get" id="sendemail" action="ValidateComment.jsp"
	onSubmit="javascript:return validate();">
<ol>
	<li><label for="email" style="padding-top: 2px;">Email
	Address (required)</label>
	  <input name="email"  id="email"
		style="height: 25px;" />
	  <span class="style1">@</span>
	  <select name="select" size="1.9">
	    <option selected>gmail.com</option>
	    <option>rediffmail.com</option>
	    <option>yahoo.com</option>
	    <option>hotmail.com</option>
	    <option>msn.com</option>
                                                                              </select>
	  <label></label>
	</li>
	<li><label for="message" id="comment">Your Comment</label> <textarea
		id="message" name="message" rows="8" cols="50"></textarea></li>
	<li><input type="image" name="imageField" id="imageField"
		src="images/submit.gif" class="send" value=submit />
	<div class="clr"></div>
	</li>
</ol>
</form>
</div>
</div>
<%@include file="Menu.jsp"%>
<div class="clr"></div>
</div>
</div>

<div class="fbg"></div>
<div class="footer">
<div class="footer_resize">
<p class="lf"> <a href="#"></a></p>
<ul class="fmenu">
	<li class="active"><a href="adIndex.jsp">Home</a></li>
	<li><a href="Support.jsp">Support</a></li>
	<li><a href="Blog.jsp">Blog</a></li>
	<li><a href="About.jsp">About Us</a></li>
	<li><a href="Contact.jsp">Contacts</a></li>
	<li><a href="feedback.jsp">Feedback</a></li>
</ul>
<blockquote>	
         <div align="right"><span class="style7 style5">&copy; Copyright 2016</span></div>
      </blockquote>
<div class="clr"></div>
</div>
</div>
</div>
</body>
</html>
