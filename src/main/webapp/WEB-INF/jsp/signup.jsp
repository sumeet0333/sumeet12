<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <title>Book My show</title>
<link rel="stylesheet" href="../style.css" />
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<link href="../webjars/bootstrap/4.1.3/css/bootstrap.min.css"
	rel="stylesheet">
<script src="../webjars/jquery/3.4.1/jquery.min.js"></script>
<script src="../webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>

<!-- <script src="../js/scirpt.js"></script> -->
 <script type="text/javascript">
 
	function validateForm() {
        var fname = document.getElementById('fname').value;
        var lname = document.getElementById('lname').value;
        var email = document.getElementById('email').value;
        var mobile = document.getElementById('mobile').value;

        var fnamecheck = /^[A-Za-z. ]{3,20}$/;
        var lnamecheck = /^[A-Za-z. ]{3,20}$/;
        var emailcheck = /^[A-Za-z0-9_]{3,}@[A-Za-z]{3,}[.]{1}[A-Za-z. ]{2,6}$/;
        var mobilecheck = /^[789][0-9]{9}$/;

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


        if (mobilecheck.test(mobile)) {
            document.getElementById('mobileerror').innerHTML = " ";
        }
        else {
            document.getElementById('mobileerror').innerHTML = "Mobile number is ivalid";
            document.getElementById("submit").type = "button";
            return false;
        }
    }
	
	
	$(function() {
		$("#pwd").bind("keyup", function() {
			//TextBox left blank.
			if ($(this).val().length == 0) {
				$("#password_strength").html("");
				return;
			}

			//Regular Expressions.
			var regex = new Array();
			regex.push("[A-Z]"); //Uppercase Alphabet.
			regex.push("[a-z]"); //Lowercase Alphabet.
			regex.push("[0-9]"); //Digit.
			regex.push("[$@$!%*#?&]"); //Special Character.

			var passed = 0;

			//Validate for each Regular Expression.
			for (var i = 0; i < regex.length; i++) {
				if (new RegExp(regex[i]).test($(this).val())) {
					passed++;
				}
			}

			//Validate for length of Password.
			if (passed > 2 && $(this).val().length > 6) {
				passed++;
			}

			//Display status.
			var color = "";
			var strength = "";
			switch (passed) {
			case 0:
			case 1:
				strength = "Weak";
				color = "red";
				break;
			case 2:
				strength = "Good";
				color = "darkorange";
				break;
			case 3:
			case 4:
				strength = "Strong";
				color = "green";
				break;
			case 5:
				strength = "Very Strong";
				color = "darkgreen";
				break;
			}
			$("#password_strength").html(strength);
			$("#password_strength").css("color", color);
		});
	});

	function validateDate() {
		var givendate = document.getElementById("dob").value;
		var today = new Date();
		var dd = String(today.getDate()).padStart(2, '0');
		var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
		var yyyy = today.getFullYear();
		today = yyyy + '-' + mm + '-' + dd;
		if (givendate < today) {
			document.getElementById("msg").style.display = "none";
			document.getElementById("submit").type = "submit";
		} else {
			document.getElementById("msg").style.display = "block";
			document.getElementById("submit").type = "button";
		}
	}
	
	
	
</script> 
<style>
  body{
	background-image: url("../images/admin1.jpg" ) ;
}  
.signup-box{

	background-color:rgba(0,0,0,0.5);
	color:white;
	
}
</style>


</head>
<body>
<jsp:include page="header.jsp" />
	 <div class="signup-box">
	 
	 <div class="head1">
		<h1 style="color: white; height:80px">Sign Up</h1>
</div>
		<form action="/customer/create" method="post">
		
			<label><b>First Name</b></label> <input type="text"
				placeholder="Enter first name" name="fname" id="fname" class="input" ><br>
 <span id="fnameerror" style="color:red;"></span>
 
			<label><b>Last Name</b></label> <input type="text"
				placeholder="Enter last name" name="lname" id="lname" class="input"   > <br>
				<span id="lnameerror" style="color:red;"></span>

			<label><b>Email:</b></label> 
				<input type="email" placeholder="Enter email" name="email" id="email" class="input" > <br> 
				 <span id="emailerror" style="color:red;"></span>
				
				<label for="ph"><b>Mobile number:</b></label>
				 <input type="text" placeholder="Enter your number" name="mobile" id="mobile" class="input" > <br>
				  <span id="mobileerror" style="color:red;"></span>

			<label for="dob"><b>DOB</b></label> 
			<input type="date" placeholder="Enter your dob" id="dob" class="input" name="dob" onblur="validateDate()" > <br>
				
				 <span id="msg" style="display: none; color: red;">Enter valid DOB</span>
				 
				 <label for="lid"><b>LoginId</b></label> 
				<input type="text" placeholder="Enter loginid" name="id" id="id" class="input" required> <br> 
				
				<label for="psw"><b>Password</b></label> 
				<input type="password" placeholder="Enter Password" name="pwd"  id="pwd" class="input" required> 
				
				<span id="password_strength"></span> <br>
				 
				<input type="hidden" placeholder="Repeat Password" name="usertype" id="id" class="input" value="customer" >
				
				 <input style="background-color: #D37093;" type="submit" value="Submit"  id="submit" class="signup"  onclick="validateForm()"/>
				
			<p class="para-2">
				Already have an account? <a href="/login1">Login here</a>
			</p>
		</form>
	</div> 
	
	
</body>
</html>