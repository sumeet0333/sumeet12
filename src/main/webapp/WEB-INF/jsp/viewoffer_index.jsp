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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>



<style>

body{

background-color: #8f8f8f8f;


 }
img{
margin-top:10px;
height:300px;
width:100%;
}
</style>

 <script type="text/javascript">
        function Myfun(e){
        	document.getElementById("k").value=e.name;
        }
</script>
</head>
<body>
 			

<img src="../images/offer4.jpg">
	<div class="container my-2">
		<h1 style="text-align: center; color: cadetblue; ">Offers List</h1>

		 <hr>
	
			
    <div class="container">
     <div class="row">
    
    <form action="/bookingDone" style="width: 100%">
    <c:forEach items="${offerdata}" var="m">
   
   <div class="col-md-6 col-lg-3 col-md-4 col-sm-6"
						style="margin-top: 20px;">
   <div class="card card-main" style="background-color: cadetblue; border-radius: 2%;">
   
   <img src="../images/${m.product_url}" 
								style="width: 100%; height: 300px;" class="photo">
							
   <div class="card-body">
   <h4 class="name" style="text-align: center;">Rs.${m.product_discount}</h4>
      <h4 class="name" style="text-align: center;">Product:${m.offer_product}</h4>
      </div>
   
                <input type="submit" class="btn btn-danger" value="Apply-Offer" name="${m.o_id}"onclick="Myfun(this)" style="margin-left:  .1%;">
   
   
<%-- <div class="col-md-6 col-lg-3 col-md-4 col-sm-6"" style="margin-top: 5%">
<div class="panel panel-default" >
<div class="panel-body text-center" ><img src="../images/${m.product_url}" style="width:114%;height: 300px;margin-top:-7%;margin-left: -7%;margin-bottom: -7%;margin-right: -7%" ></div>
<div class="panel-footer text-center" style="font-size: large;">${m.product_discount}</div>
<div class="panel-footer text-center" style="font-size: large;" >${m.offer_product}</div>
             <input type="submit" class="btn btn-danger" value="Apply-Offer" name="${m.o_id}"onclick="Myfun(this)" style="margin-right: 20%;">
 --%>

 </div>
</div>

</c:forEach>
 <input type="hidden" id="k" name="o_id" value="0">
          <input type="hidden" name="customer_id" value="${customer_id}">
        <input type="hidden" name="m_id" value="${moviedata}">
        <input type="hidden" name="t_id" value="${theatredata}">
</form>
 </div>  
  </div>
</div>
		
				
		 
		 
</body>
</html>