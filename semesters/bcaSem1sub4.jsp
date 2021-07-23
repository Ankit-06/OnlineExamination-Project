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
    
<form action="Checking.jsp" method = "post" id = "myform">
<br><br>
<h4>1)The memory sizes in mainframe computers and advanced technology micro computer are expressed as Answer D</h4>
<label class="radio-inline">
<input type="radio" name="ans1" value="1"> 1. Bytes
<br>
<input type="radio" name="ans1" value="2"> 2. Kilobytes
<br>
<input type="radio" name="ans1" value="3"> 3. Bits
<br>
<input type="radio" name="ans1" value="4"> 4. Megabytes
</label><br><br><br>

<h4>2)Who invented the super computer?Answer B</h4>
<label class="radio-inline">
<input type="radio" name="ans2" value="1"> 1. PT Fransworth
<br>
<input type="radio" name="ans2" value="2"> 2. JH Van Tassell
<br>
<input type="radio" name="ans2" value="3"> 3.  Charles Ginsberg
<br>
<input type="radio" name="ans2" value="4"> 4.  Charles Babbage
</label><br><br><br>

<h4>3)Which of the following items is not used in LAN? Answer B</h4>
<label class="radio-inline"> 
<input type="radio" name="ans3" value="1">1. Computers
<br>
<input type="radio" name="ans3" value="2">2. Modem
<br>
<input type="radio" name="ans3" value="3">3. Printer
<br>
<input type="radio" name="ans3" value="4">4. Cable
</label><br><br><br>

<h4>4)Popular network operating systems include all of the following except? Answer D</h4>
<label class="radio-inline">
<input type="radio" name="ans4" value="1">1. NetWare
<br>
<input type="radio" name="ans4" value="2">2. Windows NT Server
<br>
<input type="radio" name="ans4" value="3">3.  Windows XP Server
<br>
<input type="radio" name="ans4" value="4">4. Microsoft DOS
</label><br><br><br> 

<h4>5)61. _________ is the lower part of TCP/IP whose function is to handle the address part of each packet to enable it to be delivered to the right destination.Answer A </h4>
<label class="radio-inline">
<input type="radio" name="ans5" value="1">1. IP
<br>
<input type="radio" name="ans5" value="2">2. TCP
<br> 
<input type="radio" name="ans5" value="3">3. FTP
<br>
<input type="radio" name="ans5" value="4">4. Telnet
</label><br><br><br>

<h4>6)  Which of the following accesss modifier specifies that one or more declared programming elements are accessible from within the assembly that contains their declaration, not only by the component that declares them? Answer D</h4>
<label class="radio-inline">
<input type="radio" name="ans6" value="1">1. ByRef
<br>
<input type="radio" name="ans6" value="2">2. Protected
<br>
<input type="radio" name="ans6" value="3">3. Default
<br>
<input type="radio" name="ans6" value="4">4. Friend
</label><br><br><br>

<h4>7)A ___________ performs invisible tasks even if you write no code? Answer B</h4>
<label class="radio-inline">
<input type="radio" name="ans7" value="1">1. Destructor
<br>
<input type="radio" name="ans7" value="2">2. constructor
<br>
<input type="radio" name="ans7" value="3">3. function
<br>
<input type="radio" name="ans7" value="4">4. private method
</label><br><br><br>

<h4>8)Which of the following is not correct about the value types and reference types in VB.NET? Answer B</h4>
<label class="radio-inline">
<input type="radio" name="ans8" value="1">1. Dim statement is used to create a variable that represents a value type
<br>
<input type="radio" name="ans8" value="2">2. Data associated with a value type is allocated on the stack
<br>
<input type="radio" name="ans8" value="3">3. Reference types must be instantiated after declaration
<br>
<input type="radio" name="ans8" value="4">4. Data associated with a reference type is allocated on the stack
</label><br><br><br>

<h4>9)The _________________ enable us to pass data between a program and a class. Answer B </h4>
<label class="radio-inline">
<input type="radio" name="ans9" value="1">1. Functions
<br>
<input type="radio" name="ans9" value="2">2. Properties
<br>
<input type="radio" name="ans9" value="3">3. Procedures
<br>
<input type="radio" name="ans9" value="4">4. Variables
</label><br><br><br>

<h4>10)Which is true about the name and text property of a control? Answer A</h4>
<label class="radio-inline">
<input type="radio" name="ans10" value="1">1.  They are the same when the control is first created
<br>
<input type="radio" name="ans10" value="2">2. The text property changes to match any changes in the name property
<br>
<input type="radio" name="ans10" value="3">3. The name property changes to match any changes in the text property
<br>
<input type="radio" name="ans10" value="4">4. They are never the same unless the programmer makes it that way
</label><br><br><br>

<input type="submit">
 </form>           
        
<script type="text/javascript">
      window.onunload =  function(){} 
</script>
</body>
</html>