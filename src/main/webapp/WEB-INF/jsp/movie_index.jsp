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
		<h1 style="margin-left:800px">Movie List</h1>

		<a href="/showNewMovieForm"
			class="btn btn-primary btn-sm mb-3"> Add movie </a>
				
			
			
			
			 
		</div>
			
			
			
			

		<table class="table table-striped table-responsive-md" id="myTable">
			<thead>
				<tr style="background-color: pink;">
					<th style="color:black"> Movie Id</th>	
					<th style="color:black"> Movie name</th>
					<th style="color:black">Movie dsec</th>
					<th style="color:black">Release date</th>
					<th style="color:black">Duration</th>
					<th style="color:black">Cover photo url</th>
					<th style="color:black">Trailer url</th>
				 <th style="color:black">Action</th>
					
				</tr>
			</thead>
			<tbody>
						<c:forEach items="${listmovie}" var="movie">
			
				<tr style="background-color: cadetblue;">
					<td style="color:black">${movie.m_id}</td>
					<td style="color:black">${movie.movie_name}</td>
					<td style="color:black">${movie.movie_dsec}</td>
					<td style="color:black">${movie.release_date}</td>
					<td style="color:black">${movie.duration}</td>
					<td style="color:black">${movie.cover_photo_url}</td>
					<td style="color:black">${movie.trailer_url}</td>


					<td><a href="/movieFormForUpdate/${movie.m_id}"
						class="btn btn-primary">Update</a> <a
						href="/deletemovie/${movie.m_id}"
						class="btn btn-danger">Delete</a></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		<br>

		 		
		 		<form  action="/back_offer" method="GET">
            <button type="submit" style="color: white; background-color:#2E9CCA; padding: 6px 32px; text-align: center; text-decoration: none; 
            border-radius: 4px; display: inline-block; font-size: 100%;">Back</button>
            </form>
		 		<br><br><br><br><br>
		 <jsp:include page="footer.jsp"/>
</body>
</html>