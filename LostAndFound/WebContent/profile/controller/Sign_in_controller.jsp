<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="obj_login_bean" class="bean.login_bean"></jsp:useBean>
	<jsp:setProperty property="*" name="obj_login_bean"/>
	
	<%
		System.out.println(obj_login_bean.getUsername());
		System.out.println(obj_login_bean.getPassword());
	%>
	
</body>
</html>