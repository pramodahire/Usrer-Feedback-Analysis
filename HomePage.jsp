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
.style4 {padding:0; margin:0; width:100%; line-height:0px; clear: both;}
.style5 {color: #333333; font-weight: bold;}
.style6 {font-size: small}
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
          <li class="active"><a href="HomePage.jsp">Home</a></li>
          <li><a href="NewSupport.jsp">Support</a></li>
          <li><a href="NewAbout.jsp">About Us</a></li>
          <li><a href="NewContact.jsp">Contact Us</a></li>
          <li><a href="NewFeedback.jsp">Feedback</a></li>
        </ul>
      </nav>
    
  
  <div class="content">
    <div class="content_resize">
      <table>
        <tr align="left" valign="top">
          <td valign="top"><span class="style6">
            <%@include file="SignIn.jsp"%>
          </span></td>
          <td valign="top"><div class="mainbar style6">
            <div class="article">
                             
                  <blockquote><blockquote><blockquote><blockquote><h2>Introduction</h2>
                    </blockquote>
                  </blockquote>
                </blockquote>
              </blockquote>
              <div class="style4"></div>
              <div id="newest">
                <div class="grid clearfix"></div>
              </div>
            </div>
            <div class="article">
                    
           <blockquote><blockquote><blockquote><blockquote><h2>What is Sentiment or Feedback analysis ? </h2>
                      <p>&nbsp;</p>
                    </blockquote>
                  </blockquote>
                </blockquote>
              </blockquote>
              <div class="article">
                
                 
                  <blockquote><blockquote><blockquote><blockquote><p><strong>The process of computationally identifying and categorizing opinions expressed in a piece of text, especially in order to determine whether the writer's attitude towards a particular topic, product, etc. is positive, negative.</p>
                      </blockquote>
                    </blockquote>
                  </blockquote>
                </blockquote>
              </div>
              
                
                <blockquote><blockquote><blockquote><blockquote><p class="style5">What is NLP &amp; AI ?</p>
                    </blockquote>
                  </blockquote>
                </blockquote>
              </blockquote>
              <div class="article">
                
                  
                  <blockquote><blockquote><blockquote><blockquote><p><strong>Natural Language Processing is a field of computer science, artificial intelligence, and computational linguistics concerned with the interactions between computers and human (natural) language. As such, NLP is related to the area of human-computer interaction.</p>
                      </blockquote>
                    </blockquote>
                  </blockquote>
                </blockquote>
              </div>
              
               
                <blockquote><blockquote><blockquote><blockquote><p class="style5">&nbsp;</p>
                      <p class="spec">&nbsp; </p>
                    </blockquote>
                  </blockquote>
                </blockquote>
              </blockquote>
            </div>
          </div></td>
        </tr>
      </table>
	
      <div class="clr"></div>
    </div>
  </div>
         
</div>

      <div class="clr"></div>
    

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
         <div align="right"><span class="style7">&copy; Copyright 2016</span></div>
       </blockquote>
       
    </div>
  </div>
  
</div>
</body>

</html>
