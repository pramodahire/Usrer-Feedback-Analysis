<%@ page import="java.sql.*" language="java"
  	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@page import="com.sentimentanalysis.SentenceSplitter"%>
<%@page import="com.sentimentanalysis.TextAnalysis"%><html>
<%@page import="oracle.jdbc.driver.OracleDriver"%>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<head>

<title>User Feedback Analysis System</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<!-- CuFon: Enables smooth pretty custom font rendering. 100% SEO friendly. To disable, remove this section -->
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.js"></script>
    <script type="text/javascript" src="js/jquery.tools.js"></script>
    <script type="text/javascript" src="js/ikonik.js"></script>
<!--Load the AJAX API-->
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">

      // Load the Visualization API and the piechart package.
      google.load('visualization', '1.0', {'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.setOnLoadCallback(drawChart);

      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
      function drawChart() {
		alert("Analysis of Comment");
    	  var n1 = parseInt(document.getElementById("h1").value);
    	  var n2 = parseInt(document.getElementById("h2").value);
    	  alert(n1 + ","+ n2);
        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Positive');
        data.addColumn('number', 'Negative');
	
        data.addRows([
          ['Positive', n1],
          ['Negative', n2]
        ]);
		
        // Set chart options
        var options = {'title':'User Opinion',
                       'width':400,
                       'height':300};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    </script>
<!-- CuFon ends -->
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
</style>
</head>
<body>
<div id="wrapper">
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
      <h1><a href="index.html"><span>USER FEEDBACK</span> Analysis System <small>Using NLP and AI</small></a></h1></div>
      <div class="searchform">
        <form id="formsearch" name="formsearch" method="post" action="">
          <input name="button_search" src="images/search_btn.gif" class="button_search" type="image" />
          <span><input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search" type="text" /></span>
        </form>
      </div>
      <div class="clr"></div>
    </div>
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
  
<h2><%=session.getAttribute("nameOfProduct")%></h2>
<%
//PrintWriter pw = null;
	
	TextAnalysis.Result analysisOfComment = null;

	try {
	/*File file = new File("F://Sentiment1//CommentData//" + session.getAttribute("nameOfProduct") + ".txt");
	if(!file.exists()) {
		file.createNewFile();
	}
	pw = new PrintWriter(file);*/
	
	
	//String email1 = request.getParameter("email");
	//String selected1 = request.getParameter("select");
	//String emailId = email1+"@"+selected1;
	String comment1 = request.getParameter("message");
	String pname = session.getAttribute("nameOfProduct").toString();
	String usid = session.getAttribute("uname").toString();
		
	
		DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "SYSTEM","manager");
		PreparedStatement pst = con.prepareStatement("insert into Commenttab values (?,?,?,?,?)");
				
		//session.setAttribute("emailid", emailId);
		session.setAttribute("usercomment", comment1);
		out.println("Thank You User!!!");
		SentenceSplitter splitter = new SentenceSplitter();
		splitter.init();
		analysisOfComment = splitter.calculateScore(comment1);
		
		Statement pst2 = con.createStatement();
		ResultSet rs2 = pst2.executeQuery("select * from Score");
		int pos = 0;
		int neg = 0;
		if(rs2.next())
		{
		pos = rs2.getInt(1);
		neg = rs2.getInt(2);
		}	
		System.out.println(comment1 + comment1 +  pos + neg);
		//pst.setString(1, emailId);
		pst.setString(1, comment1);
		pst.setString(2, pname);
		pst.setString(3, usid);
		pst.setInt(4, pos);
		pst.setInt(5, neg);
		
		System.out.println("Analysing the Comment ....");
		
		ResultSet rs = pst.executeQuery();
		//pw.println(comment1);
		pst.close();
		
		System.out.println(analysisOfComment);
		Statement pst1 = con.createStatement();
		
		ResultSet rs1 = pst1.executeQuery("select * from Score");
		int n1,n2;
		n1=0;
		n2=0;
		while(rs1.next())
		{
		 n1 = n1+rs1.getInt(1);
		 n2 = n2+rs1.getInt(2);
		}
		out.print("<input type='hidden' id='h1' value="+n1+">");
		out.print("<input type='hidden' id='h2' value="+n2+">");
		System.out.println("Score is : "+n1+","+n2);
		//pst1.executeQuery("delete from Score");
		
		//pw.close();
	}catch (SQLException se) {
		System.out.println("sql exception has occuttreee " + se);
	}
		
%>
<h2 align="center" style="color:#CCC;">Analysing the Comment</h2>
<table width="605" align="center" style="font-size: 16px; background-color:#CCC; padding-top:5px;" cellpadding="5" cellspacing="10" border="0">
  <tr>
    <td><%=analysisOfComment %></td>
  </tr>
</table>
<div id="chart_div" style="margin-left: auto; margin-right: auto;" align="center"></div>
<%
try{
	DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "SYSTEM","manager");
	Statement pst1 = con.createStatement();
	ResultSet rs1 = pst1.executeQuery("Delete from Score");
	con.close();	
}
catch(SQLException e)
{
	System.out.println("Error"+e);
}
%>

</div>
</div>
</div>
</div>
<div class="fbg"></div>
<div class="footer">
<div class="footer_resize">
<p class="lf"> <a href="#"></a></p>
<ul class="fmenu">
	<li class="active"><a href="adIndex.jsp">Home</a></li>
	<li><a href="Support.jsp">Support</a></li>
	
	<li><a href="About.jsp">About Us</a></li>
	<li><a href="Contact.jsp">Contacts</a></li>
	<li><a href="feedback.jsp">Feedback</a></li>
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