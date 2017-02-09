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

<script type="text/javascript">
function formValidation()
{
var name = document.registration.name;
var password = document.registration.password;
var uname = document.registration.username;
var cpassword = document.registration.cpassword;
var email = document.registration.email;
var address = document.registration.address;
var phone = document.registration.phone;
var dob = document.registration.dob;

if(name_validation(name,3,20)){
	if(password_validation(password,3,20)){
		if(password_validation(cpassword,3,20)){
			if(ValidateEmail(email)){
				if(allLetter(uname)){
					if(alphanumeric(address)){ 
						if(allnumeric(phone)){
						}	
					}
				} 
			}
		} 
	}
}
return false;
} 

function name_validation(uid,mx,my)
{
var uid_len = uid.value.length;
if (uid_len == 0 || uid_len >= my || uid_len < mx)
{
alert("User Name should not be empty / length be between "+mx+" to "+my);
uid.focus();
return false;
}
return true;
}

function password_validation(passid,mx,my)
{
var passid_len = passid.value.length;
if (passid_len == 0 ||passid_len >= my || passid_len < mx)
{
alert("Password should not be empty / length be between "+mx+" to "+my);
passid.focus();
return false;
}
return true;
}

function allLetter(uname)
{ 
var letters = /^[A-Za-z]+$/;
if(uname.value.match(letters))
{
return true;
}
else
{
alert('Username must have alphabet characters only');
uname.focus();
return false;
}
}

function alphanumeric(uadd)
{ 
var letters = /^[0-9a-zA-Z]+$/;
if(uadd.value.match(letters))
{
return true;
}
else
{
alert('User address must have alphanumeric characters only');
uadd.focus();
return false;
}
}

function allnumeric(phone)
{ 
var numbers = /^[0-9]+$/;
if(phone.value.match(numbers))
{
return true;
}
else
{
alert('Phone no must have numeric characters only');
phone.focus();
return false;
}
}

function ValidateEmail(uemail)
{
var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
if(uemail.value.match(mailformat))
{
return true;
}
else
{
alert("You have entered an invalid email address!");
uemail.focus();
return false;
}
} 

</script>
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	font-weight: bold;
}
.style2 {color: #FFFFFF}
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
       
        
        <div class="article">
<h3 align="center"><span>Register Here</span></h3>
<div class="clr"></div>

          <form method=post action="RegisterUserValidate.jsp" name="registration" onSubmit="return formValidation();">
<br></br>

<table width=80% align="center" class="body">
	<tr>
		<td>
		<h3>Complete Your Registration</h3>
		<hr width=40% align="left" noshade="noshade"></hr>
		</td>
	</tr>
</table>


<table border="0" width=70% align="center" class="body">

	<tr>
		<td width=30%>
		<div align="left">Name</div>		</td>
		<td><input name="name" type="text" size="50"></td>
	</tr>

	<tr>
		<td>
		<div align="left">Username</div>		</td>
		<td><input name="username" type="text" size="50"></td>
	</tr>

	<tr>
		<td>
		<div align="left">Password &nbsp;&nbsp;</div>		</td>
		<td><input name="password" type="password" size="40"></td>
	</tr>

	<tr>
		<td>
		<div align="left">Confirm Password</div>		</td>
		<td><input name="cpassword" type="password" size="40"></td>
	</tr>

	<tr>
		<td>
		<div align="left">Email ID</div>		</td>
		<td><input name="emailId" type="text" size="25">
		  <span class="style1">@
		  <label>
		  <select name="select">
		    <option selected>gmail.com</option>
		    <option>rediffmail.com</option>
		    <option>yahoo.com</option>
		    <option>hotmail.com</option>
		    <option>msn.com</option>
		    </select>
		  </label>
		  </span></td>
	</tr>

	<tr>
		<td>
		<div align="left">Address</div>		</td>
		<td><textarea name="address" cols="40"></textarea></td>
	</tr>

	<tr>
		<td>
		<div align="left">Phone Number</div>		</td>
		<td><input name="phoneNumber" type="text" size="50"></td>
	</tr>

	<tr>
		<td>
		<div align="left">Date Of Birth</div>		</td>
		<td><input name="DOB" type="text" size="50"></td>
	</tr>
	<tr>
	  <td>Secret Question </td>
	  <td><select name="question">
	    <option>what is your school name?</option>
	    <option selected>what is your mother name?</option>
	    <option>what is your age?</option>
	    <option>what is your father name?</option>
	    </select>
	  </td>
	</tr>
	<tr>
	  <td>Answer</td>
	  <td><textarea name="ans" cols="50"></textarea></td>
    </tr>

	<tr height="40"></tr>
	<tr>
		<td>(Fields marked with * are mandatory)
		<p align="left"><input type="submit" name="Submit"
			value="Register me to the site !"></p>		</td>
	</tr>
</table>

<br></br>



</form>
      </div>
      </div>
      
      <div class="clr"></div>
    </div>
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
         <div align="right"><span class="style7 style2">&copy; Copyright 2016</span></div>
      </blockquote>
      <div class="clr"></div>
    </div>
  </div>
</div>
</body>
</html>
