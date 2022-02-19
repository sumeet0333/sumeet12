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

 }

</style>
</head>
<body>
<jsp:include page="adminheader.jsp"/>

<br>
<br><br>
<br><br>
<br>
	<div class="container my-2">
	<div class="col-md-12">
		<h1 style="color:white; text-align:center">MovieTheatre List</h1>

		 
		<table border="1" class="table table-striped table-responsive-md">
			<thead>
				<tr style="background-color: pink;">
					<th style="color:black">movie_id</th>
					<th style="color:black">theatre_id</th>
					 
					
				</tr>
			</thead>
			<tbody>
						<c:forEach items="${listmovietheatre}" var="movietheatre">
			
				<tr style="background-color: cadetblue;">
					<td style="color:black">${movietheatre.move}</td>
					<td style="color:black">${movietheatre.theatre}</td>
					 

					 
				</tr>
				</c:forEach>
			</tbody>
		</table></div>
		</div>
		<form  action="/back_offer" method="GET">
            <button type="submit" style="color: white; background-color:#2E9CCA; padding: 6px 32px; text-align: center; text-decoration: none; 
            border-radius: 4px; display: inline-block; font-size: 100%;">Back</button>
            </form>
            
  <br><br> <br><br> <br><br>
		<jsp:include page="footer.jsp"/> 
</body>
</html>