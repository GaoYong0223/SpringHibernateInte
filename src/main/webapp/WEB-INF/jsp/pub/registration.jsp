<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Marketing Supermart</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body class="inner">
<div class="wrapper2">
  <div class="main-container">
    <%@ include file="/WEB-INF/jsp/pub/header.jsp"%>
    <!--middle start-->
    <div class="middle-container">
    
    
    
    
    
    
    
    <div class="accpMain">
   <h2>
   Create an account
   </h2>
   <sec:authorize access="isAuthenticated()">
    You have already logged in as <a href =""><%= request.getUserPrincipal().getName() %></a>
    
    </sec:authorize>
    
    <sec:authorize access="isAnonymous()">
   <p>Hello and welcome to Marketing Supermart ! Already have an account? <a href="login">Sign In</a></p>
    </div>
    <div class="signUparea">
    <div class="wantHerePrt">
    <form name="typeForm" action="registrationform" method="post">
    <div class="leftLogin">
      <div class="lftradioIcon"><input name="registType" type="radio" value="marketer"  />
      </div>
      <h4>I want to Hire</h4>
      <p>Find talents, get job done.</p>
      <div class="continuePrt">
      <div class="contLft">
	   
	   
	   <div class="continu"><a href="#" onclick="document.forms['typeForm'].submit(); return false;">Continue</a></div>
      <!--<input class="continu" name="" type="submit" value="Continue" />-->
      </div>
      <div class="signUpPrt">
      <span>or</span>
      <p>Sign up with :</p>
      <div class="fbIcon"><a href="#"><img src="images/fb-icon.png" alt="facebook" /></a></div>
      </div>
      </div>
    </div>
    <div class="iwantWorkRgt">
    <div class="rgtradioIcon"><input name="registType" type="radio" value="talent"  />
    </div>
    <h4>I want to Work</h4>
    <p>Find clients, get hired, get paid.</p>
    </div>
    </form>
    </div>
    </div>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    <div class="clr"></div>
    <div class="clr"></div>
    </sec:authorize>
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
      <div class="copy-rttxt">© 2013 Marketing Supermart.  </div>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
  <div class="clr"></div>
</div>
<!--footer end-->
</body>
</html>
