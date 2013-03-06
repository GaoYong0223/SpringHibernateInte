<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Marketing Supermart</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />

<!-- Jquery Validator -->

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="js/jquery.validate.js"></script>

<script language="javascript">
function submitLater()
{
    this.form.action = "registrationsubmitlater";
    this.form.submit();
    return true;
}
</script>

<style type="text/css">
label.error { float: left; display:inline-block; color: red; padding-left: .5em; vertical-align: top; }
p { clear: both; }
</style>

  <script>
  $(document).ready(function(){
    $("#regMarketerForm").validate();
  });
  </script>

</head>
<body class="inner">
<div class="wrapper2">
  <div class="main-container">
    <%@ include file="/WEB-INF/jsp/pub/header.jsp"%>
    <!--middle start-->
    <div class="middle-container">
    
    
    
    
    
    
    
    <div class="accpMain2">
   <h2>
   Tell us more about you
   </h2>

    </div>
    <div class="signUparea">
      <div class="tlusPrtmain">
      
      
      <!--  Form Start -->
      <form:form id="regMarketerForm2" name="regMarketerForm2" method="post" action="registrationsuccess" commandName="user" enctype="multipart/form-data">
      
      <input id="user" name="user" type="hidden" value="${user}"/>
      <form:input name="" type="hidden" path="firstname" value="${user.firstname }"/>
      <form:input name="" type="hidden" path="lastname" value="${user.lastname }"/>
      <form:input name="" type="hidden" path="email" value="${user.email }"/>
      <form:input name="" type="hidden" path="companyname" value="${user.companyname }"/>
      <form:input name="" type="hidden" path="country" value="${user.country }"/>
      <form:input name="" type="hidden" path="username" value="${user.username}"/>
      <form:input name="" type="hidden" path="password" value="${user.password}"/>
      <form:input name="" type="hidden" path="informationsource" value="${user.informationsource}"/>
        <div class="yourInt">
        <p>Input some tags for your interest</p>
        <div class="comntsBox">
        <form:textarea path="description" name="" cols="" rows="" class="required" maxlength="200"/>
        </div>
        </div>
        
                <div class="yourInt">
        <p>Upload your resume/CV</p>
        <div class="browseArea">
          <form:input name="resume" type="file" path="resume" class="required"/>
        </div>
 <div class="browseArea2">
   <div class="nextBtnprt">
   <!--<input class="sbmtMain" name="" type="submit" value="Next" />-->
   <!-- <div class="sbmtMain"><a href="registration-thankyou">Next</a></div> -->
   <input class="sbmtMain2" name="submit" type="submit" value="Next" />
   </div>
      <div class="nextBtnprt2">
      <!-- <div class="sbmtMain"><a href="registration-thankyou">Do it later</a></div>  -->
      <input class="sbmtMain2" name="submit" type="submit" value="Do it later" onclick="submitLater()" />
   
   </div>
   
 </div>
            </div>
        
        
      </form:form>
      <!--  Form End! -->
      </div>
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
      <div class="copy-rttxt">Â© 2013 Marketing Supermart. </div>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
  <div class="clr"></div>
</div>
<!--footer end-->
</body>
</html>
