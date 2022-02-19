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
	.main1{
/* margin-left:350px;
margin-right:250px; */
color:white;
	background-color:rgba(0,0,0,0.5);
}
body{

 background-image: url("../images/admin1.jpg" );
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
		<h1 style="color:white;text-align:center">Admin payment Management System</h1>
		<hr>
		<div class="main1">
		<h2>Save payment</h2>

		<form action="/savePayment" 
			method="POST">
			payment mode:;<input type="text" name="payment_mode"
				placeholder="payment_mode" pattern="[a-zA-z]*" class="form-control mb-4 col-8" required>
		
		customer_id::<input type="number" name="coustomer_id"
				placeholder="coustomer_id" class="form-control mb-4 col-8" required>
						
		amount::<input type="number" name="amount"
				placeholder="amount" class="form-control mb-4 col-8" required>
						 		
				Card Exp::<input type="date" name="cardexp_date"
				placeholder="cardexp_date" class="form-control mb-4 col-8" required>
					
				Payment Status::<input type="text" name="payment_status"
				placeholder="payment_status" class="form-control mb-4 col-8" required>
				
				
				Card Holder::<input type="text" name="card_holder"
				placeholder="card_holder" class="form-control mb-4 col-8" required>
				
				Card Number::<input type="number" name="card_number"
				placeholder="card_number" class="form-control mb-4 col-8" required>
				
				Cvv::<input type="number" name="cvv"
				placeholder="cvv" class="form-control mb-4 col-8" required>
				
				
				
				<button type="submit" class="btn btn-info col-5"> Save Payment</button>
		</form>
		<a href = "/payment_index" style="color:white"> Back to Payment List</a>
		</div>
		<hr>
		
		</div>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>