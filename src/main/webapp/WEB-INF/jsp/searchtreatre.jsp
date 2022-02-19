<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <title>Book My show</title>
<style >
.click{
blackground-color:blue;
}
body{
	background-image:url("../images/banner05.jpg");
	
	
	}  
</style>
</head>
<body>
<jsp:include page="header3.jsp" />    
 <div class="container">
 <div class="row">
				<c:forEach items="${treatre}" var="c">

					<div class="col-md-6 col-lg-3 col-md-4 col-sm-6"
						style="margin-top: 20px;">


						<div class="card card-main">
							<!-- div class="panel-body text-center" > -->
							<%-- <img src="../images/${c.cover_photo_url}"--%>
								<h3 style="width: 100%; height: 300px; margin-top: 10%; margin-left: 1%; margin-bottom: -7%; margin-right: 5%"> 
							<!-- </div> -->
							<div class="card-body">
								<%-- <h2 class="name">${c.theatre_name}</h2> --%>
								<div>
									<!-- <button class="click btn-lg "
										type="submit"> -->
										<br><br>
										<h4 style="color: black; text-align: center;">City::${c.city_name }</h4><br>
										<%-- <h4>${c.ticket_price }</h4> --%>
										<h4 class="treatre" style="color: black; text-align: center;">Theatre Name::${c.theatre_name}</h4>
										<!-- <a href="book">book</a> -->
									</button>
								</div>

							</div>
						</div>
					</div>

					<br>
				</c:forEach>
			</div>  
    </div>
    <br><br><br>
<jsp:include page="footer.jsp"/>
</body>
</html>