<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Marketing Supermart</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/accordion2.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" charset="utf-8">
	function init() {
		scheduler.config.multi_day = true;
		
		scheduler.config.xml_date="%Y-%m-%d %H:%i";
		scheduler.init('scheduler_here',new Date(2012,12,20),"month");
		/*scheduler.load("./data/events.xml");*/
	}
	
	function show_minical(){
		if (scheduler.isCalendarVisible())
			scheduler.destroyCalendar();
		else
			scheduler.renderCalendar({
				position:"dhx_minical_icon",
				date:scheduler._date,
				navigation:true,
				handler:function(date,calendar){
					scheduler.setCurrentView(date);
					scheduler.destroyCalendar()
				}
			});
	}
</script>



<script src="js/dhtmlxscheduler.js" type="text/javascript" charset="utf-8"></script>
   
<link rel="stylesheet" href="js/dhtmlxscheduler.css" type="text/css" media="screen" title="no title" charset="utf-8">

	<script src="js/ext/dhtmlxscheduler_minical.js" type="text/javascript" charset="utf-8"></script>
	
	
	
<script type="text/javascript" charset="utf-8">
	function init1() {
		scheduler.config.multi_day = true;
		
		scheduler.config.xml_date="%Y-%m-%d %H:%i";
		scheduler.init('scheduler_here1',new Date(2012,12,20),"month");
		/*scheduler.load("./data/events.xml");*/
	}
	
	function show_minical1(){
		if (scheduler.isCalendarVisible())
			scheduler.destroyCalendar();
		else
			scheduler.renderCalendar({
				position:"dhx_minical_icon1",
				date:scheduler._date,
				navigation:true,
				handler:function(date,calendar){
					scheduler.setCurrentView(date);
					scheduler.destroyCalendar()
				}
			});
	}
</script>	
	
<script type="text/javascript" charset="utf-8">
	function init2() {
		scheduler.config.multi_day = true;
		
		scheduler.config.xml_date="%Y-%m-%d %H:%i";
		scheduler.init('scheduler_here2',new Date(2012,12,20),"month");
		/*scheduler.load("./data/events.xml");*/
	}
	
	function show_minical2(){
		if (scheduler.isCalendarVisible())
			scheduler.destroyCalendar();
		else
			scheduler.renderCalendar({
				position:"dhx_minical_icon2",
				date:scheduler._date,
				navigation:true,
				handler:function(date,calendar){
					scheduler.setCurrentView(date);
					scheduler.destroyCalendar()
				}
			});
	}
</script>	

<script type="text/javascript" charset="utf-8">
	function init3() {
		scheduler.config.multi_day = true;
		
		scheduler.config.xml_date="%Y-%m-%d %H:%i";
		scheduler.init('scheduler_here3',new Date(2012,12,20),"month");
		/*scheduler.load("./data/events.xml");*/
	}
	
	function show_minical3(){
		if (scheduler.isCalendarVisible())
			scheduler.destroyCalendar();
		else
			scheduler.renderCalendar({
				position:"dhx_minical_icon3",
				date:scheduler._date,
				navigation:true,
				handler:function(date,calendar){
					scheduler.setCurrentView(date);
					scheduler.destroyCalendar()
				}
			});
	}
</script>
</head>

 
<body class="inner" onload="init();">
<div class="wrapper2">
  <div class="main-container">
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
             <li><a href="login.html">Log In</a></li>
            <li><a href="registration.html">Sign Up</a></li>
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
    </div>
    <div class="clr"></div>
    <!--header end-->
    <!--middle start-->
    <div class="middle-container">
      <div class="mid-project-cen">
        <div class="left-project-cen">
          <h2>Featured Talent - Make your profile stand out</h2>
          <!--<div class="post_deal">
		  	<label><span>Job Name</span><input type="text" value="" class=""  /></label>
			<label><span>Select a Category</span><select><option></option></select></label>
			<label><span>Select a Sub-Category</span><select><option></option></select></label>
			<label><span>Use project template</span><input type="radio" class="" name="a" value="" /><strong>yes</strong>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" class="" name="a" value=""  /><strong>no</strong></label>
			<label><span>Starting Date</span><select class="date"><option>date selection</option></select><select class="month"><option>month selection</option></select><select class="year"><option>year selection</option></select></label>
			<label><span>End Date</span><select class="date"><option>date selection</option></select><select class="month"><option>month selection</option></select><select class="year"><option>year selection</option></select></label>
			<label><span>Location</span><select name="">
			 <option value="1">Country Seleation</option>
                            <option value="2">United States</option>
                            <option value="3">Australia</option>
                            <option value="4">UK</option>
                            <option value="5">Canada</option>
                            <option value="6">New Zealand</option>
			</select></label>
			<label><span>Type</span><select name="">
			 <option value="1">Choose</option>
                            <option value="2">permanent</option>
                            <option value="3">contract</option>
                            <option value="4">parttime</option>
                            <option value="5">others</option>
                            
			</select></label>
				<label><span>Year of experience</span><input type="text" value="" class=""  /></label>
			
			<label><span>Description</span><textarea name="" cols="" rows=""></textarea></label>
			<label><span>Skill requred</span><input type="text" value="" class="" name="" /></label>
			<label><span>Tag Your job</span><input type="text" value="skill,style and anything you want to add on" class="" name="" /></label>
			<label><span>Budge</span><strong class="space">Monthly salary</strong><input type="text" value="" class="month" name=""  /><strong class="space">Additional salary</strong><input type="text" value="" class="month" name=""  /></label>
			<div class="deal_btn">
			  <div class="contanue"><a href="#">Contanue</a></div>
		    <input type="submit" value="Save and post later " name="" class=""  /></div>
		  </div>-->
		  
		  
		  
		  
		  
          <div class="clr"></div>
		  <!--<h2>Make your profile stand out:</h2>-->
          <h4>Featured in (on top of other projects)</h4>
          <div id="pageWrap" class="pageWrap">
            <div class="pageContent">
              <ul class="accordion">
                <li> <a href="#america" onclick="return init();"><label onclick="return init();">Talent category page: $3 per day &nbsp;<span>see example</span></label></a>
				<div style="color:#000; font-weight:bold; margin:5px 0 5px 30px;">Pick the available dates which are in green color:</div>
                  <div id="scheduler_here" class="dhx_cal_container">
      <div class="dhx_cal_navline">
         <div class="dhx_cal_prev_button">&nbsp;</div>
         <div class="dhx_cal_next_button">&nbsp;</div>
         <div class="dhx_cal_today_button"></div>
         <div class="dhx_cal_date"></div>
         <div class="dhx_minical_icon" id="dhx_minical_icon" onclick="show_minical()">&nbsp;</div>
         <!--<div class="dhx_cal_tab" name="day_tab" style="right:204px;"></div>
         <div class="dhx_cal_tab" name="week_tab" style="right:140px;"></div>-->
         <div class="dhx_cal_tab" name="month_tab" style="right:76px;"></div>
      </div>
      <div class="dhx_cal_header">      </div>
      <div class="dhx_cal_data">
      </div>
   </div>
   			
                </li>
                <li> <a href="#antarctica" onclick="return init1();"><label onclick="return init1();">Talent sub-category page/tag page: $2 per day &nbsp;<span>see example</span></label></a>
                 
				 <div style="color:#000; font-weight:bold; margin:5px 0 5px 30px;"> <span style="margin:20px 0 0 0; float:left;">Select a sub-category or tag:</span><textarea cols="25px" style="margin:0 0 0 15px;"></textarea>
				</div>
                  <div style="color:#000; font-weight:bold; margin:0 0 5px 30px;">Pick the available dates which are in green color:</div>
				   
				<div id="scheduler_here1" class="dhx_cal_container">
      <div class="dhx_cal_navline">
         <div class="dhx_cal_prev_button">&nbsp;</div>
         <div class="dhx_cal_next_button">&nbsp;</div>
         <div class="dhx_cal_today_button"></div>
         <div class="dhx_cal_date"></div>
         <div class="dhx_minical_icon" id="dhx_minical_icon1" onclick="show_minical1()">&nbsp;</div>
         <!--<div class="dhx_cal_tab" name="day_tab" style="right:204px;"></div>
         <div class="dhx_cal_tab" name="week_tab" style="right:140px;"></div>-->
         <div class="dhx_cal_tab" name="month_tab" style="right:76px;"></div>
      </div>
      <div class="dhx_cal_header">      </div>
      <div class="dhx_cal_data">
      </div>
   </div>  
			
         
          <script src="js/jquery-1.3.2.js" type="text/javascript" charset="utf-8"></script>
          <script src="js/jquery.accordion.source.js" type="text/javascript" charset="utf-8"></script>
          <script type="text/javascript">
		// <![CDATA[
			
		$(document).ready(function () {
			$('ul').accordion();
		});
				
		// ]]>
	</script>

                </li>
               
              </ul>
			  <div class="proje-butt">
<div class="post-butt"><a href="registration - thankyou.html">Submit</a> </div>
<div class="post-butt" style="margin:0 0 0 20px;"><a href="#">Cancel</a> </div>
<div class="clr"></div>
</div>
            </div>
          <div class="clr"></div>
        </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
    <!--middle end-->
  </div>
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
