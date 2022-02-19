<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Booking Management System</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">


<style>

body{
 background-image: url("../images/admin1.jpg" );

background-color: #8f8f8f8f;

}
</style>
</head>


<body>
<jsp:include page="adminheader.jsp"/>
<br>
<br>
<br>
<br>
<div class="container-fluid">
		<h1 style="margin-left:800px;">Booking List</h1>

		<a href="/showNewBookingForm"
			class="btn btn-primary btn-sm mb-3"> Add Booking </a>
			
			
			 
			
			
			
			
			
 
		<table class="table table-striped table-responsive-md" >
			<thead>
				<tr style="background-color: pink;">
				     <th style="color:black">Booking Id</th>
					<th style="color:black">customer_id</th>
					<th style="color:black">movie_id</th>
					<th style="color:black">theatre_id</th>
					<th style="color:black">booking_date</th>
					<th style="color:black">no_of_seats</th>
					<th style="color:black">Actions</th>
				</tr>
			</thead>
			<tbody>
			
			<c:forEach items="${listbooking}" var="booking">
				 <tr style="background-color: cadetblue;">
					<td style="color:black">${booking.id}</td>
					<td style="color:black">${booking.customer_id}</td>
					<td style="color:black">${booking.m_id}</td>
					<td style="color:black">${booking.t_id}</td>
					<td style="color:black">${booking.booking_date}</td>
					<td style="color:black">${booking.no_of_seats}</td>

					<td><a href="/bookingFormForUpdate/${booking.id}" class="btn btn-primary">Update</a> 
						<a href="/deleteBooking/${booking.id}"
						class="btn btn-danger">Delete</a></td>
				</tr>
				</c:forEach>
				
			</tbody>
		</table>
		<form  action="/back_offer" method="GET">
            <button type="submit" style="color: white; background-color:#2E9CCA; padding: 6px 32px; text-align: center; text-decoration: none; 
            border-radius: 4px; display: inline-block; font-size: 100%;">Back</button>
            </form>

		 </div><br><br><br>
		 <jsp:include page="footer.jsp"/>
</body>
</html>