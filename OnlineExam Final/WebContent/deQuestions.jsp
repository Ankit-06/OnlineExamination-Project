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
                                <br><li style = "font-color : white; font-size:30px;align:center;right:40%;top:17%"> Digital Electronics</li>
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
 <div class = "container">
 
 <form action="checking" method = "post" id = "myform">
<br><br>
<h4>1)The binary number 10101 is equivalent to decimal number ______.</h4>
<label class="radio-inline">
<input type="radio" name="ans1" value="1">1. 19
<br>
<input type="radio" name="ans1" value="2">2. 12
<br>
<input type="radio" name="ans1" value="3">3. 27
<br>
<input type="radio" name="ans1" value="4">4. 21
</label><br><br><br>

<h4>2) The NAND gate is AND gate followed by _____.</h4>
<label class="radio-inline">
<input type="radio" name="ans2" value="1">1. NOT gate
<br>
<input type="radio" name="ans2" value="2">2. OR gate
<br>
<input type="radio" name="ans2" value="3">3. AND gate
<br>
<input type="radio" name="ans2" value="4">4. None of the above
</label><br><br><br>

<h4>3) Digital circuit can be made by the repeated use of _____.</h4>
<br><label class="radio-inline"> 
<input type="radio" name="ans3" value="1">1. OR gates
<br>
<input type="radio" name="ans3" value="2">2. Method, constructor, instance block, and static block
<br>
<input type="radio" name="ans3" value="3">3. NAND gates
<br>
<input type="radio" name="ans3" value="4">4.  None of the above
</label><br><br><br>

<h4>4)When an input signal 1 is applied to a NOT gate, the output is _____.</h4>
<br><label class="radio-inline">
<input type="radio" name="ans4" value="1">1. 0
<br>
<input type="radio" name="ans4" value="2">2. 1
<br>
<input type="radio" name="ans4" value="3">3. Either 0 & 1
<br>
<input type="radio" name="ans4" value="4">4. None of the above
</label><br><br><br> 

<h4>5) In Boolean algebra, the bar sign (-) indicates ______.</h4>
<label class="radio-inline">
<input type="radio" name="ans5" value="1">1. OR operation
<br>
<input type="radio" name="ans5" value="2">2. AND operation
<br>
<input type="radio" name="ans5" value="3">3. NOT operation
<br>
<input type="radio" name="ans5" value="4">4. None of the above
</label><br><br><br>

<h4>6)The resolution of an n bit DAC with a maximum input of 5 V is 5 mV. The value of n is ______.</h4>
<label class="radio-inline">
<input type="radio" name="ans6" value="1">1. 8
<br>
<input type="radio" name="ans6" value="2">2. 9
<br>
<input type="radio" name="ans6" value="3">3. 10
<br>
<input type="radio" name="ans6" value="4">4. 11
</label><br><br><br>

<h4>7)2’s complement of binary number 0101 is _______.</h4>
<label class="radio-inline">
<input type="radio" name="ans7" value="1">1. 1011
<br>
<input type="radio" name="ans7" value="2">2. 1111
<br>
<input type="radio" name="ans7" value="3">3. 1101
<br>
<input type="radio" name="ans7" value="4">4. 1110
</label><br><br><br>

<h4>8) An OR gate has 4 inputs. One input is high and the other three are low. The output is _____.</h4>
<label class="radio-inline">
<input type="radio" name="ans8" value="1">1. Low
<br>
<input type="radio" name="ans8" value="2">2. High
<br>
<input type="radio" name="ans8" value="3">3. alternately high and low
<br>
<input type="radio" name="ans8" value="4">4. may be high or low depending on relative magnitude of inputs
</label><br><br><br>

<h4>9)A device which converts BCD to seven segments is called _______.</h4>
<label class="radio-inline">
<input type="radio" name="ans9" value="1">1. Encoder
<br>
<input type="radio" name="ans9" value="2">2. Decoder
<br>
<input type="radio" name="ans9" value="3">3. Multiplexer
<br>
<input type="radio" name="ans9" value="4">4. None of these
</label><br><br><br>

<h4>10) In 2’s complement representation the number 11100101 represents the decimal number _____</h4>
<label class="radio-inline">
<input type="radio" name="ans10" value="1">1. +37
<br>
<input type="radio" name="ans10" value="2">2. -31
<br>
<input type="radio" name="ans10" value="3">3. +27
<br>
<input type="radio" name="ans10" value="4">4. -27
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
 String de="de";																	
 session.setAttribute("subject",de);
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