
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
    <title>Book My show</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<style>
	.main{
	margin-left:350px;
	margin-right:350px;
	color:white;
	background-color:rgba(0,0,0,0.5);
	}
	body{

 background-image: url("../images/admin1.jpg" );
}
.submain{
background-color:rgba(255, 0, 255,0.3) ;
text-align:center;
}
.btn{
margin-left:130px;
}
	</style>
</head>
<body>
	<div class="container">
		<h1 style="color: white;text-align: center;">Admin update Offer Management System</h1>
		<hr>
		<div class="main">
		<div class="submain">
		<h2>Update offers</h2>
        </div>
		<form action="/saveAddoffer"  
			method="POST">
			
 			<input type="hidden" name="id" value="${addoffer.o_id}"/>
			
			offer_event::<input type="text" name="offer_events"
				placeholder="offer_events" class="form-control mb-4 col-8" value="${addoffer.offer_events}" required>
				
				theatre_offer::<input type="text" name="theatre_offer"
				placeholder="theatre_offer" class="form-control mb-4 col-8" value="${addoffer.theatre_offer}" required>
				
				offer_product::<input type="text" name="offer_product"
				placeholder="offer_product" class="form-control mb-4 col-8" value="${addoffer.offer_product}" required>
				
				theater_discount<input type="number" name="theater_discount"
				placeholder="theater_discount" class="form-control mb-4 col-8" value="${addoffer.theater_discount}" required>
				
				product_discount<input type="number" name="product_discount"
				placeholder="product_discount" class="form-control mb-4 col-8" value="${addoffer.product_discount}" required>
				
				product_url<input type="file" name="product_url"
				placeholder="product_url" class="form-control mb-4 col-8" value="${addoffer.product_url}" required>
				
				<button type="submit" class="btn btn-info col-5"> Update addoffer</button>
		</form>	
		
		<a href = "/offer_index"> Back to Addoffer List</a>
		
		</div>	
		
		
		<hr>
		
		
	</div>
</body>
</html>