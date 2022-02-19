
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Book My show</title>


<style>

.main{
margin-left:350px;
margin-right:250px;
color:white;
	background-color:rgba(0,0,0,0.5);
}
body{

 background-image: url("../images/admin1.jpg" );
}
.btn{
margin-left:150px;
}
.submain{
text-align:center;
}
.cen{
padding-left:100px;
}
.top{
margin-left:200px;
color:pink;
}
</style>
<meta charset="ISO-8859-1">
<title>Offer Management System</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
	 <div class="top">
		<h1>Admin update Offer Management System</h1>
		</div>
		<hr>
		<div class="main">
		<div class="submain">
		<h2>Update booking</h2>
         </div>
		<form action="/saveBooking"  
			method="POST">
			
 			<input type="hidden" name="id" value="${booking.id}"/>
			<div class="cen">
			customer id::<input type="number" name="customer_id"
				placeholder="customer_id" class="form-control mb-4 col-8" value="${booking.customer_id}" required>
				
			m_id<input type="number" name="m_id"
				placeholder="m_id" class="form-control mb-4 col-8" value="${booking.m_id}" required>
				
				t_id<input type="number" name="t_id"
				placeholder="t_id" class="form-control mb-4 col-8" value="${booking.t_id}" required>
				
				booking_date<input type="date" name="booking_date"
				placeholder="booking_date" class="form-control mb-4 col-8" value="${booking.booking_date}" required>
				
				no of seats::<input type="number" name="no_of_seats"
				placeholder="no_of_seats" class="form-control mb-4 col-8" value="${booking.no_of_seats}" required>
				</div>
				
				
				<button type="submit" class="btn btn-info col-5"> Update booking</button>
		</form>	
		
		<a href = "/booking_index"> Back to booking List</a>
		</div>	
		<hr>
		
		
	</div>
</body>
</html>