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

body{

background-color: #8f8f8f8f;
}

</style>
</head>


<body>
<jsp:include page="header1.jsp"/>
	<div class="container my-2">
		<h1 style="margin-left: 420px; color: cadetblue">Booking History</h1>
		<hr>

		
		<!-- <table border="1" class="table table-striped table-responsive-md">
			<thead>
				<tr style="background-color: pink">
					<th>customer_id</th>
					<th>movie_id</th>
					<th>theatre_id</th>
					<th>booking_date</th>
					<th>no_of_seats</th>
				</tr>
			</thead>
			<tbody> -->
			<div class="row">
			
						<div class="card-group" style="text-align: center; margin:8%; ">
			
			<c:forEach items="${bookingdata}" var="booking">
				
				<div class="card border-danger mb-3" style="max-width: 18rem;">
  <div class="card-header" style="background-color: pink; color: black;">Booking Details</div>
  <div class="card-body text-danger">
    <h3 class="card-title">Booking Date:=${booking.booking_date} </h3>
    <h6 class="card-text">Customer Id:=${booking.customer_id}</h6>
        <h6 class="card-text">Theatre Id:=${booking.t_id}</h6>
        <h6 class="card-text">Movie Id:=${booking.m_id}</h6>
          <h6 class="card-text">No of seat:=${booking.no_of_seats}</h6>
        
    
  </div>
  <a href="/deleteHistoryBooking/${booking.id}"
						class="btn btn-danger">Cancel</a></td>
</div>
				
				
				
				
				
				
				
				
				 <%-- <tr>
					<td>${booking.customer_id}</td>
					<td>${booking.m_id}</td>
					<td>${booking.t_id}</td>
					<td>${booking.booking_date}</td>
					<td>${booking.no_of_seats}</td>

					 
				</tr> --%>
				</c:forEach>
				</div>
				</div>
			<!-- </tbody>
		</table> -->
		
</div>
	<jsp:include page="footer.jsp"/>	 
</body>
</html>