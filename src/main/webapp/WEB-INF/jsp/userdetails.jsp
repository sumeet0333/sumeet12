 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
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
<h1 style="color:white;text-align:center">Customer List</h1>
<h4>${msg}</h4>
<table class="table table-striped table-responsive-md" >
<thead>
<tr style="background-color: pink;">
<th style="color:black">Customer id</th>
<th style="color:black">First name</th>
<th style="color:black">Last name</th>
<th style="color:black">Email</th>
<th style="color:black">Phone</th>
<th style="color:black">Date Of Birth</th>
<th style="color:black">Action</th>

</tr>
</thead>
<tbody>
<c:forEach items="${update}" var="p">
<tr style="background-color: cadetblue;">
<td style="color:black">${p.customerId}</td>
<td style="color:black">${p.fname}</td>
<td style="color:black">${p.lname}</td>
<td style="color:black">${p.email}</td>
<td style="color:black">${p.mobileNo}</td>
<td style="color:black">${p.dob}</td>
<td><form action="/customer/delete3" method="post"><input type="hidden" name="id1" value="${p.customerId}"/>
<input type="submit" class="btn btn-danger" name="btn" value="Delete"/>
</form></td>

</tr>


</c:forEach>
</tbody>
</table>
<form  action="/back_offer" method="GET">
            <button type="submit" style="color: white; background-color:#2E9CCA; padding: 6px 32px; text-align: center; text-decoration: none; 
            border-radius: 4px; display: inline-block; font-size: 100%;">Back</button>
            </form>
<script src="webjars/jquery/3.4.1/jquery.min.js"></script>
<script src="webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</div><br><br><br><br><br><br><br>
<jsp:include page="footer.jsp"/>
</div>
</body>
</html>