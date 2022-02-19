<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en" >
<head>
<meta charset="ISO-8859-1">
    <title>Book My show</title>
<link rel="stylesheet"
href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
crossorigin="anonymous">
<style>
.container{
max-width: 1170px;
}
h1{}


.main{
margin-left:350px;
margin-right:350px;
height:800px;

}
.btn2{
background-color:#DA70D6 ;
width:200px;
height:38px;
}
.first{
margin-left: 120px;
color:white;

}
.card{

background-color:rgba(0,0,0,0.5);
border-radius:20px;

}
.card-body{
background-color:rgba(255, 0, 255,0.3) ;
text-align:center;
border-radius:5px;
}

body{
 background-image: url("../images/admin1.jpg" );


}
h1{ color:white;
text-align: center;}
.btn{margin-left:100px;}
.first1{color:white;}
</style>
</head>
<body>
<div class="container">
<h1>Movie Update form</h1>
<hr>
<div class="main">


<div class="card">
<div class="card-body">

<h2 style="color: white;">Update movie</h2>
</div>

<form action="/saveMovie1" method="POST">

<div class="first">
<label>Movie Name:</label>
<input type="hidden" name="m_id" value="${movie.m_id}" /> 
<input
type="text" name="movie_name" pattern="[a-zA-z]*" placeholder="movie_name"
class="form-control mb-4 col-10" value="${movie.movie_name}" required>

<label>Movie Desc:</label>
<textarea rows="2" cols="40" name="movie_dsec" pattern="[a-zA-z]*"
placeholder="movie_dsec" class="form-control mb-4 col-10" value="${movie.movie_dsec}" required></textarea>

<label>Movie release date:</label>
<input type="date" name="release_date" placeholder="release_date" class="form-control mb-4 col-10" min="2022-01-19" max="2023-01-17" value="${movie.release_date}"required>

<label>Duration of movie:</label>
<input type="number" name="duration" placeholder="duration" class="form-control mb-4 col-10" value="${movie.duration}" required>

<label>Cover photo url:</label>
<input type="file" name="cover_photo_url" placeholder="cover_photo_url" class="form-control mb-4 col-10" value="${movie.cover_photo_url}" required>

<label>trailer url:</label>
<input type="text" name="trailer_url" placeholder="trailer_url" class="form-control mb-4 col-10" value="${movie.trailer_url}" required>



<button type="submit" class="btn btn-info col-6">Update Movie</button>
</div>
</form>
<a href="/movie_index"> Back to Movie List</a>
</div>
</div>


</div>

</body>
</html>