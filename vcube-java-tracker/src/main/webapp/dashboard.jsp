<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.app.model.UserModel" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Module info</title>
	</head>
	<body>
		<% UserModel user = (UserModel) session.getAttribute("loggedInUser");%>
		<h1>Welcome to Vcube - Java,  <%= user.getUserName() %></h1><br>
		<h2>Where Learning Java made Simple</h2>
		<h2> <%= user.getFirstName() %></h2><br>
		<h2>Card2</h2>
		
		
		
		
		
		
		
	</body>
</html>