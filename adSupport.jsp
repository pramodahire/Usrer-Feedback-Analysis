<html>
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

<!-- CuFon ends -->
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
</style>
</head>
<body>
<%
if(session.getAttribute("uname")==null)
		{
			response.sendRedirect("Login.jsp");
		}
%>
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

  <nav>
        <ul>
          <li><a href="adIndex.jsp">Home</a></li>
          <li class="active"><a href="Support.jsp">Support</a></li>
          <li ><a href="About.jsp">About Us</a></li>
          <li><a href="Contact.jsp">Contact Us</a></li>
          <li><a href="feedback.jsp">Feedback</a></li>
        </ul>
      </nav>

  <div class="content">
    <div class="content_resize">
      <div class="mainbar" style="width:665px;">
        <div class="article">
          <h2><span>Support by Delve</span></h2><div class="clr"></div>
          <p align="justify"><strong>This Project provides online marketplace for Small &amp; Medium Size Businesses, connecting global buyers with Customers. The company offers a platform  tool to over  millions of suppliers to generate business leads from over billions of customers, who use the platform to find reliable &amp; competitive products.</strong></p>
          <p align="justify">Project offers products that enable small &amp; medium size businesses generate business leads, establish their credibility and use business information (feedback) for their business promotion.</p>
        </div>
        <div class="article">
          <h2><span>Our</span> Contact</h2><div class="clr"></div>
          <p align="justify"><strong>umeshnitnaware@gmail.com</strong></br>Contact no :7709616952</p>
          <p align="justify">
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
        <li><a href="adIndex.jsp">Home</a></li>
        <li class="active"><a href="Support.jsp">Support</a></li>
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
