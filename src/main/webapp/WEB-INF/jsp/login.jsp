<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<html>
<head>
    <title>Book My show</title>

<script src="https://kit.fontawesome.com/4c2003ff8c.js" crossorigin="anonymous"></script>
<link rel="stylesheet"
href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
crossorigin="anonymous">


<style>

body{
background-image: url("../images/admin1.jpg" ) ;

}
.login-box{
background-color:#DA868A;
}
.input-item {

color: #333;
padding: 4px ;

border-radius: 5px 0px 0px 5px;
}

.head1{
text-align: center;
padding-top: 15px;
color:#DA868A;
background-color:black;
height:70px;

}
</style>
</head>
<body>
<div class="container_login" style="margin-top: 10px; border-radius: 15px; width: 25%; margin-left: 40%; margin-top:10%;">
<div class="card" style="background-color: #DA868A;">
<div style="text-align:center;">
<div class="head1">
<h1>Login Form</h1>
</div>
</div>
<h4 style="color:red;">${msg}</h4>
<form action="/login/login">



<h5 style="padding-left: 50px;">User Name</h5>

<div class="col-auto">
<div class="form-group row">
<label for="inputEmail3" class="col-sm-2 col-form-label" style="padding-left: 60px;"><i class="fa fa-user-circle"></i></label>
<div class="col-sm-10">
<input type="text" name="user" class="form-control" id="inputEmail3" placeholder="userId" >
</div>
</div>
</div>
<h5 style="padding-left: 50px;">Password</h5>
<div class="col-auto">

<div class="form-group row">
<label for="input3" class="col-sm-2 col-form-label" style="padding-left: 60px;"><i class="fa fa-key"></i></i></label>
<div class="col-sm-10">
<input type="password" name="pwd" class="form-control" id="input3" placeholder="userId">
</div>
</div>
</div>

<br>
<div style="text-align: center;">
<input type="submit" class="btn" value="Login" style="text-align:center; background-color: black;color:#DA868A"/>
<p class="para-2">
Not have an account? <a href="/customer/signup1">Sign Up Here</a>
</p>
</div>


</form>
</div>
</div>
</div>



</body>
</html>