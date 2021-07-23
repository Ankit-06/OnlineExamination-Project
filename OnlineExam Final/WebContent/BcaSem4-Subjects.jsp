<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Subjects</title>
        <link rel="stylesheet" href="assest/allcss.css">
    </head>
    <body>
<%
     if(session.getAttribute("username")==null){
    	 response.sendRedirect("login.jsp");
     }

response.setHeader("cache-control","no-cache,no-store,must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");

  %>       
        <div class="section">
             <h1>Subjects</h1>
      <div class="row1">
       <div class="sec">
         <a href="mcq.jsp"><img src="assest\img\subjects\html.jpg"></a>
      </div>
       <div class="sec">
         <a href="mcq.jsp"><img src="assest\img\subjects\css.jpg"></a>
      </div>
    <div class="sec">
         <a href="javaQuestions.jsp"><img src="assest\img\subjects\java.jpg"></a>
    </div>
    </div>
    <div class="row2">
     <div class="sec">
      <a href="mcq.jsp"><img src="assest\img\subjects\cn.png"></a>
    </div>
   <div class="sec">
      <a href="mcq.jsp"><img src="assest\img\subjects\se.jpg"></a>
    </div>
  </div>
    </div>
    </body>
</html>
