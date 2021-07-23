<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Registration Page</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->

</head>
<body>
 <%
	response.setHeader("cache-control","no-cache,no-store,must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Expires", "0");
 %>

	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(images/BG-Image.jpg);">
					
				</div>

				<form class="login100-form validate-form" action="register" method="post">
				
				    <div class="wrap-input100 validate-input m-b-26" data-validate="FirstName is required">
						<label class="label-input100">First Name</label>
						<input class="input100" type="text" name="FirstName" placeholder="Enter your First Name">
						<span class="focus-input100"></span>
			    	</div>
				
				    <div class="wrap-input100 validate-input m-b-26" data-validate="LastName is required">
						<label class="label-input100">Last Name</label>
						<input class="input100" type="text" name="LastName" placeholder="Enter your Last Name">
						<span class="focus-input100"></span>
			    	</div>
			    	
				    <div class="wrap-input100 validate-input m-b-26" data-validate="Gender is required">
						<label class="label-input100">Gender</label>
						<div style = " font-family: Poppins-Regular;font-size: 15px;color: #808080;line-height: 1.7;">
						<input type = "radio" name = "sex" id  = "gen1" value = "M" checked> Male <br>
						<input type = "radio" name = "sex" id  = "gen2" value = "F"> Female <br>
						<input type = "radio" name = "sex" id  = "gen3" value = "O"> Other <br>
						</div>
			    	</div>
			    	 
			    	 <div class="wrap-input100 validate-input m-b-26" data-validate="Date of Birth is required">
						<label class="label-input100">Date Of Birth</label>
						<input class="input100" type="date" name="dob" placeholder="Enter your DOB">
						<span class="focus-input100"></span>
					</div>
					 
			    	 <div class="wrap-input100 validate-input m-b-26" data-validate="Contact Number is required">
						<label class="label-input100">Contact Number</label>
						<input class="input100" type="number" name="phoneNumber" placeholder="Enter your Contact Number">
						<span class="focus-input100"></span>
					</div>
			    	 
					<div class="wrap-input100 validate-input m-b-26" data-validate="Email_ID is required">
						<label class="label-input100">Email ID</label>
						<input class="input100" type="email" name="EmailId" placeholder="Enter your Email ID">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<label class="label-input100">Password</label>
						<input class="input100" type="password" name="password" placeholder="Enter password">
						<span class="focus-input100"></span>
					</div>
					
					<br>
					<br>
			
					<div class="container-login100-form-btn"><br><br>
						<button class="login100-form-btn"> 
							Register 
						</button>
					</div>
					
					
					<div style = "text-align : right"> <br><br>
					 Already Registered? <a href = "login.jsp">Click here</a>
					 </div>
					
				</form>
			</div>
		</div>
	</div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>