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
<div id="wrapper">
<div class="main">

  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html"><span>USER FEEDBACK</span> Analysis System <small>Using NLP and AI</small></a></h1></div>
      <div class="searchform">
        <form name="form1" method="post" action="">
          <input name="button_search" src="images/search_btn.gif" class="button_search" type="image" />
          <span><input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search" type="text" /></span>
        </form>
      </div>
      <div class="clr"></div>
    </div>
  </div>

 <nav>
        <ul>
          <li class="active"><a href="HomePage.jsp">Home</a></li>
          <li><a href="NewSupport.jsp">Support</a></li>
          <li><a href="NewAbout.jsp">About Us</a></li>
          <li><a href="NewContact.jsp">Contact Us</a></li>
          <li><a href="NewFeedback.jsp">Feedback</a></li>
        </ul>
  </nav>

  <div class="content">
    <div class="content_resize">
       
        
       <table width=80% align="center" class="body">
  <tr>
    <td><h3>Enter the information into following fields. </h3>
        <hr width=40% align="left" noshade="noshade">
      </hr>
    </td>
  </tr>
</table>
<form method=get action="fpass.jsp" name="registration" onSubmit="return formValidation();">
<br></br>

<table border="0" width=70% align="center" class="body">
  <tr>
    <td width="30%"><div align="left">Username</div></td>
    <td><input name="username" type="text" size="50"></td>
  </tr>
  <tr>
    <td><div align="left">New Password &nbsp;&nbsp;</div></td>
    <td><input name="password" type="password" size="40"></td>
  </tr>
  <tr>
    <td><div align="left">Confirm Password</div></td>
    <td><input name="cpassword" type="password" size="40"></td>
  </tr>
  <tr>
    <td>Secret Question </td>
    <td><select name="question">
      <option>what is your school name?</option>
      <option selected>what is your mother name?</option>
      <option>what is your age?</option>
      <option>what is your father name?</option>
    </select>    </td>
  </tr>
  <tr>
    <td>Answer</td>
    <td><textarea name="ans" cols="50"></textarea></td>
  </tr>
  <tr>
    <td>(Fields marked with * are mandatory)
      <p align="left">
        <input type="submit" name="Submit"
			value="Submit">
      </p></td>
  </tr>
 
</table>
</form>
      </div>
      </div>
      
      <div class="clr"></div>
    </div>
 

        
  

  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf"> <a href="#"></a></p>
      <ul class="fmenu">
        <li class="active"><a href="HomePage.jsp">Home</a></li>
        <li><a href="NewSupport.jsp">Support</a></li>
        
        <li><a href="NewAbout.jsp">About Us</a></li>
        <li><a href="NewContact.jsp">Contacts</a></li>
        <li><a href="NewFeedback.jsp">Feedback</a></li>
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
