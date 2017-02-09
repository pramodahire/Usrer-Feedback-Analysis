<html>
<head>
<title>User Feedback Analysis System</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
	<link href="style.css" rel="stylesheet" type="text/css" />

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "javax.xml.parsers.DocumentBuilderFactory"  %>
 <%@ page import = "javax.xml.parsers.DocumentBuilder"%>
  <%@ page import = "org.w3c.dom.Document"%>
   <%@ page import = "org.w3c.dom.NodeList"%>
    <%@ page import = "org.w3c.dom.Node"%>
     <%@ page import = "org.w3c.dom.Element"%>
     <%@ page import = "java.io.File"%>
     <%@page import="com.sentimentanalysis.SentenceSplitter"%>
<%@page import="com.sentimentanalysis.TextAnalysis"%><html>
<%@page import="oracle.jdbc.driver.OracleDriver"%>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%!
float ap=0;
float an=0;
int cnt=0;
int i=1;
%>     
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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
    	  alert(n1);
    	  alert(n2);
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
.style2 {
	font-size: 24px;
	font-weight: bold;
	color: #333333;
}
.style3 {
	font-size: 12px;
	font-weight: bold;
	color: #CCFF00;
}
.style4 {
	font-size: 24px;
	font-weight: bold;
}
.style6 {
	font-size: 12px;
	font-weight: bold;
	color: #FFFFFF;
	font-style: italic;
}
.style7 {color: #FFFFFF}
-->
 </style>
</head>



<body>
<div id="wrapper">
<div class="main">

  <div class="header">
    <div class="header_resize">
      <div class="logo">
      <h1><a href="index.html"><span>USER FEEDBACK</span> Analysis System <small>Using NLP and AI</small></a></h1>
      </div>
     <label>
      <div align="right" class="style1"> <span class="style6">Welcome</span> <span class="style3">Admin</span>      <a href="Login.jsp" class="style6" color:"white">Sign Out</a>       </div>
      </label>
      <div class="clr"></div>
    </div>
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
				
		<li><a href="MobModify.jsp?Category=Mobile&productCategory=Apple">Modify/Delete Product</a>
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
      <p class="style4">&nbsp;</p>
      
        
      <div class="mainbar">
        <div class="article">
          <h2><table align="center">
<td colspan="2" style="height: 300px;">
		<center><div id="chart_div" style="margin-left: auto; margin-right: auto;" align="center"></div></center>
		</td>
</table></h2>
		

          <div id="newest">
        <div class="grid clearfix"></div>
      </div>

        </div>        <div class="article">
          <h2>&nbsp;</h2>
          <div class="article">
            <p align="justify">&nbsp;</p>
          </div>
          <div class="article"></div>
          <p class="style2">&nbsp;</p>
          <p class="spec"><a href="#" class="rm"></a> <a href="#" class="com"></a></p>
        </div>
      </div>
        <div class="clr"></div>
    </div>
  </div>


<%
// TODO code application logic here
Connection con = null;
Statement pst1 = null;
ResultSet rs1 =null;
try 
{
	DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
	con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "SYSTEM", "manager");
	TextAnalysis.Result analysisOfComment = null;
	File fXmlFile = new File("e:\\Router.xml");
	DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
	DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
	Document doc = dBuilder.parse(fXmlFile);
	doc.getDocumentElement().normalize();

//System.out.println("Root element :" + doc.getDocumentElement().getNodeName());
   

NodeList nList = doc.getElementsByTagName("review");
   
//System.out.println("----------------------------" + nList.getLength());

int n1=0,n2=0;
for (int temp = 0; temp < nList.getLength(); temp++,i++) 
{
	
Node nNode = nList.item(temp);  
//out.println("\nCurrent Element :" + nNode.getNodeName());
if (nNode.getNodeType() == Node.ELEMENT_NODE) 
{

   Element eElement = (Element) nNode;
   //System.out.println("product Name : " + eElement.getElementsByTagName("product_name").item(0).getTextContent());
	//out.println("Review Text : " + eElement.getElementsByTagName("text").item(0).getTextContent());
    String comm = eElement.getElementsByTagName("text").item(0).getTextContent();
    SentenceSplitter splitter = new SentenceSplitter();
    splitter.init();
    analysisOfComment = splitter.calculateScore(comm); 
	pst1 = con.createStatement();
	
	rs1 = pst1.executeQuery("select * from score");
	
	
	
	while(rs1.next())
	{
	 n1 = n1+rs1.getInt(1);
	 n2 = n2+rs1.getInt(2);
	 cnt++;
	}
	System.out.println("i = " + i);
	Statement pst2 = con.createStatement();
	pst2.executeQuery("delete  from score");
	pst2.close();
   }
}
ap = (float) n1/cnt;
an = (float) n2/cnt;

//out.println("Avearge positive score = " + ap);
//out.println("Avearge negative score = " + an);

out.print("<input type='hidden' id='h1' value="+ap+">");
out.print("<input type='hidden' id='h2' value="+an+">");

} 
catch (Exception e) 
{
e.printStackTrace();
}
finally
{
	con.close();
	pst1.close();
	rs1.close();
}
%>

<div class="clr"></div>
    

  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf"><a href="#"></a></p>
      <ul class="fmenu">
         <li><a href="AddProduct.jsp">Add Product</a></li>
               <li><a href="MobModify.jsp?Category=Mobile&productCategory=Apple">Modify/Delete Product</a></li>
               <li class="active"><a href="XmlRead.jsp"> Amazon Product Analysation </a></li>
      </ul>
      <blockquote>	
         <div align="right"><span class="style7">&copy; Copyright 2016</span></div>
      </blockquote>
    </div>
  </div>
</div>
</body>
</html>