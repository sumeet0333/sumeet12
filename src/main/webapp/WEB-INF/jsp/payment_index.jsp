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
 background-image: url("../images/admin1.jpg" );

background-color: #8f8f8f8f;

}

</style>
</head>
<body>
<jsp:include page="adminheader.jsp"/>

<br>
<br><br>
<br>

	<div class="container-fluid">
		<h1 style="margin-left:800px">Payment List</h1>

		<a href="/showNewPaymentForm"
			class="btn btn-primary btn-sm mb-3"> Add payment </a>

		<table class="table table-striped table-responsive-md">
			<thead>
				<tr style="background-color: pink;">
				<th style="color:black">Payment Id</th>
					<th style="color:black">payment_mode/card</th>
					<th style="color:black">coustomer_id</th>
					<th style="color:black">amount</th>
					<th style="color:black">crdexp_date</th>
					<th style="color:black"> Pay status</th>
					<th style="color:black">holder Name</th>
					<th style="color:black">card_number</th>
					<!-- <th style="color:black">cvv</th> -->
					
 				 <th style="color:black">Action</th>
					
				</tr>
			</thead>
			<tbody>
			
			<c:forEach items="${listpayment}" var="payment">
				
				<tr style="background-color: cadetblue;">
					<td style="color:black">${payment.id}</td>
					<td style="color:black">${payment.payment_mode}</td>
					<td style="color:black">${payment.coustomer_id}</td>
					<td style="color:black">${payment.amount}</td>
					<td style="color:black">${payment.cardexp_date}</td>
					<td style="color:black">${payment.payment_status}</td>
					 <td style="color:black">${payment.card_holder}</td>
					 <td style="color:black">${payment.card_number}</td>
<%-- 					 <td style="color:black">${payment.cvv}</td>
 --%>
					<td><a href="/paymentFormForUpdate/${payment.id}"
						class="btn btn-primary">Update</a> <a
						href="/deletepayment/${payment.id}"
						class="btn btn-danger">Delete</a></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
<br>

		 		
		 </div>
		 <form  action="/back_offer" method="GET">
            <button type="submit" style="color: white; background-color:#2E9CCA; padding: 6px 32px; text-align: center; text-decoration: none; 
            border-radius: 4px; display: inline-block; font-size: 100%;">Back</button>
            </form>
		 <jsp:include page="footer.jsp"/>
</body>
</html>