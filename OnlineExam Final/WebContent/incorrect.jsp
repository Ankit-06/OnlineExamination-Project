<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Incorect Login</title>
</head>
<style>
body{
    background-color: green;
    font-size: 20px;
    line-height: 25px;
}
div{
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: ivory;
    padding: 30px;
    margin:30px;
    margin-top: 40px;
}

a{
    color: black; 
    text-decoration: none;
}

a:hover{
    font-size: 25px;
}

#incorrect{
    color: red;
    font-size: 45px;
    font-weight: bold;
}

</style>

<body>
<div>
    <p id = "incorrect">
         Incorrect Username or Password!! <br>
    </p>
</div>
<div>
    <p>
        <a href="login.jsp">Click here to go to Login Page</a> <br>
        Not a user yet? <a href="register.jsp">Click here to Register</a>
    </p>
</div>

</body>
</html>