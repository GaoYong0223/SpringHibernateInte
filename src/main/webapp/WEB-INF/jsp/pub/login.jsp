<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Marketing Supermart</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="js/jquery.validate.js"></script>

<style type="text/css">
* 
label { width: 10em; float: left; }
label.error { float: left; display:inline-block; color: red; padding-left: .5em; vertical-align: top; }
p { clear: both; }
</style>

  <script>
  $(document).ready(function(){
    $("#loginForm").validate();
  });
  </script>
</head>
<body class="inner">
<div class="wrapper2">
  <div class="main-container">
   <%@ include file="/WEB-INF/jsp/pub/header.jsp"%>
    <!--middle start-->
    <div class="middle-container">
    
    
    
    
    
    
    
    <div class="accpMain">
   <h2>Log in</h2>
    </div>
    <div class="logmain">
    <sec:authorize access="isAuthenticated()">
    You have already logged in as <a href =""><%= request.getUserPrincipal().getName() %></a>
    </sec:authorize>
    
    <sec:authorize access="isAnonymous()">
     <div class="logMIdPrt">
       <div class="logLftPrt">
       <h3>Welcome to Marketing Supermart</h3>
       <p>A Platform for Marketers and Talent to achive win-win  </p>
       <img src="images/girl-pic.png" alt="images" />
       </div>
       <div class="signInprtSky">
       <div class="signInMainPrt">
       <form name='f' id="loginForm" action="<c:url value='j_spring_security_check' />" method="post">
       <h3>Sign In</h3>
       <div class="userprt">
       <div class="emailPrt">
       <div class="userEmail">Username / Email :</div>
       <div class="filpfilds"><input class="required" type='text' name='j_username' value=''></div>
       </div>
       
       <div class="emailPrt">
       <div class="userEmail">Password :</div>
       <div class="filpfilds"><input type='password' name='j_password' class="required" minlength="6" maxlength="20"  /></div>
       </div>
       
       <c:if test="${not empty error}">
		<div class="emailPrt">
		 	<div class="forgot" style="color:red;">
			${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}<br />
			Please try again.
			 </div>
		</div>
		</c:if>
       
        <div class="emailPrt">
       <div class="forgot"><a href="#">Forgot your Password?</a> </div>
       </div>      
       
   <div class="emailPrt">
       <div class="forgot">
       <div class="keepRadio"><input name="" type="checkbox" value="" /></div>
       <p>Keep me signed in for 2 weeks. [?]</p>
       </div>
       </div> 
       
       
       <div class="emailPrt">
       <div class="forgot">
        <div class="signInPrtBtn">
        <div class="signSubmit">
        <input class="sbmt" name="submit" type="submit"  value="Sign In"/>
        </div>
        <div class="fbShdIcon"><a href="#"><img src="images/f-login.png" alt="facebook" /></a></div>
        </div>
       </div>
       </div>
       
          
       
       
       </div>
       </form>
     
       </div>
       
         <div class="createAc">
         <form action="" method="post">
         <h3>Create an Account</h3>
         <div class="iwanthire">
         <div class="want1">
         <div class="wantRadio"><input name="" type="radio" value="" /></div>
         <p>I want to Hire </p>
         </div>
         <div class="want1">
           <div class="wantRadio">
             <input name="" type="radio" value="" />
           </div>
           <p>I want to Work</p>
         </div>
         </div>
          <div class="continueSec">
          <div class="contBtnSec">
          <input class="cntsbmt" name="" type="submit" value="Continue" /></div>
         <div class="signUptxtPrt">
         <p>Sign up with :</p>
         <div class="pic"><a href="#"><img src="images/fb-icon.png" alt="facebook" /></a></div>
         </div>
          </div>
         </form>
         </div>
       
       
       
       </div>
       
       
     </div> 
	</sec:authorize>
    </div>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    <div class="clr"></div>
    <div class="clr"></div>
    </div>
    <div class="clr"></div>
    <!--middle end-->
  </div>
  <div class="clr"></div>
</div>
<div class="clr"></div>
<!--footer start-->
<div class="footer">
  <div class="footer-main">
    <div class="foot-left">
      <h4>Project Categories</h4>
      <div class="foot-link1">
        <h5>Creative</h5>
        <ul>
          <li><a href="#">Brochure</a></li>
          <li><a href="#">Flyer</a></li>
          <li><a href="#">Photography </a></li>
          <li>&nbsp;</li>
          <li>&nbsp;</li>
          <li>&nbsp;</li>
          <li>&nbsp;</li>
        </ul>
      </div>
      <div class="foot-link1">
        <h5>Content</h5>
        <ul>
          <li><a href="#">Newsletter</a></li>
          <li><a href="#">Annual Report</a></li>
          <li><a href="#">Translation </a></li>
          <li>&nbsp;</li>
          <li>&nbsp;</li>
          <li>&nbsp;</li>
          <li>&nbsp;</li>
        </ul>
      </div>
      <div class="foot-link1">
        <h5>Development</h5>
        <ul>
          <li><a href="#">Website</a></li>
          <li><a href="#">Apps</a></li>
          <li><a href="#">eCommerce </a></li>
          <li>&nbsp;</li>
          <li>&nbsp;</li>
          <li>&nbsp;</li>
          <li>&nbsp;</li>
        </ul>
      </div>
      <div class="foot-link1">
        <h5>Research</h5>
        <ul>
          <li><a href="#">Consumer</a></li>
          <li><a href="#">Brand</a></li>
          <li><a href="#">Competitor </a></li>
          <li>&nbsp;</li>
          <li>&nbsp;</li>
          <li>&nbsp;</li>
          <li>&nbsp;</li>
        </ul>
      </div>
      <div class="foot-link1">
        <h5>Channel</h5>
        <ul>
          <li><a href="#">Leads</a></li>
          <li><a href="#">Telemarketing</a></li>
          <li><a href="#">SEO </a></li>
          <li>&nbsp;</li>
          <li>&nbsp;</li>
          <li>&nbsp;</li>
          <li>&nbsp;</li>
        </ul>
      </div>
      <div class="foot-link2">
        <h5>Planning</h5>
        <ul>
          <li><a href="#">Campaign</a></li>
          <li><a href="#">Media</a></li>
          <li><a href="#">Event </a></li>
          <li>&nbsp;</li>
          <li>&nbsp;</li>
          <li>&nbsp;</li>
          <li>&nbsp;</li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
    <div class="foot-right">
      <h4>Connect with Us</h4>
      <div class="folow-icon">
        <div class="foot-ic"><img src="images/face-ico.png" alt="" /></div>
        <div class="foot-ictxt"><a href="#">Facebook</a></div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
      <div class="folow-icon">
        <div class="foot-ic"><img src="images/twit-ico.png" alt="" /></div>
        <div class="foot-ictxt"><a href="#">Follow on twitter</a></div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
      <div class="folow-icon">
        <div class="foot-ic"><img src="images/rss-ico.png" alt="" /></div>
        <div class="foot-ictxt"><a href="#">Read our blog</a></div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
      <div class="folow-icon">
        <div class="foot-ic"><img src="images/work-ico.png" alt="" /></div>
        <div class="foot-ictxt"><a href="#">Work with us</a></div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
    <div class="copy-box">
      <div class="copy-link"><a href="#">Help</a> | <a href="#">About Us</a> | <a href="#">Guidelines</a> | <a href="#">Press</a> | <a href="#">Terms of use</a> | <a href="#">Privacy Policy</a> | <a href="#">Contact</a></div>
      <div class="copy-rttxt">© 2013 Marketing Supermart. </div>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
  <div class="clr"></div>
</div>
<!--footer end-->
</body>
</html>
