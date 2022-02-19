
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
		<h1 style="margin-left:800px">Theatre List</h1>

		<a href="/showNewTheatreForm"
			class="btn btn-primary btn-sm mb-3"> Add Theatre </a>

		<table class="table table-striped table-responsive-md">
			<thead>
				<tr style="background-color: pink;">
					<th style="color:black">Theatre Id</th>
				
					<th style="color:black">Theatre name</th>
					<th style="color:black">City name</th>
					<th style="color:black">Ticket price</th>
 				 <th style="color:black">Action</th>
					
				</tr>
			</thead>
			<tbody>
		<c:forEach items="${listtheatre}" var="theatre">
			
				<tr style="background-color: cadetblue;">
					<td style="color:black">${theatre.t_id}</td>				
					<td style="color:black">${theatre.theatre_name}</td>
					<td style="color:black">${theatre.city_name}</td>
					<td style="color:black">${theatre.ticket_price}</td>
					 
					 

					<td><a href="/theatreFormForUpdate/${theatre.t_id}"
						class="btn btn-primary">Update</a> <a
						href="/deletetheatre/${theatre.t_id}"
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
		 <br><br><br>
<jsp:include page="footer.jsp"/>
</body>
</html>