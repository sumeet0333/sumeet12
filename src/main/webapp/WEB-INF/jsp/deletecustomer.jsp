<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book My Show</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<style>
 
  body{

background-color: #8f8f8f8f;
} 
</style>
</head>
<body>
<%-- <jsp:include page="header2.jsp"/>  --%>
 <jsp:include page="header1.jsp"/>
 <div class="container my-2">
 
 
 <h1 style="margin-left: 420px; color: cadetblue">Delete Account</h1>
	<h5 style="color:green;">${msg}</h5>
		<hr>





<form action="/customer/delete2" method="post">
  <div class="form-row">
    <div class="form-group col-md-2">
      <label for="inputCustomerId" style="color:black">Customer Id</label>
      <input type="text" class="form-control" id="inputEmail4" value="${update.customerId}" readonly>
    </div>
    <div class="form-group col-md-6">
      <label for="inputFirstName"style="color:black">First Name</label>
      <input type="text" class="form-control" id="First Name" value="${update.fname}" readonly>
    </div>
    <div class="form-group col-md-4">
      <label for="inputLastName"style="color:black">Last Name</label>
      <input type="text" class="form-control" id="Last Name" value="${update.lname}" readonly>
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail"style="color:black">Email</label>
    <input type="email" class="form-control" id="inputEmail" value="${update.email}" readonly>
  </div>
  <div class="form-group">
    <label for="inputMobile"style="color:black">Mobile</label>
    <input type="text" class="form-control" id="inputMobile" value="${update.mobileNo}" readonly>
  </div>
  <div class="form-group">
    <label for="inputBirth"style="color:black">Date Of Birth</label>
    <input type="date" class="form-control" id="inputBirth" value="${update.dob}" readonly>
  </div>
<input type="hidden" name="id1" value="${update.customerId}">
  <button type="submit" class="btn btn-primary">DELETE</button>
</form>
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
<%--  
<table border="2">
<tr><th>Customer Id</th><th>First Name</th><th>Last Name</th><th>Email</th><th>Mobile</th><th>Date Of Birth</th></tr>
<tr><td>${update.customerId}</td><td>${update.fname}</td><td>${update.lname}</td><td>${update.email}</td><td>${update.mobileNo}</td><td>${update.dob}</td>

<td><form action="/customer/delete2" method="post">

<input type="hidden" name="id1" value="${update.customerId}"><input type="submit" value="DLETE"></form></td>
</tr>
</table> --%>
</div><br><br>
<jsp:include page="footer.jsp"/>
</body>
</html>