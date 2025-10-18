<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
</head>
<body>
	<form action="LoginController" method="post" >
		<input type="text" name="username" id="username" placeholder="Username">
		<p id="p1"></p>
		<input type="password" name="password" placeholder="Password" >
		<button type="submit">Sign In</button>
	</form>

	<script type="text/javascript">
		function validateFName(){
			const username = document.getElementById("username").value;
			const regex = /^[A-Za-z\s]+$/;
			if(!regex.test(username)){
				document.getElementById('p1').innerHTML = 'Please enter a valid username';

				return false;
			}
			document.getElementById('p1').innerHTML ='';
			return true;
			
		}
	
	</script>

</body>
</html>