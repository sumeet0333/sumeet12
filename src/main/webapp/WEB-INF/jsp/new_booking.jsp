
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
	<style>
	.submain1{
	/* margin-left:350px;
	margin-right:350px; */
	color:white;
	background-color:rgba(0,0,0,0.5);
	background-color:rgba(255, 0, 255,0.3) ;
color: white;
	}
	body{

 background-image: url("../images/admin1.jpg" );
}
.main1{
 text-align:center;
 color:white;
}
	</style>
</head>
<body>
<jsp:include page="adminheader.jsp"/>

<br>
<br><br>
<br>
	<div class="container">
	<div class="col-md-12">
		<h1 style="color:white; text-align:center">Admin Booking Management System</h1>
		<hr>
		<div class="main1">
		<h2>Save Booking</h2>
</div>
  <div class="submain1">
		<form  action="/saveBooking" 
			method="POST">
			Customer Id::
			<input type="number" name="customer_id"
				placeholder="customer_id" class="form-control mb-4 col-10" required>
				Movie Id
			<input type="number" name="m_id"
				placeholder="m_id" class="form-control mb-4 col-10" required>
				Theater Id
				<input type="number" name="t_id"
				placeholder="t_id" class="form-control mb-4 col-10" required>
				Booking Date
				<input type="date" name="booking_date"
				placeholder="booking_date" class="form-control mb-4 col-10" required>
				Number Of Seats
				<input type="number" name="no_of_seats"
				placeholder="no_of_seats" class="form-control mb-4 col-10" required>
				
				
				<button type="submit" class="btn btn-info col-4" style="margin-left: 20%;"> Save Booking</button>
		</form>
		<a href = "/booking_index"><div class="first1" style="color:white"> Back to booking page</div>
		</div>
		<hr>
		
		
		</div>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>