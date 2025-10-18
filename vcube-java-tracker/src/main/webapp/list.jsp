<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.app.model.ModuleModel" %>
<%@page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%List<ModuleModel> li=(List<ModuleModel>) request.getAttribute("li"); %>
	
	<%for(ModuleModel m:li){ %>
	<%=m.getModuleId() %>
	<%=m.getModuleName() %>
	
	<%} %>
</body>
</html>