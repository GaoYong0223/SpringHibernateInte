<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Marketing Supermart</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />

<!-- Jquery Validator -->

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="js/jquery.validate.js"></script>

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
    
    
    
    
    
    
    
    <div class="accpMain">
   <h2>
   Create a Talent account

   </h2>
   <p>Already have an account? <a href="#url">Sign In</a>. Looking to hire? <a href="#url">Register as a client.</a> </p>
    </div>
    <div class="signUparea">
    <div class="reg2prt">
    <form action="" method="post">
    
    <div class="fstNmePrt">
    <div class="firstnmesec"><form:label path="email">Email Address :</form:label></div>
    <div class="fildssection"><form:input name="" type="text" path="email" class="required email" maxlength="50"/></div>
    </div>
    
    
       <div class="fstNmePrt">
    <div class="firstnmesec"><form:label path="firstname">First Name :</form:label></div>
    <div class="fildssection"><form:input name="" type="text" path="firstname" class="required" maxlength="40"/></div>
    </div>
    
    <div class="fstNmePrt">
    <div class="firstnmesec"><form:label path="lastname">Last Name :</form:label></div>
    <div class="fildssection"><form:input name="" type="text" path="lastname"  class="required" maxlength="40"/></div>
    </div>
    
    <div class="fstNmePrt">
    <div class="firstnmesec"><form:label path="username">Username :</form:label></div>
    <div class="fildssection"><form:input name="" type="text" path="username" class="required" minlength="5" maxlength="40"/></div>
    </div>
    
    <<div class="fstNmePrt">
    <div class="firstnmesec"><form:label path="password">Password :</form:label></div>
    <div class="fildssection"><form:password name="" path="password" class="required" minlength="6" maxlength="20"/></div>
    </div>
    
    <div class="fstNmePrt">
    <div class="firstnmesec">Retype Password :</div>
    <div class="fildssection"><input id="confirmpassword" name="confirmpassword" type="password" value="" class="required" minlength="6" maxlength="20"/></div>
    </div>
    
      <div class="fstNmePrt">
    <div class="firstnmesec"><form:label path="country">Country :</form:label></div>
    <div class="fildssection">
            <form:select class="jmpPrt" name="jumpMenu" path="country">
          <%@ include file="/WEB-INF/jsp/util/countrylist.jsp"%>
        </form:select>
    </div>
    </div>
    
    <div class="fstNmePrt">
    <div class="firstnmesec">Account Type :</div>
    <div class="elance">
    <p>How do you want to represent yourself to clients ?</p>
    <div class="business">
    <div class="indivitual">
    <div class="indvRadio"><input name="" type="radio" value="" /></div>
    <p>Individual </p>
    </div>

    <div class="indivitual">
      <div class="indvRadio">
        <input name="" type="radio" value="" />
      </div>
      <p>Business</p>
    </div>
    </div>
    </div>
    </div>
    
    <div class="fstNmePrt">
    <div class="firstnmesec">Display Name :</div>
    <div class="fildssection"><input name="" type="text" /></div>
    <div class="displayType">
    <div class="indvRadio"><input name="" type="checkbox" value="" /></div>
    <p>Display last initial only.</p>
    </div>
    </div>
    
    <div class="fstNmePrt">
    <div class="firstnmesec"><form:label path="informationsource">How did you hear about us? :</form:label></div>
    <div class="fildssection">

        <form:select class="jmpPrt" name="jumpMenu" path="informationsource" >
           <%@ include file="/WEB-INF/jsp/util/informationsource.jsp"%>
        </form:select>

    </div>
    </div>
    
    
<div class="bigtxtprt">
<div class="sleckboxprt">
  <div class="indvRadio">
    <input name="input3" type="checkbox" value="" />
  </div>
  <div class="slecktxtprt">
  I have read and accept the Marketing supermart Terms of Service .
  </div>
</div>
</div>    
    
    
    
<div class="fstNmePrt">
<div class="continu" style="margin:5px 0 0 190px"><a href="registration-talents-more.html">Continue</a></div>
</div>    
    
    </form>
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
      <div class="copy-rttxt">Â© 2013 Marketing Supermart.  </div>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
  <div class="clr"></div>
</div>
<!--footer end-->
</body>
</html>
