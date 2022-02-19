<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <title>Book My show</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="style.css">
<style>
@media only screen and (max-width: 100px) {
  body {
   
  }
  .text{
  font-size:50px;
  }
  .btn{
  width:200px;
  }
}
.button {
  border: none;
  color: white;
  padding: 1px 32px;
  border-radius:5px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 24px;
  
  cursor: pointer;
}

.button1 {background-color: #4CAF50;} /* Green */
.button2 {background-color: yellow;} /* Blue */
</style>
</head>
<body>
<nav class="navbar navbar-expand-md navbar-dark bg-dark" class="container-fluid">
     <a class="navbar-brand" href="#">
     
     <img src="../images/pvr logo.png" height="60px" width="380px" id="im1" align="center">
     </a>
     <button class="navbar-toggler"type="button" data-toggle="collapse" data-target="#one1">
         <span class="navbar-toggler-icon"></span>
     </button>
     <div class="collapse navbar-collapse" id="one1">
   
       <ul class="navbar-nav ml-auto">
        
     
         <img src="../images/offericon1.png" style="height:11%;width:60px;">
			<a href="/offerview2" class="text"style="color:white;margin-top:15px;"><h4 style="color:white;">Offer</h4></a>&nbsp
<img src="../images/loginicon1.png" style="height:13%;width:40px;"><a href="/login" class="text"style="color:white;margin-top:15px;"><h4 style="color:white;">login</h4></a></button>
<form class="form-inline">
       <input class="form-control mr-sm-2" type="search" placeholder="search for movie,theatre,date" style="width:700px" aria-label="Search">
       </form>
       </ul>
       

    </div>
    </nav>
</body>
</html>