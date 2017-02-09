<html>
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
 function isEmpty(str)
 {
 if(str=="")
 {
 return true;
 }
 else 
 return false;
 }
 function valid()
 {
 f=document.frm;
 if(isEmpty(f.usernm.value))
 {
 alert("Please type your first name");
 f.usernm.focus();
 return false;
 }
 else 
 return true;
 }
 function isAlphaNumeric(str1){
 	len=str1.length;
 	for(i=0; i<len; i++)
 	{
 	if( ((str1.charAt(i) >='a')&& (str1.charAt(i) <='z')) ||  ((str1.charAt(i) >='A')&& (str1.charAt(i) <='Z'))||((str1.charAt(i) >=0)&& (str1.charAt(i) <=9)) )
 	{}
 	else
 	{
 	return true; 
 	break;
 	}
 	}
 	}

 function isValidusernmpassword(str) 
 {
 if(isEmpty(str) || str == "") 
 return false;
 var usernm = str.toString();
 var n=password.length;	
 var i;
 for(i=0; i<n; i++) 
 {
 var ch = usernm.charAt(i);
 if((!isAlphaNumeric(ch)) && (ch != "_")) 	
 	 {
 	return false;
   	}
   	}
 	return true;
   } 
function validate()
{	
var t1 = document.frm.t1.value;
var t2 = document.frm.t2.value;
var t3 = document.frm.t3.value;
var t4 = document.frm.t4.value;
var b1 = document.frm.b1.value;


var reg = new RegExp("^[A-Za-z0-9_]{1,}[.]?[A-Za-z0-9_]{1,}@{1}([A-Za-z0-9_]+[.]{1})+[A-Za-z0-9_]{1,}$");
if(isEmpty(t1)) 
{
alert("Please type your first name.");
document.frm.t1.focus();
return false;
} 
else if(isEmpty(t2)) 
{
alert("The Email_id is compulsory.");
document.frm.t2.focus();
return false;
} 
else if(isEmpty(t3)) 
{
alert("Please enter Valid Phone Number.");
document.frm.t3.focus();
return false;
} 
else if(isEmpty(t4)) 
{
alert("Please enter characters only.");
document.frm.t4.focus();
return false;
}
return true;
}


 </script>
 <style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
 </style>
</head>
<body>
<div id="wrapper">
<form name="frm" action="feed.jsp" method="post" onSubmit="javascript:return validate();" >
<div class="main">

  <div class="header">
    <div class="header_resize">
      <div class="logo">
      <h1><a href="index.html"><span>USER FEEDBACK</span> Analysis System <small>Using NLP and AI</small></a></h1>
      </div>
      <div class="searchform">
        <!--  <form id="formsearch" name="formsearch" method="post" action="">
          <input name="button_search" src="images/search_btn.gif" class="button_search" type="image" />
          <span><input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search" type="text" /></span>
        </form> -->
      </div>
      <div class="clr"></div>
    </div>
  </div>
  </div>
  <nav>
        <ul>
          <li ><a href="HomePage.jsp">Home</a></li>
          <li><a href="NewSupport.jsp">Support</a></li>
          <li><a href="NewAbout.jsp">About Us</a></li>
          <li><a href="NewContact.jsp">Contact Us</a></li>
          <li class="active"><a href="NewFeedback.jsp">Feedback</a></li>
        </ul>
    </nav>
 
  <div class="content">
  
    <div class="content_resize">
      <table width="66%" height="357" align="center">
  <tr>
    <td width="31%">UserName*</td>
    <td width="69%"><label>
      <input name="t1" type="text" id="t1">
    </label></td>
  </tr>
  <tr>
    <td>EmailId*</td>
    <td><label>
      <input name="t2" type="text" id="t2" size="20">
      <span class="style6">@</span>
      <select name="select" size="1">
        <option selected>gmail.com</option>
        <option>yahoo.com</option>
        <option>rediffmail.com</option>
        <option>hotmail.com</option>
        <option>msn.com</option>
      </select>
    </label></td>
  </tr>
  <tr>
    <td>Contact</td>
    <td><label>
      <input name="t3" type="text" id="t3">
    </label></td>
  </tr>
  <tr>
    <td>Message Line*</td>
    <td><label>
      <textarea name="t4" cols="50" rows="6" id="t4"></textarea>
    </label></td>
  </tr>
  <tr>
    <td height="57" colspan="2"><label>
      <div align="center">
        <input type="submit" name="b1" id="b1"  />
        </div>
    </label></td>
    </tr>
</table>

      
    <div align="center"></div>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    </div>
  </div>
         
  </form>    

  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
       <p class="lf"><a href="#"></a></p>
      <ul class="fmenu">
        <li><a href="adIndex.jsp">Home</a></li>
        <li><a href="Support.jsp">Support</a></li>
        <li><a href="About.jsp">About Us</a></li>
        <li><a href="Contact.jsp">Contacts</a></li>
        <li class="active"><a href="feedback.jsp">Feedback</a></li>
      </ul>
      <blockquote>	
         <div align="right"><span class="style7 style1">&copy; Copyright 2016</span></div>
      </blockquote>
    </div>
      <div class="clr"></div>
    </div>
  </div>


</body>
</html>
