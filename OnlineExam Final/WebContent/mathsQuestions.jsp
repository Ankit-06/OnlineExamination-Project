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
                                <br><li style = "font-color : white; font-size:30px;align:center;right:40%;top:17%"> Maths</li>
                                <li style = "color : '#b30000'; font-size:20px;align:center;right:10%;top:17%;">Time Remaining:                               
                                <span id='timer' style="font-size:20px;color:'red';"></span>
                                </li>                                  
 
                                <script>
                                var myTime=setInterval(function(){myTimer()},1000);                    
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
                                			 document.getElementById("myform").submit();                   
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
                                	document.getElementById("timer").innerHTML=time;                          
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
<h4>1). Which of the following represents the set A = {11, 13, 15, 17, 19}?</h4>
<label class="radio-inline">
<input type="radio" name="ans1" value="1"> 1. A = { x:x is a natural number greater than 11}
<br>
<input type="radio" name="ans1" value="2"> 2. A = { x:x is an odd number greater than 11}
<br>
<input type="radio" name="ans1" value="3"> 3. A = { x:x is a odd number between 10 to 20}
<br>
<input type="radio" name="ans1" value="4"> 4. A = { x:x is a natural number less than 20} 
</label><br><br><br>

<h4>2)Which of the following is a null ( or empty) set?</h4>
<label class="radio-inline">
<input type="radio" name="ans2" value="1">1. { x:x is a natural number and x2 + 1 = 10 }
<br>
<input type="radio" name="ans2" value="2">2. { x:x is a natural number and x2  = 121 }
<br>
<input type="radio" name="ans2" value="3">3. { x:x is a natural number and x2 = – 10 }
<br>
<input type="radio" name="ans2" value="4">4. { x:x is a natural number and x2 ≤ 100 }
</label><br><br><br>

<h4>3)Let a set S = {2, 4, 8, 16, 32} and <= be the partial order defined by S <= R if a divides b. Number of edges in the Hasse diagram of is ______</h4>
<label class="radio-inline">
<input type="radio" name="ans3" value="1">1. 6
<br>
<input type="radio" name="ans3" value="2">2. 5
<br>
<input type="radio" name="ans3" value="3">3. 9
<br>
<input type="radio" name="ans3" value="4">4. 4
</label><br><br><br>

<h4>4)A partial order P is defined on the set of natural numbers as follows. Here a/b denotes integer division. i)(0, 0) ∊ P. ii)(a, b) ∊ P if and only if a % 10 ≤ b % 10 and (a/10, b/10) ∊ P. Consider the following ordered pairs:</h4>
<label class="radio-inline">
<input type="radio" name="ans4" value="1">1. (145, 265) and (0, 153)
<br>
<input type="radio" name="ans4" value="2">2. (22, 101) and (0, 153)
<br>
<input type="radio" name="ans4" value="3">3. (101, 22) and (145, 265)
<br>
<input type="radio" name="ans4" value="4">4. (101, 22) and (0, 153)
</label><br><br><br> 

<h4>5)Every poset that is a complete semilattice must always be a _______</h4>
<label class="radio-inline">
<input type="radio" name="ans5" value="1">1. sublattice 
<br>
<input type="radio" name="ans5" value="2">2. free lattice
<br> 
<input type="radio" name="ans5" value="3">3. partial lattice
<br>
<input type="radio" name="ans5" value="4">4.  complete lattice
</label><br><br><br>

<h4>6)A sublattice(say, S) of a lattice(say, L) is a convex sublattice of L if _________</h4>
<label class="radio-inline">
<input type="radio" name="ans6" value="1">1. x>=z, where x in S implies z in S, for every element x, y in L
<br>
<input type="radio" name="ans6" value="2">2. x=y and y&lt=z, where x, y in S implies z in S, for every element x, y, z in L
<br>
<input type="radio" name="ans6" value="3">3. x&lt =y&lt =z, where x, y in S implies z in S, for every element x, y, z in L
<br>
<input type="radio" name="ans6" value="4">4. x=y and y>=z, where x, y in S implies z in S, for every element x, y, z in L 
</label><br><br><br>

<h4>7)What is domain of function f(x)= x1/2? </h4>
<label class="radio-inline">
<input type="radio" name="ans7" value="1">1. (2, ∞)
<br>
<input type="radio" name="ans7" value="2">2. (-∞, 1)
<br>
<input type="radio" name="ans7" value="3">3. [0, ∞)
<br>
<input type="radio" name="ans7" value="4">4. None of the mentioned
</label><br><br><br>

<h4>8)If f(x) = x2 + 4 then range of f(x) is given by?</h4>
<label class="radio-inline">
<input type="radio" name="ans8" value="1">1. [4, ∞)
<br>
<input type="radio" name="ans8" value="2">2. (-∞, ∞) – {0}
<br>
<input type="radio" name="ans8" value="3">3. (0, ∞)
<br>
<input type="radio" name="ans8" value="4">4. None of the mentioned
</label><br><br><br>

<h4>9)A graph which has the same number of edges as its complement must have number of vertices congruent to ______ or _______ modulo 4(for integral values of number of edges). </h4>
<label class="radio-inline">
<input type="radio" name="ans9" value="1">1. 6k, 6k-1
<br>
<input type="radio" name="ans9" value="2">2. 4k, 4k+1
<br>
<input type="radio" name="ans9" value="3">3. k, k+2
<br>
<input type="radio" name="ans9" value="4">4. 2k+1, k
</label><br><br><br>

<h4>10)A complete n-node graph Kn is planar if and only if _____________</h4>
<label class="radio-inline">
<input type="radio" name="ans10" value="1">1. n ≥ 6
<br>
<input type="radio" name="ans10" value="2">2. n2 = n + 1
<br>
<input type="radio" name="ans10" value="3">3. n ≤ 4
<br>
<input type="radio" name="ans10" value="4">4. n + 3
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
 String maths="maths";																	
 session.setAttribute("subject",maths);
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