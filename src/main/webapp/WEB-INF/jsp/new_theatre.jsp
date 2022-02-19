<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en" >
<head>
<meta charset="ISO-8859-1">
    <title>Book My show</title>
<link rel="stylesheet"
href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
crossorigin="anonymous">
<style>
.container{
max-width: 1170px;
}
/* h1{margin-left:200px;} */


.main1{
/* margin-left:350px;
margin-right:350px; */
height:800px;

}
.btn2{
background-color:#DA70D6 ;
width:200px;
height:38px;
}
.first{
margin-left: 120px;
color:white;

}
.card1{

background-color:rgba(0,0,0,0.5);
border-radius:20px;

}
.card-body{
background-color:rgba(255, 0, 255,0.3) ;
text-align:center;
border-radius:5px;
}

body{
 background-image: url("../images/admin1.jpg" );


}
h1{ color:white;text-align:center;}
.btn{margin-left:100px;}
.first1{color:white;}
</style>
</head>
<body>
<%-- <jsp:include page="header1.jsp" /> --%>
<jsp:include page="adminheader.jsp"/>

<br>
<br><br>
<br>
<div class="container">
<div class="col-md-12">

<h1 >Admin Theatre Management System</h1>
<hr>
<div class="main1">


<div class="card1">
<div class="card-body">

<h2>Save Thatre</h2>
</div>


<form action="/saveTheatre"
method="POST">

<div class="first">
theatre_name:<input type="text" name="theatre_name"
placeholder="theatre_name" pattern="[a-zA-z]*" class="form-control mb-4 col-8" required >


city_name:<input type="text" name="city_name"
placeholder="city_name" pattern="[a-zA-z]*" class="form-control mb-4 col-8" required>

ticket_price:<input type="number" name="ticket_price"
placeholder="ticket_price" value="150" pattern="[0-9]*" class="form-control mb-4 col-8" required>



<button type="submit" class="btn btn-info col-5"> Save Theatre</button>
<a href = "/theatre_index"><div class="first1"> Back to Theatre List</div>
</div>
</form>

</div>
</div>


<hr>


</a>
</div>
</div>
<jsp:include page="footer.jsp"/>

</body>
</html>