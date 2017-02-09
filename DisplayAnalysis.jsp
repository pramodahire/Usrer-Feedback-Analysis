
<%@page import="com.sentimentanalysis.TextAnalysis"%><html>
<head>

<title>User Feedback Analysis System</title>
	<link href="style.css" rel="stylesheet" type="text/css" />
<!-- CuFon: Enables smooth pretty custom font rendering. 100% SEO friendly. To disable, remove this section -->
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.js"></script>
    <script type="text/javascript" src="js/jquery.tools.js"></script>
    <script type="text/javascript" src="js/ikonik.js"></script>

<!-- CuFon ends -->
 <script>
 
	function validate() {
		var USERID = document.form.name.value;
		var PASSWORD = document.form.password.value;
		if (USERID == "") {
			alert("Enter Username!");
			return false;
		}
		if (PASSWORD == "") {
			alert("Enter Password!");
			return false;
		}
		return true;
		if (!validate(USERID, PASSWORD) ) 
			{
					int count = Integer.parseInt( session.getAttribute("count") );
							if (count > 1) 
								{
										response.sendRedirect("Index.jsp");
								}
								else 
									{
												count++;
												session.setAttribute("count");			
												response.sendRedirect("Login.jsp");
														}
	}
	}
</script>

 <style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
 </style>
</head>
<body>

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
<br><br><br><br><br><br><br><br>

<%
	TextAnalysis.Result result = request.getParameter("analysisOfComment");
%>
<h2>Analysing the Comment</h2>
<%=result %>

<div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf"><a href="#"></a></p>
      <ul class="fmenu">
        <li><a href="adIndex.jsp">Home</a></li>
        <li><a href="Support.jsp">Support</a></li>
        <li><a href="About.jsp">About Us</a></li>
        <li class="active"><a href="Contact.jsp">Contacts</a></li>
        <li><a href="feedback.jsp">Feedback</a></li>
      </ul>
      <blockquote>	
         <div align="right"><span class="style7 style1">&copy; Copyright 2016</span></div>
</blockquote>
</body>
</html>
