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
.style1 {
	color: #FFFFFF;
	font-weight: bold;
	font-style: italic;
}
.style2 {color: #FFFFFF}
.style3 {color: #CCFF00}
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
      
      <label>
      <div align="right" class="style1">Welcome<span class="style3"> 
        <% out.println(session.getAttribute("uname")); %>
      </span>      <a href="Login.jsp" class="style2" color:"white" >Sign Out</a>       </div>
      </label>
	  
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
          <li class="active"><a href="adIndex.jsp">Home</a></li>
          <li><a href="Support.jsp">Support</a></li>
          <li><a href="About.jsp">About Us</a></li>
          <li><a href="Contact.jsp">Contact Us</a></li>
          <li><a href="feedback.jsp">Feedback</a></li>
        </ul>
      </nav>

  <div class="content">
    <div class="content_resize">
	  <table align="center">
        <tr align="left" valign="top">
          <td><%@include file="Menu.jsp"%></td>
          <td><div class="button_search">
            <div class="article">
              <h2><span>New Products</span></h2>
              <div class="clr"></div>
             <div id="newest">
                <div class="grid clearfix">
                  <div class="newest-left">
                    <p><a class="next browse right"><img src="images/prev.png" style="padding-left:-15px; margin-top:60px; border:none;"></a></p>
                  </div>
                  <div class="newest">
                    <div class="newest-wrap">
                      <div class="newest-divider">
                        <div class="newest-item">
                          <div class="newest-img"> <a href="#" title="Another Set"><img src="images/img1.jpg" alt="Another Set" width="170" height="145"/></a> </div>
                          <div class="newest-desc">
                            <p>Apple 5s</p>
                          </div>
                        </div>
                        <div class="newest-item">
                          <div class="newest-img"> <a href="#" title="Another Set"><img src="images/img25.jpg" alt="Another Set" width="170" height="116"/></a> </div>
                          <div class="newest-desc">
                            <p>Sony Cybershot</p>
                          </div>
                        </div>
                        <div class="newest-item">
                          <div class="newest-img"><a href="#" title="Another Set"><img src="images/img15.jpg" alt="Another Set" width="170" height="145"/></a></div>
                          <div class="newest-desc">
                            <p>Experia X10 mini</p>
                          </div>
                        </div>
                      </div>
                      <div class="newest-divider">
                        <div class="newest-item">
                          <div class="newest-img"> <a href="#" title="Another Set"><img src="images/img27.jpg" alt="Another Set" width="170" height="145"/></a> </div>
                          <div class="newest-desc">
                            <p>Nikon Coolpics</p>
                          </div>
                        </div>
                        <div class="newest-item">
                          <div class="newest-img"> <a href="#" title="Another Set"><img src="images/img29.jpg" alt="Another Set" width="170" height="145"/></a> </div>
                          <div class="newest-desc">
                            <p>ACER Laptops</p>
                          </div>
                        </div>
                        <div class="newest-item">
                          <div class="newest-img"> <a href="#" title="Another Set"><img src="images/img32.jpg" alt="Another Set" width="170" height="145"/></a> </div>
                          <div class="newest-desc">
                            <p>Macbook Air</p>
                          </div>
                        </div>
                      </div>
                      <div class="newest-divider">
                        <div class="newest-item">
                          <div class="newest-img"> <a href="#" title="Another Set"><img src="images/img55.jpg" alt="Another Set" width="170" height="145"/></a> </div>
                          <div class="newest-desc">
                            <p>Transcend HardDisk</p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="newest-right">
                    <p><a class="prev browse left"><img src="images/next.png" style="padding-left:-35px; margin-top:60px; border:none;"></a></p>
                  </div>
                </div>
              </div> 
                       
                
              
            </div>
            <div class="article">
              <h2><span>Popular Gadgets</span></h2>
              <div class="clr"></div>
              <p>&nbsp;</p>
              <img src="images/img2.jpg" width="182" height="146" alt="image" class="fl" />
              <div class="article">
                <p align="justify"><strong>This project provides online marketplace for Small &amp; Medium Size Businesses, connecting global buyers with Customers. The company offers a platform  tool to over  millions of suppliers to generate business leads from over billions of customers, who use the platform to find reliable &amp; competitive products.</strong></p>
                <p align="justify">Project offers products that enable small &amp; medium size businesses generate business leads, establish their credibility and use business information (feedback) for their business promotion.</p>
              </div>
              
              <p>&nbsp;</p>
              <p class="spec"><a href="#" class="rm"></a> <a href="#" class="com"></a></p>
            </div>
          </div></td>
        </tr>
      </table>
      <div class="clr"></div>
    </div>
  </div>
  
         <div class="gadget">
       
        </div>
      </div>
      <div class="clr"></div>

  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
    <p class="lf"><a href="#"></a></p>
      <ul class="fmenu">
        <li class="active"><a href="adIndex.jsp">Home</a></li>
          <li><a href="adSupport.jsp">Support</a></li>
          <li><a href="adAbout.jsp">About Us</a></li>
          
          <li><a href="adContact.jsp">Contact Us</a></li>
          <li><a href="feedback.jsp">Feedback</a></li>
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
