<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <title>Book My show</title>
<style>
.name{
color:black;
}
body{
	background-image:url("../images/banner05.jpg");
	
	
	}  
</style>
</head>
<body>
<jsp:include page="header1.jsp" />    
		<div class="container">
  
 
 
 <form action="/second1" style="width: 100%">
 <div class="row">
				<c:forEach items="${movie1}" var="c">

					<div class="col-md-6 col-lg-3 col-md-4 col-sm-6"
						style="margin-top: 20px;">


						<div class="card card-main" style="background-color: #eeebebc9; border-radius: 9%; background-color: cadetblue;">
							<!-- div class="panel-body text-center" > -->
							<img src="../images/${c.cover_photo_url}"
								style="width: 100%; height: 300px; border-radius:10%;"  class="photo">
							<!-- </div> -->
							<div class="card-body" style="text-align: center;">
								<h2 class="name" style="text-align: center;">${c.movie_name}</h2>
								<div>
																			 <button value="${c.m_id}" type="submit" name="m_id" formaction="/second1" class="btn btn-danger" style="width: 100px;" style="text-align: center;">Booking </button>

								</div>

							</div>
						</div>
					</div>

					<br>
				</c:forEach>
				</div>
				</form>
			</div>  
    
    <br><br><br>
<jsp:include page="footer.jsp"/>
</body>
</html>