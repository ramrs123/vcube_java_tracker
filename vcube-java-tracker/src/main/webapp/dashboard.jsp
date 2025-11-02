<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.app.model.UserModel"%>
<%@ page import="com.app.model.ModuleModel"%>
<%@ page import="java.util.List"%>
<%@ page import = "com.app.dao.ModuleDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Module info</title>

<style type="text/css">
h2 {
  font-family: Helvetica, Arial, sans-serif;
  background: linear-gradient(to bottom, red, black);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}

</style>
</head>
<body>
	<%
	UserModel user = (UserModel) session.getAttribute("userdata");
	%>
	
	<%
	ModuleDao m=new ModuleDao();
	List<ModuleModel> list = m.getAllModules();
	%>
	
	<h1>
		Welcome to Vcube - Java,
		<%=user.getUserName()%></h1>
	<br>
	<h1>Where Learning Java made Simple</h1>
	<h2>
		<%=user.getFirstName()%></h2>
	<br>
	<h2>
		<%=user.getLastName()%></h2>
	<br>
	<h2>
		<%=user.getUserName()%></h2>
	<br>
	<h2>
		<%=user.getPhoneNo()%></h2>
	<br>
	<h2>
		<%=user.getEmailId()%></h2>
	<br>

	<h2>Card2</h2>
	<br>
	<% for (ModuleModel module:list) { %> 

	<a href = "#"><%= module.getModuleName() %></a><br>

<% } %> 







</body>
</html>