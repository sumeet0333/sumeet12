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


 
</head>
<body>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
	<div class="container my-2">
		<h1>Movie List</h1>
<
		 
		<table border="1" class="table table-striped table-responsive-md">
			<thead>
				<tr>
					<th> movie name</th>
					 
					 
					<th>cover photo url</th>
					 
				 
					
				</tr>
			</thead>
			<tbody>
						<c:forEach items="${movie}" var="movie">
			
				<tr>
					<td>${movie.movie_name}</td>
					
				
					
					<td>${movie.cover_photo_url}</td>
					


					 
				</tr>
				</c:forEach>
			</tbody>
		</table>
		<br>

		 		
		 
</body>
</html>