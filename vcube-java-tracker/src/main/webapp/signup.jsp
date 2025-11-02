<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="signup" method="post">
		<input type="text" id="fname" name="firstName" placeholder="First name" required>
		<p id="p1"></p>
		<input type="text" id="lname"name="lastName" placeholder="Last name" required>
		<input type="text" id="uname"name="userName" placeholder="Username" required>
		<input type="password" id="pword"name="password" placeholder="Password" required>
		<input type="email" id="email"name="emailId" placeholder="Email" required>
		<input type="text" id="phone"name="phoneNo" placeholder="Phone" required>
		<button type = "submit" >Register</button>
		<h2>Already a user?</h2>
		<a href= "login">Login</a>

	</form>
	
	
	
	

</body>
</html>