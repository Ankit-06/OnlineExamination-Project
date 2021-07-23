<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <title>Bca-Semesters</title>
  </head>
  <body >
  
  <%
     if(session.getAttribute("username")==null){
    	 response.sendRedirect("login.jsp");
     }

response.setHeader("cache-control","no-cache,no-store,must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");

  %>

  <div class="row row-cols-1 row-cols-md-3">
  
  <div class="col mb-4">
    <div class="card">
      <img src="images\Semester 1.jpeg" class="card-img-top" alt="Semester 1">
      <div class="card-body">
        <h5 class="card-title" style="font-size: 50px;">1st Semester</h5>
        <a href="BcaSem1-Subjects.jsp" class="btn btn-primary" style="font-size: 30px; background-color:#2E980E; border-color: #2E980E; float:right;">Subjects</a>
      </div>
    </div>
  </div>

  <div class="col mb-4">
    <div class="card">
      <img src="images\Semester 2.jpeg" class="card-img-top" alt="Semester 2">
      <div class="card-body">
        <h5 class="card-title" style="font-size: 50px;">2nd Semester</h5>
        <a href="BcaSem2-Subjects.jsp" class="btn btn-primary" style="font-size: 30px; background-color:#2E980E; border-color: #2E980E; float:right;">Subjects</a>
      </div>
    </div>
  </div>
  
  <div class="col mb-4">
    <div class="card">
      <img src="images\Semester 3.jpeg" class="card-img-top" alt="Semester 3">
      <div class="card-body">
        <h5 class="card-title" style="font-size: 50px;">3rd Semester</h5>
        <a href="BcaSem3-Subjects.jsp" class="btn btn-primary" style="font-size: 30px; background-color:#2E980E; border-color: #2E980E; float:right;">Subjects</a>
      </div>
    </div>
  </div>
  
  <div class="col mb-4">
    <div class="card">
      <img src="images\Semester 4.jpeg" class="card-img-top" alt="Semester 4">
      <div class="card-body">
        <h5 class="card-title" style="font-size: 50px;">4th Semester</h5>
        <a href="BcaSem4-Subjects.jsp" class="btn btn-primary" style="font-size: 30px; background-color:#2E980E; border-color: #2E980E; float:right;">Subjects</a>
      </div>
    </div>
  </div>
  
  <div class="col mb-4">
    <div class="card">
      <img src="images\Semester 5.jpeg" class="card-img-top" alt="Semester 5">
      <div class="card-body">
        <h5 class="card-title" style="font-size: 50px;">5th Semester</h5>
        <a href="BcaSem5-Subjects.jsp" class="btn btn-primary" style="font-size: 30px; background-color:#2E980E; border-color: #2E980E; float:right;">Subjects</a>
      </div>
    </div>
  </div>
  
  <div class="col mb-4">
    <div class="card">
      <img src="images\Semester 6.jpeg" class="card-img-top" alt="Semester 6">
      <div class="card-body">
        <h5 class="card-title" style="font-size: 50px;">6th Semester</h5>
        <a href="BcaSem6-Subjects.jsp" class="btn btn-primary" style="font-size: 30px; background-color:#2E980E; border-color: #2E980E; float:right;">Subjects</a>
      </div>
    </div>
  </div>

</div> 
 
  </body>
</html>