<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import= "java.io.*" import="java.sql.*"%>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <!--====== USEFULL META ======-->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="App, Landing, Business, Onepage, Html, Business" />

    <!--====== TITLE TAG ======-->
    <title>Result Page</title>

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
            <div class="mainmenu-area" id="mainmenu-area">
                <div class="mainmenu-area-bg"></div>
                <nav class="navbar" style="background-color:black;">
                    <div class="container">

                        <div id="main-nav" class="stellarnav">
                        	<ul id="nav" class="nav navbar-nav pull-left">
                                <li class="active"><a href="#home" style="font-weight: bold;font-style: oblique;font-family:'Sofia'; font-size: 30px;"><img src="assest/img/favicon.ico"></a></li>
                            </ul>
                            <ul id="nav" class="nav navbar-nav pull-right">
                                <li class="active"><a href="home.jsp">Home</a></li>                                
                                <li><a href="#courses">Courses</a></li>                                
                                <li><a href="#blog">Blog</a></li>                                
                                <li><a href="feedback.jsp">Feedback</a></li>
                                <li><a href="logout"><button class="btn btn-outline-success"type="button" style="background-color:green;">LOG OUT</button></a></li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
            <!--END MAINMENU AREA END-->
        </div>
        <div class = "container">
        <pre>
        
        
        </pre>
        </div>
      </header>
<%
  if(session.getAttribute("username")==null){
	  response.sendRedirect("home.jsp");
  }
String email=(String)session.getAttribute("username");
if(session.getAttribute("username") != null) {
%> 
<div class="result">
   
           Total Questions Attempted :<%= session.getAttribute("attempt")  %><br><br>
           No. of Correct Answers    :<%= session.getAttribute("correct")  %><br><br>
           No. of Incorrect Answers  :<%= session.getAttribute("incorrect") %><br><br> 
           Total Score               :<%= session.getAttribute("correct")%>   
           
                <%
                	String str="";
                	String sub=(String)session.getAttribute("subject");
	                switch(sub)
	                {	
		        	  	case "c": str="cScore";							
		        	  	break;
		        	  	
		        	  	case "java": str="javaScore";
		        	  	break;
		        	  	
		        	  	case "it": str="ITScore";
		        	  	break;
		        	  	
		        	  	case "pom": str="pomScore";
		        	  	break;
		        	  	
		        	  	case "de": str="deScore";
		        	  	break;
		        	  	
		        	  	case "maths": str="mathsScore";
		        	  	break;
            	    }
                
                   String Email=(String)session.getAttribute("username");
                   int Score=(int)session.getAttribute("correct");
                   
                   try
                  {
	                   Class.forName("com.mysql.cj.jdbc.Driver");
	                   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinetest","root","12345");
	                  
	                   String query="SELECT EmailId FROM result WHERE EmailId=?";
	                   
	                   PreparedStatement stmt=con.prepareStatement(query);
	                  
	                   stmt.setString(1,Email);
	                   
	                   ResultSet rs=stmt.executeQuery();
	                  
	                   if(rs.next()){
	                	   query="UPDATE result SET"+" "+str+" "+"= ? WHERE EmailId=?";
	                	   
	                	   stmt=con.prepareStatement(query);
	 	                  
		                   stmt.setInt(1,Score);
		                   stmt.setString(2,Email);
		                   
		                   stmt.execute();
	                   }
	                   else{
	                	  query="insert into result (EmailId,"+str+")" + "values(?,?)";
	                	  
	                	  stmt=con.prepareStatement(query);
	 	                  
		                  stmt.setString(1,Email);
		                  stmt.setInt(2,Score);
		                  
		                  stmt.execute();
	                   }
	                   con.close();
                  } catch(Exception e){
                	  e.printStackTrace();
                  }
                %>
     
</div>
        

      <%   
        session.removeAttribute("attempt");
        session.removeAttribute("correct");
        session.removeAttribute("incorrect");
        
        session.invalidate();
        
        response.setHeader("Cache-Control","no-cache");
        response.setHeader("Cache-Control","no-store");
        response.setHeader("Pragma","no-cache");
        response.setDateHeader ("Expires", 0);
        
} else {
    session.setAttribute("username", email);
    // now add the other attributes.
}
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