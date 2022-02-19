<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
    <title>Book My show</title>



 

 



 


<script type="text/javascript">
     /* function fun(e){
    	 document.getElementById("k").value=e.name;
     } */
     function fun(e){
    	 document.getElementById("k").value=e.name;
    	 }

    	 function funtri(){
    	 document.getElementById("tri1").style.display="block";
    	 }
    	 function funtri2(){
    	 document.getElementById("tri1").style.display="none";
    	 }
</script>
<style>

body{

background-color: #8f8f8f8f;

}
.table{
margin-left="400px"";
}
</style>
</head>
<body>
 <jsp:include page="header1.jsp"/>
	<div class="container my-2">
		<h1 style="text-align: center; color: red;">Movie </h1>
		<hr style=" color: cadetblue;">
		
		
		<div class="card-deck " class="col-md-6" >
  <div class="card" style="height: 350px;">
    <img class="card-img-top" src=../images/${moviedata.cover_photo_url} alt="Card image cap"height="350"width="400"> 
  </div>
  
  
  <div class="card" style="height: 300px;margin-top: 20px; background-color: cadetblue; border-radius: 5%;">
      <form>
  
    <div class="card-body">
     
    
    
  
  <div class="form-group row" class="col-md-6">
    <label for="colFormLabelLg" class="col-sm-4 col-form-label col-form-label-lg col-md-6">Movie</label>
    <div class="col-sm-6">
      <input type="text" class="form-control form-control-lg " id="colFormLabelLg" value="${moviedata.movie_name}" readonly style="color:red">
    </div>
  </div>
  <div class="form-group row">
    <label for="colFormLabelLg" class="col-sm-4 col-form-label col-form-label-lg col-md-6">Description</label>
    <div class="col-sm-6">
      <input type="text" class="form-control form-control-lg" id="colFormLabelLg" value="${moviedata.movie_dsec}" readonly style="color:red">
    </div>
  </div>
  <div class="form-group row">
    <label for="colFormLabelLg" class="col-sm-4 col-form-label col-form-label-lg col-md-6">Release Date</label>
    <div class="col-sm-6">
      <input type="text" class="form-control form-control-lg" id="colFormLabelLg" value="${moviedata.release_date}" readonly style="color:red">
    </div>
  </div>
  <div class="form-group row">
    <label for="colFormLabelLg" class="col-sm-4 col-form-label col-form-label-lg col-md-6">Duration</label>
    <div class="col-sm-6">
      <input type="text" class="form-control form-control-lg" id="colFormLabelLg" value="${moviedata.duration}"mm readonly style="color:red">
    </div>
  </div>
  
    </div>
    </form>
    
    
    
  </div>
 
</div>
		<div class="form-group row">
<!-- <label for="colFormLabelLg" class="col-sm-4 col-form-label col-form-label-lg col-md-6">Trailer</label> -->
<div><p onclick="funtri()" class="btn btn-primary"style="margin-left:50px"> trailer</p></div>
<div class="col-sm-4">
<div class="col-xs-12 col-sm-6" id="tri1" style="display: none;">
<div style="margin-left: 400px;margin-top:50px;border: 1px solid black;width:20px;color:white;background: rgba(0,0,0,0.5)" class="text-center" onclick="funtri2()" >x</div>
<iframe style="height: 350px;width: 900px; margin-top:50px" src="${moviedata.trailer_url}" title="YouTube video player" frameborder="0" allowfullscreen></iframe>
</div>
</div>
</div>
		
		
		

	
		 </div>
		 <br><br><br><br>
		<form action="/bookingthird">
		<table  class="table table-striped table-responsive-md container" >
			<thead>
				<tr style="background-color: pink;">
					<th style="color: black;">Theatre name</th>
					<th style="color: black;">City name</th>
					<th style="color: black;">Ticket price</th>
 				 <th style="color: black;">Action</th>
					
				</tr>
			</thead>
			
			<tbody>
		<c:forEach items="${theatredata}" var="theatre">
			
				<tr style="background-color: cadetblue;">
					<td style="color: black;">${theatre.theatre_name}</td>
					<td style="color: black;">${theatre.city_name}</td>
					<td style="color: black;">${theatre.ticket_price}</td>
					 
					 
                <td>   <button value="${theatre.t_id}" type="submit" name="t_id" class="btn btn-danger">Booking </button>
               
                </td>
					
				</tr>
								</c:forEach>
								
								 
				
			</tbody>
		</table>
		<input type="hidden" value="${moviedata.m_id}" name="m_id">
<!-- 		 <input type="hidden" name="t_id" id="k" vale="0">
 -->		</form>
<br>
		
		
		<br>
		</script>
   	 <jsp:include page="footer.jsp" />
</body>
</html>