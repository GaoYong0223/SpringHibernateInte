<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!--header start-->
    <div class="header">
      <div class="logo"><a href="index.html"><img src="images/logo.png" alt="" /></a></div>
      <div class="top-nav">
        <div class="left-navi">
          <ul>
            <li><a href="#">Who<br/>
              <span>we are</span></a></li>
            <li><a href="#">How<br/>
              <span>to contact</span></a></li>
            <li><a href="#">Why<br/>
              <span>Choose us</span></a></li>
            <li><a href="#">How<br/>
              <span>it works</span></a></li>
          </ul>
        </div>
        <div class="top-leftic"><img src="images/f-login.png" alt="" /></div>
        <div class="right-navi">
          <ul>
	         <sec:authorize access="isAuthenticated()">
				<li> Welcome <%= request.getUserPrincipal().getName() %></li>
				<li><a href="<c:url value="/j_spring_security_logout" />" > Logout</a></li>
			</sec:authorize>
			
			<sec:authorize access="isAnonymous()">
				<li><a href="login.html">Log In</a></li>
	           <li><a href="registration.html">Sign Up</a></li>
			</sec:authorize>
            <li><a href="#">Help</a></li>
          </ul>
        </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
      <div class="mid-nav">
        <div class="navigation">
          <ul>
            <li><a href="projects/projects-categories.html">Projects</a></li>
            <li><a href="jobs/jobs-categories.html">Jobs</a></li>
            <li><a href="freelancers/talents-categories.html">Talents</a></li>
            <li><a href="deals/deals-categories.html">Deals</a></li>
          </ul>
        </div>
        <div class="search-box">
          <div class="search-txt"> Search :</div>
          <div class="search-drop">
            <select name="">
              <option>sample 1</option>
              <option>sample 2</option>
            </select>
          </div>
          <div class="search-inn">
            <div class="search-inbox">
              <input name="" type="text" />
            </div>
            <div class="search-ico"><a href="#"><img src="images/search-ic.png" alt="" /></a></div>
            <div class="clr"></div>
          </div>
          <div class="clr"></div>
        </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    <!--header end-->