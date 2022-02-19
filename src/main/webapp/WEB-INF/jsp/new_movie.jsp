<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
    <title>Book My show</title>
<link rel="stylesheet"
href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
crossorigin="anonymous">
<script>
function validateDate() {
	var givendate = document.getElementById("dor").value;
	var today = new Date();
	var dd = String(today.getDate()).padStart(2, '0');
	var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
	var yyyy = today.getFullYear();
	today = yyyy + '-' + mm + '-' + dd;
	if (givendate > today) {
		document.getElementById("msg").style.display = "none";
		document.getElementById("submit").type = "submit";
	} else {
		document.getElementById("msg").style.display = "block";
		document.getElementById("submit").type = "button";
	}
}
function validateDuration() {
	var duration = document.getElementById("m_duration").value;
	if (duration > 60) {
	document.getElementById("msg-dur").style.display = "none";
	document.getElementById("submit").type = "submit";
	} 
	else {
	document.getElementById("msg-dur").style.display = "block";
	document.getElementById("submit").type = "button";
	}
}

</script>

<style>
h1{margin-left:100px;
color:blue;}


.main1{
/* margin-left:300px;
margin-right:300px; */
background-color:rgba(0,0,0,0.5);
color:white;

}
.card1{
background-color:rgba(0,0,0,0.2);
border-radius:5px;
}
.card-body{
background-color:rgba(255, 0, 255,0.3) ;
text-align:center;
border-radius:5px;

}
body{
 background-image: url("../images/admin1.jpg" );



</style>
</head>
<body>
 <jsp:include page="adminheader.jsp" /> 
 <br>
<br><br>
<br>
<div class="container">
<div class="col-md-12">
<h1 style="color:white;text-align:center">Admin Movie Management System</h1>
<hr>

<div class="main1">
<div class="card1">
<div class="card-body">
<h2>Save Movie</h2>
</div>
<form action="/saveMovie"
method="POST">

Movie Name<input type="text" name="movie_name"
placeholder="movie_name" pattern="[a-zA-z]*" class="form-control" required>

<label>Movie Desc</label>
<textarea rows="1" cols="40" name="movie_dsec" c placeholder="movie_dsec" class="form-control mb-4 col-12" required></textarea>



Date of release<input type="date" name="release_date"
placeholder="release_date" class="form-control mb-4 col-12" required id="dor" class="input" name="dor" onblur="validateDate()" required> <br>
				
				 <span id="msg" style="display: none; color: red;">Enter valid release date</span>>

Duration<input type="number" name="duration"
placeholder="duration" id="m_duration" class="form-control mb-4 col-12" onblur="validateDuration()" required>
 <span id="msg-dur" style="display: none; color: red;">Enter valid duration</span>

Movie Image<input type="file" name="cover_photo_url"
placeholder="cover_photo_url" class="form-control mb-4 col-12" required>


Movie Trailer<input type="text" name="trailer_url"
placeholder="trailer_url" class="form-control mb-4 col-12" required>




<c:forEach items="${listtheatre}" var="theatre">
${theatre.theatre_name}<input type="checkbox" name="t_id" value="${theatre.t_id}" >
</c:forEach>


<button type="submit" class="btn btn-info col-6"> Save Movie</button>

</form>



<a href = "/movie_index"> Back to Movie List</a>

</div>
</div>
</div>
</div>
<jsp:include page="footer.jsp"/>

</body>
</html>
