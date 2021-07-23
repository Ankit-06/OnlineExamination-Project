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
    <title>Online test</title>

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
                                <br><li style = "font-color : white; font-size:30px;align:center;right:40%;top:17%">C Programming</li>
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
<h4>1)What is the 16-bit compiler allowable range for integer constants?</h4>
<label class="radio-inline">
<input type="radio" name="ans1" value="1"> 1. -3.4e38 to 3.4e38
<br>
<input type="radio" name="ans1" value="2"> 2. -32767 to 32768
<br>
<input type="radio" name="ans1" value="3"> 3. -32668 to 32667
<br>
<input type="radio" name="ans1" value="4"> 4. -32768 to 32767
</label><br><br><br>

<h4>2)What will be the output of  following program?</h4>
<pre> 
     main()  
    {printf("javatpoint");  
    main();}
</pre> 
<br>
<label class="radio-inline">
<input type="radio" name="ans2" value="1">1. Wrong statement
<br>
<input type="radio" name="ans2" value="2">2. It will keep on printing javatpoint
<br>
<input type="radio" name="ans2" value="3">3. It will print javatpoint once
<br>
<input type="radio" name="ans2" value="4">4. None of the these
</label><br><br><br>

<h4>3)What is required in each C program?</h4>
<label class="radio-inline">
<input type="radio" name="ans3" value="1">1. The program must have at least one function.
<br>
<input type="radio" name="ans3" value="2">2. The program does not require any function.
<br>
<input type="radio" name="ans3" value="3">3. Input data
<br>
<input type="radio" name="ans3" value="4">4. Output data
</label><br><br><br>

<h4>4)What will this program print? </h4>
<pre>
    main()  
    {  
      int i = 2;  
      {  
        int i = 4, j = 5;  
         printf("%d %d", i, j);  
      }    
      printf("%d %d", i, j);  
    }
</pre>  
<br>
<label class="radio-inline">
<input type="radio" name="ans4" value="1">1. 4525
<br>
<input type="radio" name="ans4" value="2">2. 2525
<br>
<input type="radio" name="ans4" value="3">3. 4545
<br>
<input type="radio" name="ans4" value="4">4. None of these
</label><br><br><br> 

<h4>5)Which of the following comment is correct when a macro definition includes arguments? </h4>
<label class="radio-inline">
<input type="radio" name="ans5" value="1">1. The opening parenthesis should immediately follow the macro name.
<br>
<input type="radio" name="ans5" value="2">2. There should be at least one blank between the macro name and the opening parenthesis.
<br> 
<input type="radio" name="ans5" value="3">3. There should be only one blank between the macro name and the opening parenthesis.
<br>
<input type="radio" name="ans5" value="4">4. All the above comments are correct.
</label><br><br><br>

<h4>6)What is a lint? </h4>
<label class="radio-inline">
<input type="radio" name="ans6" value="1">1. C compiler
<br>
<input type="radio" name="ans6" value="2">2. Interactive debugger
<br>
<input type="radio" name="ans6" value="3">3. Analyzing tool
<br>
<input type="radio" name="ans6" value="4">4. C interpreter
</label><br><br><br>

<h4>7)If abcdefg is the input, the output will be </h4>
<pre>
    main()  
    {  
       char x [10], *ptr = x;  
      scanf ("%s", x);  
      change(&x[4]);  
    }  
     change(char a[])  
     {  
       puts(a);  
     }  
</pre>     
<br>
<label class="radio-inline">
<input type="radio" name="ans7" value="1">1. abcd
<br>
<input type="radio" name="ans7" value="2">2. abc
<br>
<input type="radio" name="ans7" value="3">3. efg
<br>
<input type="radio" name="ans7" value="4">4. Garbage
</label><br><br><br>

<h4>8) What is the output of the following C code if there is no error in stream fp?</h4>
<pre>    
    #include <stdio.h>
    int main()
    {
        FILE *fp;
        fp = fopen("newfile", "w");
        printf("%d\n", ferror(fp));
        return 0;
    }
</pre>
<br>
<label class="radio-inline">
<input type="radio" name="ans8" value="1">1. Compilation error
<br>
<input type="radio" name="ans8" value="2">2. 0
<br>
<input type="radio" name="ans8" value="3">3. 1
<br>
<input type="radio" name="ans8" value="4">4. Any nonzero value 
</label><br><br><br>

<h4>9)What will be the output of this program?</h4>
<pre>
    main()  
    {  
      int a = 1, b = 2, c = 3:  
      printf("%d", a + = (a + = 3, 5, a))  
    }
</pre>      
<br>
<label class="radio-inline">
<input type="radio" name="ans9" value="1">1. 6
<br>
<input type="radio" name="ans9" value="2">2. 9
<br>
<input type="radio" name="ans9" value="3">3. 12
<br>
<input type="radio" name="ans9" value="4">4. 8
</label><br><br><br>

<h4>10)What does this declaration mean?</h4>
<pre>
    int x : 4; 
</pre>     
<br><label class="radio-inline">
<input type="radio" name="ans10" value="1">1.  x is a four-digit integer.
<br>
<input type="radio" name="ans10" value="2">2. X cannot be greater than a four-digit integer.
<br>
<input type="radio" name="ans10" value="3">3. X is a four-bit integer.
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
	String c="c";
	session.setAttribute("subject",c);			//setting attribute with the subject name.
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