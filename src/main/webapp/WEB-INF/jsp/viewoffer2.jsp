<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <title>Book My show</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->


<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

<!-- jQuery library -->


<!-- Popper JS -->

<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>





<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
 
 
 
 body{
background-image: url("../images/admin1.jpg" ) ;
}  
</style>		
</head>
<body>
<jsp:include page="header.jsp"/>
<img src="../images/offerbanner2.jpg"height="400" width="100%">
	<div class="container my-2" >
		<h2 style="text-align: center; color: cadetblue; background-color:pink; border-radius: 20%;">Offers List</h2>


    <div class="container">

 <div class="row">
 <form action="" style="width: 100%">
 
 <c:forEach items="${listAddOffer}" var="c">

<div class="col-md-6 col-lg-3 col-md-4 col-sm-6"
						style="margin-top: 20px;">


   <div class="card card-main" style="background-color: cadetblue; border-radius: 2%;">
							<!-- div class="panel-body text-center" > -->
<img src="../images/${c.product_url}"
								style="width: 100%; height: 300px; border-radius: 2%;" class="photo">
							<!-- </div> -->
							<br>
							<div class="card-body">
							   <h4 class="name" style="text-align: center; color: white;">Rs.${c.product_discount}</h4>
							      <h4 class="name" style="text-align: center; color: white;">Product:${c.offer_product}</h4>
							
 								<h3 style="text-align: center; color: white;">${c.offer_product}</h3>
								<div>
									
										 
									
								</div>

							</div>
						</div>
					</div>

					
					
				</c:forEach>
			</form>
			</div>
			</div>  
    </div>  
    </div><br><br><br>
<jsp:include page="footer.jsp"/>
</body>
</html>