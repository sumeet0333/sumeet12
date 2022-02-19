<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <title>Book My show</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="style.css">
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
</style>
<script>
	
 function searchText() {
		var search = document.getElementById("search").value.toLowerCase();
		var match = document.getElementsByClassName("treatre").value;
		var card = document.getElementsByClassName("card-main");
		for (var i = 0; i < card.length; i++) {
			var b = card[i].getElementsByClassName("treatre")[0].innerText;
			var str = "";
			str = (str + b).toLowerCase();
			if (str.includes(search)) {
				card[i].style.display = "block";
			} else {
				card[i].style.display = "none";
			}
		}
	} 
</script>
</head>
<body>
 
	<nav class="navbar navbar-expand-md navbar-dark bg-dark"
		class="container-fluid">
		<div id="mySidebar" class="sidebar">
			<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
			<a href="/bookingHistory1/${c_id}">Booking History</a> 
			<a href="/customer/update">Update Details</a> <a
				href="/customer/delete">Delete Account</a> <a
				href="/customer/change">Change Password</a> <a href="/logout">Logout</a>
		</div>

		<div id="main">
			<button class="openbtn" onclick="openNav()">&#9776;</button>


		</div>
		<a class="navbar-brand" href="#"><img src="../images/pvr logo.png"
			height="50px" width="auto" id="im1"></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#one1">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="one1">
			<form class="form-inline">
				<input class="form-control mr-sm-2" name="search" id="search"
					placeholder="search for movie,theatre,date" style="width: 1300%"
					aria-label="Search" onkeyup="searchText()">
			</form>
			<!--  <form action="" method="get">
       <input type="text" class="form-control" name="q">
       </form> -->
			<ul class="navbar-nav ml-auto">
			<!-- <div class="buton"><a href="#">Movie</a></div>
			<div class="buton"><a href="#">Treatre</a></div> -->
			
			<a href="/searchmovie" class="text" style="color:white;margin-top:15px;"><h3>Movie</h3></a>
			<img src="../images/movieicon1.png" style="height:11%;width:70px;">
			
					
				<!-- </button> -->
				<a href="/searchtreatre" class="text"style="color:white;margin-top:15px;"><h3>Theater</h3></a>
				<img src="../images/treatericon3.png" style="height:11%;width:60px;color:white">
				<!-- <button class="button button1"> -->
					
				<!-- </button> -->
				<a href="/offerview" class="text"style="color:white;margin-top:15px;"><h3>Offer</h3></a>
				<img src="../images/offericon1.png" style="height:11%;width:60px;">
				<!-- <button class="button button1"> -->
			</ul>
		</div>
	</nav>
	<script src="../js/first.js"></script>
	
</body>
</html>