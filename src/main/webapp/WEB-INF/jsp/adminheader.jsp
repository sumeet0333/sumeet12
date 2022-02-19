<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <title>Book My show</title>
<link rel="stylesheet"
href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
crossorigin="anonymous">


<script src="https://kit.fontawesome.com/4c2003ff8c.js" crossorigin="anonymous"></script>


<script
src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


<script
src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

<style>
@media only screen and (max-width: 100px) {
body {

}
}

.sidebar {
height: 40%;
width: 0;
position: fixed;
z-index: 1;
margin-top: 10px;
top: 0;
left: 0;
background-color: orange;
overflow-x: hidden;
padding-top: 60px;
transition: 0.5s;
border-radius: 2px red solid;
border-radius: 5%;
}

.sidebar a {
padding: 8px 8px 8px 32px;
text-decoration: none;
font-size: 25px;
color: #818181;
display: block;
transition: 0.3s;
border-radius: 2px pink solid;
}

.sidebar a:hover {
color: blue;
}

.sidebar .closebtn {
position: absolute;
top: 0;
right: 25px;
font-size: 36px;
margin-right: 50px;
}

.openbtn {
font-size: 20px;
cursor: pointer;
background-color: rgb(197, 52, 52);
color: white;
padding: 10px 15px;
border: 1px solid rgb(197, 52, 52);
border-radius: 10px;
}

.openbtn:hover {
background-color: rgb(197, 52, 52);
}

#main {
transition: margin-left .5s;
padding: 20px;
}

@media screen and (max-height: 450px) {
.sidebar {
padding-top: 15px;
}
.sidebar a {
font-size: 18px;
}
}

.button {
border: none;
color: red;
padding: 15px 32px;
text-align: center;
text-decoration: none;
display: inline-block;
font-size: 20px;
margin: 4px 2px;
cursor: pointer;
border-radius:10% ;
border:6px pink dashed;
}
.buton{
text-align:center;
}
.main{
position:fixed;
}
.abc{
position:fixed;
width:100%;
z-index: 1;
}
</style>
<script>
function searchText() {

var input, filter, table, tr, td, i, txtValue;
input = document.getElementById("myInput");
filter = input.value.toUpperCase();
table = document.getElementById("myTable");
tr = table.getElementsByTagName("tr");
for (i = 0; i < tr.length; i++) {
td = tr[i].getElementsByTagName("td")[1];
if (td) {
txtValue = td.textContent || td.innerText;
if (txtValue.toUpperCase().indexOf(filter) > -1) {
tr[i].style.display = "";
} else {
tr[i].style.display = "none";
}
}
}
}

</script>
</head>
<body>
<div class="abc">
<nav class="navbar navbar-expand-md navbar-dark bg-dark"
class="container-fluid">


<a class="navbar-brand" href="#">
<img src="../images/pvr logo.png"
height="50px" width="auto" id="im1"></a>
<button class="navbar-toggler" type="button" data-toggle="collapse"
data-target="#one1">
<span class="navbar-toggler-icon"></span>
</button>
<div class="collapse navbar-collapse" id="one1">
<form class="form-inline">
<input class="form-control mr-sm-2" name="search" id="myInput"
placeholder="search for movie,theatre,date" style="width: 1300%"
aria-label="Search" onkeyup="searchText()">
</form>
<!-- <form action="" method="get">
<input type="text" class="form-control" name="q">
</form> -->
<ul class="navbar-nav ml-auto">
<!-- <div class="buton"><a href="#">Movie</a></div>
<div class="buton"><a href="#">Treatre</a></div> -->

<!-- <button class="button button1"> -->
<a href="/customer_index" class="text" style="color:white;margin-top:15px;"><h5><i class="fas fa-users"></i>Customer </h5></a>
<!-- </button> -->&nbsp&nbsp&nbsp&nbsp&nbsp
<a href="/movie_index" class="text" style="color:white;margin-top:15px;"><h5><i class="fas fa-video"></i>Movie </h5></a>
<!-- </button> -->&nbsp&nbsp&nbsp&nbsp&nbsp

<a href="/offer_index"class="text"style="color:white;margin-top:15px;"><h5><i class="fas fa-mug-hot"></i>Offer </h5></a>
<!-- </button> -->&nbsp&nbsp&nbsp&nbsp&nbsp

<a href="/theatre_index"class="text"style="color:white;margin-top:15px;"><h5><i class="fas fa-theater-masks"></i>Theatre </h5></a>&nbsp&nbsp&nbsp&nbsp
<a href="/booking_index" class="text"style="color:white;margin-top:15px;"><h5><i class="far fa-bookmark"></i>Booking </h5></a>&nbsp&nbsp&nbsp&nbsp&nbsp
<a href="/movietheatre_index" class="text"style="color:white;margin-top:15px;"><h5> <i class="fas fa-video"></i>Movie Theatre </h5></a>&nbsp&nbsp&nbsp&nbsp&nbsp
<a href="/payment_index" class="text"style="color:white;margin-top:15px;"><h5><i class="fas fa-money-check-alt"></i>Payment </h5></a>&nbsp&nbsp&nbsp&nbsp&nbsp
<a href="/logout" class="text"style="color:white;margin-top:15px;"><h5><i class="fas fa-sign-out-alt"></i>Logout </h5></a>&nbsp&nbsp&nbsp

</ul>
</div>
</nav>
<script src="../js/first.js"></script>
</div>
</body>
</html>