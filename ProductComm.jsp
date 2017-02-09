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
<!-- CuFon: Enables smooth pretty custom font rendering. 100% SEO friendly. To disable, remove this section -->
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
    	  var n1 = parseFloat(document.getElementById("h1").value);
    	  var n2 = parseFloat(document.getElementById("h2").value);
        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Positive');
        data.addColumn('number', 'Negative');
	
        data.addRows([
          ['Positive', n1],
          ['Negative', n2]
        ]);
		
        // Set chart options
        var options = {'title':'Average User Opinion',
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
.style5 {color: #000000}
-->
</style>
<style>
table {
    border-collapse: collapse;
    width: 60%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: white;
}
.style7 {padding:0; margin:0; width:100%; line-height:0px; clear: both;}
.style8 {font-size: small}
.style10 {padding: 0; margin: 0; width: 100%; line-height: 0px; clear: both; color: #FFFFFF; }
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
  <table>
    <tr align="left" valign="top">
      <td><span class="style8">
        <%@include file="Menu.jsp"%>
      </span></td>
      <td><div class="mainbar style8">
        <div class="article">
          <h2><%=request.getParameter("productName")%></h2>
          <%!
Connection con = null;
PreparedStatement pst = null;
PreparedStatement pst1 = null;
ResultSet rs = null;
ResultSet rs1 = null;
int columnCount=0;
float an=0,ap=0;
%>
          <%
	String productName = request.getParameter("productName");
	String Category = request.getParameter("Category");
	session.setAttribute("nameOfProduct",productName);
	
	
	String imageURL = null;
	try 
	{
		DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
		con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "SYSTEM", "manager");
		pst = con.prepareStatement("Select * from " + Category + " where PRODUCTNAME =?");
		pst.setString(1, request.getParameter("productName"));
		rs = pst.executeQuery();
		columnCount = rs.getMetaData().getColumnCount();
		if (rs.next()) 
		{
			imageURL = rs.getString("imageUrl");			
		}
	}
	catch(Exception ee)
	{
	out.println(ee.toString());
	}		
%>
          <table width="605" align="left">
            <tr>
              <td colspan="2" style="height: 200px;"><img src="<%=imageURL%>"> </td>
              <td width="71%" colspan="2" style="height: 300px;">
                <div id="chart_div" style="margin-left: auto; margin-right: auto;" align="center"></div>
              </td>
            </tr>
          </table>
          <h4 style="margin-left: 30px;"></h4>
          <form method="get" id="sendemail" action="ValidateComment.jsp"
	onSubmit="javascript:return validate();">
            <ol>
              <li>
              <li>
                <table width="100%" border="0">
                  <%
		for (int i = 1; i < columnCount; i++) 
		{
	%>
                  <tr>
                    <td width="33%" class="text"><b><%=rs.getMetaData().getColumnName(i)%></b></td>
                    <td width="67%"><%=rs.getString(rs.getMetaData().getColumnName(i))%></td>
                  </tr>
                  <%
		}

	%>
                </table>
              </li>
              <li>
                <table width="69%" border=1>
                  <tr>
                    <th><span class="style5">UserName</span></th>
                    <th><span class="style5">Comment</span></th>
                  </tr>
                  <%
        try
        {
        	pst1 = con.prepareStatement("select * from commenttab where PNAME =?");
			pst1.setString(1, productName);
			rs1 = pst1.executeQuery();
			int p=0;
			int n=0;
			int cnt=0;
			while(rs1.next())
			{
			out.println("<tr><td><b>"+rs1.getString(3)+"</td><td>"+rs1.getString(1)+"</td></tr></b>");  	
			p+=rs1.getInt(4);
			n+=rs1.getInt(5);
			cnt++;
			}
			ap = (float) p/cnt;
			an = (float) n/cnt;
					
		} 
        catch (Exception e) 
        {
		e.printStackTrace();
		}
        out.print("<input type='hidden' id='h1' value="+ap+">");
		out.print("<input type='hidden' id='h2' value="+an+">");
        out.println("<tr><td><b> Average Positive : "+ap+" </b></td><td><b>Average Negative :"+an+"</b></td></tr>");  
	%>
                </table>
              </li>
              <li>
                <label for="message" id="comment">Your Comment</label>
                <textarea
		id="message" name="message" rows="5" cols="50"></textarea>
              </li>
              <input type="image" name="imageField" id="imageField"
		src="images/submit.gif" class="send" value=submit />
              </label>
              <li>
                <div class="style7"></div>
              </li>
            </ol>
          </form>
        </div>
      </div></td>
    </tr>
  </table>
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
         <div align="right"><span class="style10">&copy; Copyright 2016</span></div>
       </blockquote>
<div class="clr"></div>
</div>
</div>
</div>
</div>
</body>
</html>
