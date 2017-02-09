
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="com.sentimentanalysis.*"%>
<%@page import="java.sql.*"%>

<head>
<title>User Feedback Analysis System</title>
<meta http-equiv="Content-Type" content="text/html; 

charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<!-- CuFon: Enables smooth pretty custom font rendering. 100% 

SEO friendly. To disable, remove this section -->
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.js"></script>
    <script type="text/javascript" 

src="js/jquery.tools.js"></script>
    <script type="text/javascript" src="js/ikonik.js"></script>
    <script language="javascript">

function getprod()
{
var s = document.formsearch1.scat.value;
alert(s);
document.formsearch1.h1.value = s;
alert(document.formsearch1.h1.value);
document.formsearch1.submit;
}

</script>


<!-- CuFon ends -->
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
</style>
</head>
<%--  <script language="javascript">
	function getSubCat()
	{
          document.forms[0].submit();
	}
</script>
--%>
<body>


<div class="main">

  <div class="header">
    <div class="header_resize">
      <div class="logo">
      <h1><a href="index.html"><span>USER FEEDBACK</span> Analysis System <small>Using NLP and AI</small></a></h1></div>
      <div class="searchform">
        <form id="formsearch" name="formsearch" method="post" 

action="">
          <input name="button_search" src="images/search_btn.gif" 

class="button_search" type="image" />
          <span><input name="editbox_search" 

class="editbox_search" id="editbox_search" maxlength="80" 

value="Search" type="text" /></span>
        </form>
      </div>
      <div class="clr"></div>
    </div>
  </div>

  <nav>
        <ul>
          <li><a href="adIndex.jsp">Home</a></li>
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
          <h2><span>Analyse Product</span></h2><div 

class="clr"></div>

<form id="formsearch1" name="formsearch1" method="get" action="result.jsp">

<ol><li>
         <label for="name">Select Product</label>          
            <%!
            Connection con = null;
            PreparedStatement ps=null;
            PreparedStatement ps1=null;
            ResultSet rs1=null;
            ResultSet rs2=null;
            String cc=null;
            %>
             <%
   DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
   con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", 

"SYSTEM","manager");
   String query="select distinct(product_name) from commenttab";
   ps=con.prepareStatement(query);
   rs1=ps.executeQuery(query); 
  %>
    <select name="scat">
			<%
			while(rs1.next())
			{
			%>
				<option value="<%=rs1.getString(1)%>">
				<%=rs1.getString(1)%>
				</option>
			<%
			}
			%>
 </select>            
<input type = "hidden" name="h1">
<input name="Analyse" type="submit" value="Analyse"" onClick="getprod()">

</form>

         
<br></br> <hr></hr>        
        </div>
      </div>
        <%@include file="Menu.jsp"%>
        <h6><a href="Index.jsp" style="font-size:16px; text-decoration:none; ">Sign Out</a></h6>
      <div class="clr"></div>
    </div>
  </div>

  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf"><a href="#"></a></p>
      <ul class="fmenu">
        <li><a href="HomePage.jsp">Home</a></li>
          <li><a href="adSupport.jsp">Support</a></li>
          <li><a href="adAbout.jsp">About Us</a></li>
          <li><a href="adModify.jsp">Modify Product</a></li>
          <li class="active"><a 

href="adAnalyse.jsp">Analyse</a></li>
          <li><a href="adContact.jsp">Contact Us</a></li>
      </ul>
      <blockquote>	
         <div align="right"><span class="style7 style1">&copy; Copyright 2016</span></div>
      </blockquote>
      <div class="clr"></div>
    </div>
  </div>
</div>


</body>
</html>


