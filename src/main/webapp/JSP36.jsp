<%@page import="java.util.Date"%>
<%@page import="tw.brad.classes.Bike"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP</title>
	</head>
	
	<body>
		<%
			Date date = new Date();
			SimpleDateFormat sdf = 
					new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			out.print(sdf.format(date));
		
		%>
		<hr>
		<%
			Bike b1 = new Bike();
			b1.upSpeed();b1.upSpeed();b1.upSpeed();b1.upSpeed();
			out.print(b1);
		%>
	</body>
</html>