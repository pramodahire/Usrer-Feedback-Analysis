<html>
<head>
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
.style1 {font-weight: bold}
-->
</style>
</head>
<body>
<div class="sidebar">
   
         <div class="gadget">
        <h2 class="star"><span style="margin-left:40px;"><a href="Login.jsp"></a></span></h2>
        <script>
	function validate() {
		var USERID = document.form.uname.value;
		var PASSWORD = document.form.pass.value;
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

        <form name="login" method="get" action="ValidateUser.jsp"
	onSubmit="javascript:return validate();">
          <table width="271" height="195"  align="center">
            <tr>
              <th colspan="2" ><div align="center"><a href="Login.jsp"><strong>Sign in</strong></a></div></th>
            </tr>
            <tr>
              <td width="108" >User ID</td>
              <td width="200" ><input id="name" name="uname" class="text" style="height:25px; width:150px;"/></td>
            </tr>
            <tr>
              <td height="44" >Password</td>
              <td ><input id="password" name="pass" class="text" type="password" style="height:25px; width:150px;"/></td>
            </tr>
            <tr>
              <td height="42" >
                
                <div align="center">
                  <input name="image" type="image" class="button" style="margin-left:20px; margin-right:auto;" value="Submit" src="images/submit.gif" align="left"/>
              </div></td>
              <td height="42" ><div align="center"><a href="Registration.jsp"> New User? <font size="+1"> Sign Up</font></a></div></td>
             </tr>
            <tr>
              <td height="42" colspan="2"><div align="center"><a href="forgotpass.jsp"> Forgot <font size="+1"> Password !</font></a></div></td>
            </tr>
          </table>
          <label for="name"></label>
          <p><label for="password"></label></p>
        </form>
        </div>
      </div>
</body>
</html>