<html>

<head>
    <title>Book My show</title>

<!-- <link href="webjars/bootstrap/4.1.3/css/bootstrap.min.css"
	rel="stylesheet">
<script src="webjars/jquery/3.4.1/jquery.min.js"></script>
<script src="webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script> -->
<link rel="stylesheet" href="../style.css" />
<style>
body {
	 background-image: url("../images/admin1.jpg" );
	
}


</style>

</head>
<body>
<jsp:include page="header1.jsp"/>
	<div class="container_pswd"  style="height: 500px; border-radius: 10%;">
	
<div>
</div>
		<h1 >Change Password</h1>
		<h6 style="color:green;">${msg }</h6>
		<form action="/customer/changepass1"  method="post">
		
			<label  style="color:black">Old Password</label>
			<input type="text" name="oldpass" class="input" id="opwd" style="color: black; "/><br>
			 <span id="opwderror" style="color:red;"></span>
			
			<label style="color:black">New Password</label>
			<input type="text" name="newpass" class="input"id="npwd" style="color: black;" />
 			<span id="npwderror" style="color:red; display:none;">Password is invalid</span>
				
				<label style="color:black">Confirm Password</label>
				<input type="text" name="conpass" class="input"id="cpwd" style="color: black;" required/><br>
 				<span id="cpwderror" style="color:red; display:none;">Password is not matching</span><br />
				 
				<input type="button" id="submit" value="Change" style="background-color:#D37093;" onclick="validationPswd()"/>
			
		</form>
		
	</div>
	<script  type="text/javascript">
function validationPswd(){
	var opswd=document.getElementById('opwd').value;
	var npswd=document.getElementById('npwd').value;
	var cpswd=document.getElementById('cpwd').value;
	var flag = 0;
	
	var pswdcheck=/^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,16}$/;
	
	if(pswdcheck.test(npswd)){
		document.getElementById('npwderror').style.display = "none";
		flag += 1;
	}
	else{
		 document.getElementById('npwderror').style.display = "block";
		 document.getElementById("submit").type = "button";
		return false;
	}
	
	if(npswd.match(cpswd)){
		document.getElementById('cpwderror').style.display = "none";
		flag += 1;
	}
	else{
		document.getElementById('cpwderror').style.display = "block";
		 document.getElementById("submit").type = "button";
		return false;
	}
	if(flag == 2) {
		document.getElementById("submit").type = "submit";
	}
}
</script>
<br><br><br><br><br>
<jsp:include page="footer.jsp"/>
	</body>
</html>