<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!doctype html>
<html class="no-js" lang="zxx">
<head>
     
    <!--====== USEFULL META ======-->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="App, Landing, Business, Onepage, Html, Business" />

    <!--====== TITLE TAG ======-->
    <title>Online test </title>

    <!--====== FAVICON ICON =======-->
    <link rel="shortcut icon" type="image/ico" href="assest/img/favicon.ico" />

    <!--====== STYLESHEETS ======-->
    <link href="assest/css/plugins.css" rel="stylesheet">
    <link href="assest/css/theme.css" rel="stylesheet">
    <link href="assest/css/icons.css" rel="stylesheet">

    <!--====== MAIN STYLESHEETS ======-->
    <link href="style.css" rel="stylesheet">
    <link href="assest/css/responsive.css" rel="stylesheet">

    <script src="assest/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body data-spy="scroll" data-target=".mainmenu-area" data-offset="90">
<%
   if(session.getAttribute("username")==null){
	   response.sendRedirect("login.jsp");
   }

response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", 0);
    
%>


    <!--- PRELOADER -->
    <div class="preeloader">
        <div class="preloader-spinner"></div>
    </div>

    <!--SCROLL TO TOP-->
    <a href="#scroolup" class="scrolltotop"><i class="fa fa-long-arrow-up"></i></a>

    <!--START TOP AREA-->
    <header class="top-area" id="home">
        <div class="header-top-area" id="scroolup">
            <!--MAINMENU AREA-->
            <div class="mainmenu-area" id="mainmenu-area" style="background-color:black;" >
                <div class="mainmenu-area-bg"></div>
                <nav class="navbar" style="background-color:black;">
                    <div class="container">

                        <div id="main-nav" class="stellarnav" style="background-color:black;">
                        	<ul id="nav" class="nav navbar-nav pull-left">
                                <li class="active"><a href="#home" style="font-weight: bold;font-style: oblique;font-family:'Sofia'; font-size: 30px;"><img src="assest/img/favicon.ico"></a></li>
                            </ul>
                            <ul id="nav" class="nav navbar-nav pull-right">
                                <li class="active"><a href="home.jsp">Home</a></li>                                
                                <li><a href="#courses">Courses</a></li>                                
                                <li><a href="#blog">Blog</a></li>                                
                                <li><a href="feedback.jsp">Feedback</a></li>
                                <li><a href="logout"><button class="btn btn-outline-success"type="button" style="background-color:green;">LOG OUT</button></a></li>
                                <br><li style = "font-color : white; font-size:30px;align:center;right:40%;top:17%"> Principle of Management</li>
                               <li style = "color : '#b30000'; font-size:20px;align:center;right:10%;top:17%;">Time Remaining:                               
                               <span id='timer' style="font-size:20px;color:'red';"></span>
                               </li>
           
                                <script>
                                var myTime=setInterval(function(){myTimer()},1000);                    //explain?
                                var time="00:02:30";
                                function myTimer(){
                                	var  hr=0;
                                	var min=0;
                                	var sec=0;
                                	
                                	var st=time.split(":");
                                	
                                	hr=parseInt(st[0]);
                                	min=parseInt(st[1]);
                                	sec=parseInt(st[2]);
                                	
                                	if(sec==0){
                                		if(min>0){
                                			min--;
                                			sec=59;
                                		}
                                		else if(hr>0){
                                			hr--;
                                			min=59;
                                			sec=59;
                                		}
                                		else{
                                			 document.getElementById("myform").submit();                   //why?
                                		}
                                	}
                                	else{
                                		sec--;
                                	}
                                	
                                	if(hr<10){
                                		hr="0"+hr;
                                	}
                                	if(min<10){
                                		min="0"+min;
                                	}
                                	if(sec<10){
                                		sec="0"+sec;
                                	}
                                	
                                	time=hr+":"+min+":"+sec;
                                	document.getElementById("timer").innerHTML=time;                           //why?
                                	}  
                                
                           </script> 
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
            <!--END MAINMENU AREA END-->
        </div>
        
        <div class = "container">
          <pre>
          
          
          
          
          
          
          
          
                                <h1>Instructions:</h1>
          <h4>1. The Test consists of 10 questions.</h4>
          <h4>2. The total time to attempt all the question is 2 minutes 30 seconds. </h4>
          <h4>3. The test will automatically be submitted after the time is over.</h4>
                                 <h2>Good Luck!</h2>
          </pre>
        </div>
      
    </header>
     

 <br>      
 <div class = "conatiner">
                       
<form action="checking" method = "post" id = "myform">
<br><br>
<h4>1)Management is a creative and ________ process.</h4>
<label class="radio-inline">
<input type="radio" name="ans1" value="1"> 1.  Continuous
<br>
<input type="radio" name="ans1" value="2"> 2. Technical
<br>
<input type="radio" name="ans1" value="3"> 3. Democratic
<br>
<input type="radio" name="ans1" value="4"> 4. None of the above
</label><br><br><br>

<h4>2)Which type of strategies do professional managers help organizations in chalking out?</h4>
<label class="radio-inline">
<input type="radio" name="ans2" value="1">1. Multi-disciplinary
<br>
<input type="radio" name="ans2" value="2">2. Corporate
<br>
<input type="radio" name="ans2" value="3">3. Managerial
<br>
<input type="radio" name="ans2" value="4">4. All of the above
</label><br><br><br>

<h4>3)Limitation(s) of control is (are) </h4>
<label class="radio-inline">
<input type="radio" name="ans3" value="1">1. external factors
<br>
<input type="radio" name="ans3" value="2">2. fixing of responsibility
<br>
<input type="radio" name="ans3" value="3">3. variation and its causes
<br>
<input type="radio" name="ans3" value="4">4. All of the above
</label><br><br><br>

<h4>4)Management is said to be the combination of </h4>
<label class="radio-inline">
<input type="radio" name="ans4" value="1">1. arts, science and profession
<br>
<input type="radio" name="ans4" value="2">2. arts, science and engineering
<br>
<input type="radio" name="ans4" value="3">3. arts, commerce and science
<br>
<input type="radio" name="ans4" value="4">4. arts, commerce and principles
</label><br><br><br> 

<h4>5)_______ is supposed to be immutable, unchanging and eternal. </h4>
<label class="radio-inline">
<input type="radio" name="ans5" value="1">1. Policy
<br>
<input type="radio" name="ans5" value="2">2.  Vision
<br> 
<input type="radio" name="ans5" value="3">3. Mission
<br>
<input type="radio" name="ans5" value="4">4. All the above are correct.
</label><br><br><br>

<h4>6)Costliness of the ________ is the overriding factor determining the extent of decentralization. </h4>
<label class="radio-inline">
<input type="radio" name="ans6" value="1">1. Decision
<br>
<input type="radio" name="ans6" value="2">2. Staffing
<br>
<input type="radio" name="ans6" value="3">3. Both (A) and (B)
<br>
<input type="radio" name="ans6" value="4">4. None of the above
</label><br><br><br>

<h4>7)The heart of administration is the ___ function. </h4>
<label class="radio-inline">
<input type="radio" name="ans7" value="1">1. Directing
<br>
<input type="radio" name="ans7" value="2">2. Organizing
<br>
<input type="radio" name="ans7" value="3">3. Controlling
<br>
<input type="radio" name="ans7" value="4">4. Cooperating
</label><br><br><br>

<h4>8)The different A’s of the service sector are </h4>
<label class="radio-inline">
<input type="radio" name="ans8" value="1">1. acceptability , awareness , adaptability
<br>
<input type="radio" name="ans8" value="2">2. acceptability , awareness , availability
<br>
<input type="radio" name="ans8" value="3">3. adaptability , awareness , availability
<br>
<input type="radio" name="ans8" value="4">4. acceptability , adaptability , availability 
</label><br><br><br>

<h4>9)What articulates the long-term goals of an enterprise? </h4>
<label class="radio-inline">
<input type="radio" name="ans9" value="1">1. Policies
<br>
<input type="radio" name="ans9" value="2">2. Vision statement
<br>
<input type="radio" name="ans9" value="3">3. Both (A) and (B)
<br>
<input type="radio" name="ans9" value="4">4. None of the above
</label><br><br><br>

<h4>10)Direction is a ________ function performed by all the managers at all levels of the organization. </h4>
<label class="radio-inline">
<input type="radio" name="ans10" value="1">1.  Managerial
<br>
<input type="radio" name="ans10" value="2">2. Organizational
<br>
<input type="radio" name="ans10" value="3">3. Both (A) and (B)
<br>
<input type="radio" name="ans10" value="4">4. None of the these
</label><br><br><br>

<pre>

<div class="centers">
<h4 ><input type="Submit" style="background-color:green;color:white;height:50px;width:100px" ></h4>
</div>
</pre>
 </form>           
</div>
<script>
   window.onunload = function(){}
</script>
<%	
	String pom="pom";
	session.setAttribute("subject",pom);			//setting attribute with the subject name.
%>
    <!--====== SCRIPTS JS ======-->
    <script src="assest/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="assest/js/vendor/bootstrap.min.js"></script>

    <!--====== PLUGINS JS ======-->
    <script src="assest/js/vendor/jquery.easing.1.3.js"></script>
    <script src="assest/js/vendor/jquery-migrate-1.2.1.min.js"></script>
    <script src="assest/js/vendor/jquery.appear.js"></script>
    <script src="assest/js/owl.carousel.min.js"></script>
    <script src="assest/js/stellar.js"></script>
    <script src="assest/js/waypoints.min.js"></script>
    <script src="assest/js/jquery.counterup.min.js"></script>
    <script src="assest/js/wow.min.js"></script>
    <script src="assest/js/jquery-modal-video.min.js"></script>
    <script src="assest/js/stellarnav.min.js"></script>
    <script src="assest/js/placeholdem.min.js"></script>
    <script src="assest/js/contact-form.js"></script>
    <script src="assest/js/jquery.ajaxchimp.js"></script>
    <script src="assest/js/jquery.sticky.js"></script>

    <!--===== ACTIVE JS=====-->
    <script src="assest/js/main.js"></script>

</body>
</html>