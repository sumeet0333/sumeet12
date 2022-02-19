
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
    <title>Book My show</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
	
 
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
       function fun(e){
    	   document.getElementById("s").innerText=eval(e.value*${theatredata.ticket_price});
    	   document.getElementById("amount").value= document.getElementById("s").innerText;
  
       }
       function fun1(e){
    	   document.getElementById("offeramount").innerText=eval((e.value*${theatredata.ticket_price})-${offerdata.theater_discount});
      	 document.getElementById("amount").value= document.getElementById("offeramount").innerText;

       }
       
       function onlyNumber() {
    	   if (isNaN(document.getElementById("cardNo").value)) {
    		   document.getElementById("cardNo").value = "";
    		   }	 
       if (isNaN(document.getElementById("cvv").value)) {
       document.getElementById("cvv").value = "";
       }	
       }

       function validThru() {
       if (document.getElementById("year").value >= 22
       && document.getElementById("month").value <= 12
       && document.getElementById("year").value != 0
       && document.getElementById("month").value != 0) {
       document.getElementById("pay").type = "submit";
       } else {
       document.getElementById("pay").type = "button";
       }
       }
       

    	function validateForm() {
           var fname = document.getElementById('fname').value;
           var lname = document.getElementById('lname').value;
           var email = document.getElementById('email').value;
           var cv = document.getElementById('cv').value;

           var fnamecheck = /^[A-Za-z. ]{3,20}$/;
           var lnamecheck = /^[A-Za-z. ]{2,20}$/;
           var emailcheck = /^[A-Za-z0-9_]{3,}@[A-Za-z]{3,}[.]{1}[A-Za-z. ]{2,6}$/;
           var cvv = /^[0-9]{3}$/;

           if (fnamecheck.test(fname)) {
               document.getElementById('fnameerror').innerHTML = " ";
           }
           else {
               document.getElementById('fnameerror').innerHTML = "First name is ivalid";
               document.getElementById("submit").type = "button";
               return false;
           }


           if (lnamecheck.test(lname)) {
               document.getElementById('lnameerror').innerHTML = " ";
           }
           else {
               document.getElementById('lnameerror').innerHTML = "Last name is ivalid";
               document.getElementById("submit").type = "button";
               return false;
           }

           if (emailcheck.test(email)) {
               document.getElementById('emailerror').innerHTML = " ";
           }
           else {
               document.getElementById('emailerror').innerHTML = "Email is ivalid";
               document.getElementById("submit").type = "button";
               return false;
           }


           if (cvv.test(cv)) {
               document.getElementById('cvverror').innerHTML = " ";
           }
           else {
               document.getElementById('cvverror').innerHTML = "cvv number is ivalid";
               document.getElementById("submit").type = "button";
               return false;
           }
       }
    	
    	
    	function validateDate() {
    		var givendate = document.getElementById("dob").value;
    		var today = new Date();
    		var dd = String(today.getDate()).padStart(2, '0');
    		var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
    		var yyyy = today.getFullYear();
    		today = yyyy + '-' + mm + '-' + dd;
    		if (givendate > today) {
    			document.getElementById("msg").style.display = "none";
    			document.getElementById("submit").type = "submit";
    		} else {
    			document.getElementById("msg").style.display = "block";
    			document.getElementById("submit").type = "button";
    		}
    	}
    	
</script>

<style>
body {
     background-color: #8f8f8f8f;
     
}

.form-control {
    margin-bottom: 10px;
} 
</style>


</head>
<body>
 <jsp:include page="header1.jsp"/>
	<div class="container">
		<h2 style="text-align: center; color: green;"> PAYMENT</h2>
		
		<hr>

<form  action="/savecustomerBooking" 
			method="POST">
			


<div class="card-deck" class="col-md-6">
  <div class="card" style="background-color: rgba(243, 211, 216, 0.781); border-radius: 8%;">
  <h3 style="text-align: center; color: rgba(236, 20, 53, 0.918);">Booking Details</h3>
     <div class="card-body">
     			       <table class="table table-striped" style="background-color: pink;  margin-top: 9%;">
       
       <tr><td><strong style="color: black;">Movie Name</strong></td><td style="color: black;">${moviedata.movie_name}</td></tr>
        <tr><td><strong style="color: black;">Movie Description</strong></td><td style="color: black;">${moviedata.movie_dsec}</td></tr>
        <tr><td><strong style="color: black;">Movie Release Date</strong></td><td style="color: black;">${moviedata.release_date}</td></tr>
        <tr><td><strong style="color: black;">Movie Duration</strong></td><td style="color: black;">${moviedata.duration}</td></tr>
       
       
        
        <tr><td><strong style="color: black;">THEATER</strong></td><td style="color: black;">Theater Details</td></tr>
        <tr><td><strong style="color: black;">Theater Name</strong></td><td style="color: black;">${theatredata.theatre_name}</td></tr>
        <tr><td><strong style="color: black;">Theater City</strong></td><td style="color: black;">${theatredata.city_name}</td></tr>
        <tr><td><strong style="color: black;">Theater Ticket Price</strong></td><td style="color: black;">${theatredata.ticket_price}</td></tr>
               
         <tr><td><strong style="color: black;">No_Of_Ticket</strong></td><td><input placeholder="Enter the No of Tickets" type="number" class="form-control" name="no_of_seats" oninput="fun(this),fun1(this)"  style="color: black;"required></td></tr>
        
       <tr><td><strong style="color: black;">Booked Date</strong></td><td> <input type="date" name="booking_date"
				placeholder="booking_date" class="form-control mb-12 col-12"required  id="dob" name="dob" onblur="validateDate()" style="width: 100%;" >
				 <span id="msg" style="display: none; color: red;">Enter valid Date</span>
				</td></tr>
       
       </table>
    </div>
  </div>
  
  
  
  
  
  <div class="card" class="col-md-6" style="background-color: rgb(117, 212, 146); border-radius: 8%;" >
     <div class="card-body">
     			       <table class="table table-striped" style="background-color: cadetblue;">
     
     
     
     <tr><td><strong style="color: black;">Total Amount</strong></td><td style="color: black;"><p id="s" style="color: black;"></p></td></tr>
         
         <tr><td><strong style="color: black;">Discount</strong></td><td style="color: black;">${offerdata.theater_discount}Rs. </td></tr>
        
 
  <tr><td><strong style="color: black;">Mode of payment/Card</strong></td><td style="color: black;"> 
  
  <select name="payment_mode" class="form-control mb-12 col-12" required>
    
      <option value="Debit Card" style="color: black;">Debit Card</option>
      <option value="Cradit Card" style="color: black;">Cradit Card</option>
  </select>
  
  <!-- <input type="text" name="payment_mode"
				placeholder="payment_mode" value="Debit Card" class="form-control mb-12 col-12" readonly>
		 -->
					
				</td></tr>
 
 
 
  <tr><td><strong style="color: black;">Customer Id</strong></td><td style="color: black;"> <input type="number" name="coustomer_id"
				placeholder="coustomer"  value="${c_id}"class="form-control mb-12 col-12" readonly>
					
				</td></tr>
				         <tr><td><strong style="color: black;">Pay Aft Discount</strong></td><td style="color: black;"><p id="offeramount" style="color: black;"></p></td></tr>
				
      
      <tr><td><strong style="color: black;">Amount payment</strong></td><td style="color: black;"> 				
		<input type="number" name="amount"  value="" id="amount"
				  class="form-control mb-12 col-12" readonly>
			
	
	
	
		<input type="hidden" name="payment_status"
				placeholder="payment_status" value="done" class="form-control mb-12 col-12">
				
				</td></tr>
				
				
				
				<tr><td><strong style="color: black;">Card Exp Date</strong></td><td style="color: black;"> <input type="date" name="cardexp_date"
				placeholder="cardexp_date" class="form-control mb-12 col-12" required  id="dob" min="2022-01-17" max="2023-01-17" name="dob" onblur="validateDate()" >
				 <span id="msg" style="display: none; color: red;">Enter valid Date</span>
				
		
				</td></tr>
      
      <tr><td><strong style="color: black;">Card Holder Name</strong></td><td style="color: black;"> <input type="text" name="card_holder"
				placeholder="card_holder" class="form-control mb-12 col-12" pattern="[a-zA-Z ]*">
	
				</td></tr>
      
      <tr><td><strong style="color: black;">Card Number</strong></td><td style="color: black;"> <input type="text" name="card_number"
				placeholder="card_number" class="form-control mb-12 col-12" maxlength='16'
required="required" id="cardNo" oninput="onlyNumber()" pattern="[0-9]{16}">
				
		
				</td></tr>
       <tr><td><strong style="color: black;">Cvv Number</strong></td><td style="color: black;"><input type="text" name="cvv"
				placeholder="cvv" class="form-control mb-12 col-12" required="required"  id="cvv" oninput="onlyNumber()" pattern=[0-9]{3}>
				 <span id="cvverror" style="color:red;"></span>	
				</td></tr>
     
 
        <tr><td><strong style="color: black;">Conform The Booking</strong></td><td style="color: black;"><input type="submit" value="CONFIRM" class="btn btn-success" style="    background-color: rgb(235, 177, 123);
        "></td></tr>
        </table>
			
			
						<input type="hidden" name="o_id" value="${offerdata.o_id}">			
			
			<input type="hidden" name="customer_id" value="${c_id}">			
         <input type="hidden" name="m_id" value="${moviedata.m_id}">
        <input type="hidden" name="t_id" value="${theatredata.t_id}">   
    </div>
  </div>
 
</div>
</form>  

<form action="/addofferdatabase">
      <input type="submit" value="ADDOFFER"name="add_offer" class="form-control mb-2 col-2 btn"  onclick="validateForm()" style="background-color: pink; margin-left: 900px;">
       <input type="hidden" name="customer_id" value="${c_id}">
        <input type="hidden" name="m_id" value="${moviedata.m_id}">
        <input type="hidden" name="t_id" value="${theatredata.t_id}">
     			     </form>
     


		
		<a href = "/customer2"> Back to Offers List</a>
	</div>

</body>





		
			       <%-- <table class="table table-striped">
			
			
      
        <tr><td><strong>Movie Name</strong></td><td>${moviedata.movie_name}</td></tr>
        <tr><td><strong>Movie Description</strong></td><td>${moviedata.movie_dsec}</td></tr>
        <tr><td><strong>Movie Release Date</strong></td><td>${moviedata.release_date}</td></tr>
        <tr><td><strong>Movie Duration</strong></td><td>${moviedata.duration}</td></tr>
       
       
        
        <tr><td><strong>THEATER</strong></td><td>Theater Details</td></tr>
        <tr><td><strong>Theater Name</strong></td><td>${theatredata.theatre_name}</td></tr>
        <tr><td><strong>Theater City</strong></td><td>${theatredata.city_name}</td></tr>
        <tr><td><strong>Theater Ticket Price</strong></td><td>${theatredata.ticket_price}</td></tr>
        
        <tr><td><strong>BOOKING</strong></td><td>Booking Details</td></tr>
        <tr><td><strong>No_Of_Ticket</strong></td><td><input placeholder="Enter the No of Tickets" type="number" class="form-control" name="no_of_seats" oninput="fun(this),fun1(this)" required></td></tr>
 <tr><td><strong>Booked Date</strong></td><td> <input type="date" name="booking_date"
				placeholder="booking_date" class="form-control mb-4 col-4"required  id="dob" name="dob" onblur="validateDate()" >
				 <span id="msg" style="display: none; color: red;">Enter valid Date</span>
				</td></tr>
           
        <tr><td><strong>Total Amount</strong></td><td><p id="s"></p></td></tr>
         
         <tr><td><strong>Discount</strong></td><td>${offerdata.theater_discount}Rs. </td></tr>
        
 
  <tr><td><strong>Mode of payment/Card</strong></td><td> <input type="text" name="payment_mode"
				placeholder="payment_mode" value="Dabit Card" class="form-control mb-4 col-4" readonly>
		
					
				</td></tr>
 
 
 
  <tr><td><strong>Customer Id</strong></td><td> <input type="number" name="coustomer_id"
				placeholder="coustomer"  value="${c_id}"class="form-control mb-4 col-4" readonly>
					
				</td></tr>
				         <tr><td><strong>Pay Aft Discount</strong></td><td><p id="offeramount"></p></td></tr>
				
      
      <tr><td><strong>Amount payment</strong></td><td> 				
		<input type="number" name="amount"  value="" id="amount"
				  class="form-control mb-4 col-4" readonly>
			
	
	
	
		<input type="hidden" name="payment_status"
				placeholder="payment_status" value="done" class="form-control mb-4 col-4">
				
				</td></tr>
				
				
				
				<tr><td><strong>Card Exp Date</strong></td><td> <input type="date" name="cardexp_date"
				placeholder="cardexp_date" class="form-control mb-4 col-4" required  id="dob" name="dob" onblur="validateDate()" >
				 <span id="msg" style="display: none; color: red;">Enter valid Date</span>
				
		
				</td></tr>
      
      <tr><td><strong>Card Holder Name</strong></td><td> <input type="text" name="card_holder"
				placeholder="card_holder" class="form-control mb-4 col-4" pattern="[a-zA-Z ]*">
	
				</td></tr>
      
      <tr><td><strong>Card Number</strong></td><td> <input type="text" name="card_number"
				placeholder="card_number" class="form-control mb-4 col-4" maxlength='16'
required="required" id="cardNo" oninput="onlyNumber()" pattern="[0-9]{16}">
				
		
				</td></tr>
       <tr><td><strong>Cvv Number</strong></td><td><input type="text" name="cvv"
				placeholder="cvv" class="form-control mb-4 col-4" required="required"  id="cvv" oninput="onlyNumber()" pattern=[0-9]{3}>
				 <span id="cvverror" style="color:red;"></span>	
				</td></tr>
     
 
        <tr><td><strong>Conform The Booking</strong></td><td><input type="submit" value="CONFORM" class="btn btn-success"></td></tr>
        </table>
			
			
						<input type="hidden" name="o_id" value="${offerdata.o_id}">			
			
			<input type="hidden" name="customer_id" value="${c_id}">			
         <input type="hidden" name="m_id" value="${moviedata.m_id}">
        <input type="hidden" name="t_id" value="${theatredata.t_id}">
     </form>  
      <form action="/addofferdatabase">
      <input type="submit" value="ADDOFFER"name="add_offer" class="form-control" class="btn btn-success"  onclick="validateForm()">
       <input type="hidden" name="customer_id" value="${c_id}">
        <input type="hidden" name="m_id" value="${moviedata.m_id}">
        <input type="hidden" name="t_id" value="${theatredata.t_id}">
			     </form>
		 
		<hr>
		
		<a href = ""> Back to Offers List</a>
	</div>
</body> --%>





<%-- <body>

	<div class="container" Style="margin-top:7%">
		<h1> Booking Details</h1>
		
		<hr>
		<h2>Booking</h2>

		<form  action="/savecustomerBooking" 
			method="POST">
			
			
			<table class="table table-striped" border="2"style="background-color:white;">
      
        <tr><td><strong>Movie Name</strong></td><td>${moviedata.movie_name}</td></tr>
        <tr><td><strong>Movie Description</strong></td><td>${moviedata.movie_dsec}</td></tr>
        <tr><td><strong>Movie Release Date</strong></td><td>${moviedata.release_date}</td></tr>
        <tr><td><strong>Movie Duration</strong></td><td>${moviedata.duration}</td></tr>
       
       
        
        <tr><td><strong>THEATER</strong></td><td>Theater Details</td></tr>
        <tr><td><strong>Theater Name</strong></td><td>${theatredata.theatre_name}</td></tr>
        <tr><td><strong>Theater City</strong></td><td>${theatredata.city_name}</td></tr>
        <tr><td><strong>Theater Ticket Price</strong></td><td>${theatredata.ticket_price}</td></tr>
        
        <tr><td><strong>BOOKING</strong></td><td>Booking Details</td></tr>
        <tr><td><strong>No_Of_Ticket</strong></td><td><input placeholder="Enter the No of Tickets" type="number" class="form-control" name="no_of_seats" oninput="fun(this),fun1(this)"></td></tr>
<!--           <tr><td>Total Amount</td><td><p id="k"></p></td></tr>
 -->        
        
        <tr><td><strong>Booked Date</strong></td><td> <input type="date" name="booking_date"
				placeholder="booking_date" class="form-control mb-4 col-4" required>
				</td></tr>
      
      
      
      
        <tr><td><strong>Total Amount</strong></td><td><p id="s"></p></td></tr>
        <tr><td><strong>Discount</strong></td><td>${offerdata.theater_discount}Rs. </td></tr>
         
         <tr><td><strong>Discount</strong></td><td>${offerdata.theater_discount}Rs. </td></tr>
 
<!--            <tr><td><strong>Final Amount</strong></td><td><p id="famount"></p></td></tr>
 -->        
 
  <tr><td><strong>Mode of payment/Card</strong></td><td> <input type="text" name="payment_mode"
				placeholder="payment_mode" value="Dabit Card" class="form-control mb-4 col-4" readonly>
		
					
				</td></tr>
 
 
 
  <tr><td><strong>Customer Id</strong></td><td> <input type="number" name="coustomer_id"
				placeholder="coustomer"  value="${c_id}"class="form-control mb-4 col-4" readonly>
					
				</td></tr>
				         <tr><td><strong>Pay Aft Discount</strong></td><td><p id="offeramount"></p></td></tr>
				
      
      <tr><td><strong>Amount payment</strong></td><td> 				
		<input type="number" name="amount"  value="" id="amount"
				  class="form-control mb-4 col-4" readonly>
			
	
	
	
		<input type="hidden" name="payment_status"
				placeholder="payment_status" value="done" class="form-control mb-4 col-4">
				
				</td></tr>
				
				
				
				<tr><td><strong>Card Exp Date</strong></td><td> <input type="date" name="cardexp_date"
				placeholder="cardexp_date" class="form-control mb-4 col-4" required>
				
				
		
				</td></tr>
      
      <tr><td><strong>Card Holer Name</strong></td><td> <input type="text" name="card_holder"
				placeholder="card_holder" class="form-control mb-4 col-4">
				
		
				</td></tr>
      
      <tr><td><strong>Card Number</strong></td><td> <input type="number" name="card_number"
				placeholder="card_number" class="form-control mb-4 col-4">
				
		
				</td></tr>
       <tr><td><strong>Cvv Number</strong></td><td><input type="number" name="cvv"
				placeholder="cvv" class="form-control mb-4 col-4">
				
				
		
				</td></tr>
      
				
				
				
				
				
				
				
     
		
 
 
 
 
 
 
 
 
 
 
 
 
        <tr><td><strong>Conform The Booking</strong></td><td><input type="submit" value="PAYMENT" class="btn btn-success"></td></tr>
        </table>
			
			
						<input type="hidden" name="o_id" value="${offerdata.o_id}">
			
			
			<input type="hidden" name="customer_id" value="${c_id}">
			
         <input type="hidden" name="m_id" value="${moviedata.m_id}">
        <input type="hidden" name="t_id" value="${theatredata.t_id}">
     </form>
     
     
      <form action="/addofferdatabase">
      <input type="submit" value="ADDOFFER"name="add_offer" class="form-control" class="btn btn-success">
       <input type="hidden" name="customer_id" value="${c_id}">
        <input type="hidden" name="m_id" value="${moviedata.m_id}">
        <input type="hidden" name="t_id" value="${theatredata.t_id}">
			     </form>
		 
		<hr>
		
		<a href = ""> Back to Offers List</a>
	</div>--%>
	<jsp:include page="footer.jsp"/>
</body> 
</html>