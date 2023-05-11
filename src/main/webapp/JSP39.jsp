<%@page import="tw.brad.classes.Bike"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Bike b1 = new Bike();
	b1.upSpeed();b1.upSpeed();b1.upSpeed();b1.upSpeed();
	request.setAttribute("b1", b1);	
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP</title>
	</head>
	
	<body>
		I am JSP39 <br>
		<jsp:forward page="JSP40.jsp"></jsp:forward>
	</body>
</html>