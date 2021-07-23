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
                                <br><li style = "font-color : white; font-size:30px;align:center;right:40%;top:17%"> Java Programming</li>
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
<h4>1)Which of the following option leads to the portability and security of Java?</h4>
<label class="radio-inline">
<input type="radio" name="ans1" value="1">1. Bytecode is executed by JVM
<br>
<input type="radio" name="ans1" value="2">2. The applet makes the Java code secure and portable
<br>
<input type="radio" name="ans1" value="3">3. Use of exception handling
<br>
<input type="radio" name="ans1" value="4">4. Dynamic binding between objects
</label><br><br><br>

<h4>2) Which of the following is not a Java features?</h4>
<label class="radio-inline">
<input type="radio" name="ans2" value="1">1. Dynamic
<br>
<input type="radio" name="ans2" value="2">2. Architecture Neutral
<br>
<input type="radio" name="ans2" value="3">3. Use of pointers
<br>
<input type="radio" name="ans2" value="4">4. Object-oriented
</label><br><br><br>

<h4>3)What should be the execution order, if a class has a method, static block, instance block, and constructor, as shown below?</h4>
<pre>
    public class First_C {
      public void myMethod() 
	{
	System.out.println("Method");
	}
	
	{
	System.out.println(" Instance Block");
	}
		
	public void First_C()
	{
	System.out.println("Constructor ");
	}
	static {
		System.out.println("static block");
	}
	public static void main(String[] args) {
	First_C c = new First_C();
	c.First_C();
	c.myMethod();
    }
    } 
</pre>
<br><label class="radio-inline"> 
<input type="radio" name="ans3" value="1">1. Instance block, method, static block, and constructor
<br>
<input type="radio" name="ans3" value="2">2. Method, constructor, instance block, and static block
<br>
<input type="radio" name="ans3" value="3">3. Static block, method, instance block, and constructor
<br>
<input type="radio" name="ans3" value="4">4. Static block, instance block, constructor, and method
</label><br><br><br>

<h4>4) What will be the output of the following program?</h4>
<pre>
public class MyFirst {
      public static void main(String[] args) {
         MyFirst obj = new MyFirst(n);
 }
 static int a = 10;
 static int n;
 int b = 5;
 int c;
 public MyFirst(int m) {
       System.out.println(a + ", " + b + ", " + c + ", " + n + ", " + m);
   }
// Instance Block
  {
     b = 30;
     n = 20;
  } 
// Static Block
  static 
{
          a = 60;
     } 
 }
</pre>
<br><label class="radio-inline">
<input type="radio" name="ans4" value="1">1. 10, 5, 0, 20, 0
<br>
<input type="radio" name="ans4" value="2">2. 10, 30, 20
<br>
<input type="radio" name="ans4" value="3">3. 60, 5, 0, 20
<br>
<input type="radio" name="ans4" value="4">4. 60, 30, 0, 20, 0
</label><br><br><br> 

<h4>5)The \u0021 article referred to as a</h4>
<label class="radio-inline">
<input type="radio" name="ans5" value="1">1. Unicode escape sequence
<br>
<input type="radio" name="ans5" value="2">2. Octal escape
<br>
<input type="radio" name="ans5" value="3">3. Hexadecimal
<br>
<input type="radio" name="ans5" value="4">4. Line feed
</label><br><br><br>

<h4>6) _____ is used to find and fix bugs in the Java programs.</h4>
<label class="radio-inline">
<input type="radio" name="ans6" value="1">1. JVM
<br>
<input type="radio" name="ans6" value="2">2. JRE
<br>
<input type="radio" name="ans6" value="3">3. JDK
<br>
<input type="radio" name="ans6" value="4">4. JDB
</label><br><br><br>

<h4>7) Which of the following is a valid declaration of a char?</h4>
<label class="radio-inline">
<input type="radio" name="ans7" value="1">1. char ch = '\utea';
<br>
<input type="radio" name="ans7" value="2">2. char ca = 'tea';
<br>
<input type="radio" name="ans7" value="3">3. char cr = \u0223;
<br>
<input type="radio" name="ans7" value="4">4. char cc = '\itea';
</label><br><br><br>

<h4>8) What is the return type of the hashCode() method in the Object class?</h4>
<label class="radio-inline">
<input type="radio" name="ans8" value="1">1. Object
<br>
<input type="radio" name="ans8" value="2">2. int
<br>
<input type="radio" name="ans8" value="3">3. long
<br>
<input type="radio" name="ans8" value="4">4. void
</label><br><br><br>

<h4>9)Which of the following is a valid long literal?</h4>
<label class="radio-inline">
<input type="radio" name="ans9" value="1">1. ABH8097
<br>
<input type="radio" name="ans9" value="2">2. L990023
<br>
<input type="radio" name="ans9" value="3">3. 904423
<br>
<input type="radio" name="ans9" value="4">4. 0xnf029L
</label><br><br><br>

<h4>10) What does the expression float a = 35 / 0 return?</h4>
<label class="radio-inline">
<input type="radio" name="ans10" value="1">1. 0
<br>
<input type="radio" name="ans10" value="2">2. Not a Number
<br>
<input type="radio" name="ans10" value="3">3. Infinity
<br>
<input type="radio" name="ans10" value="4">4. Run time exception
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
	String java="java";
	session.setAttribute("subject",java);			//setting attribute with the subject name.
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