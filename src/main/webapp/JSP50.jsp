<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Integer a = (Integer)session.getAttribute("a");
	a++;
	session.setAttribute("a", a);
	
	Integer b = (Integer)application.getAttribute("b");
	b++;
	application.setAttribute("b",b);
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP</title>
	</head>
	<body>
		JSP50 <hr>
		Name3: ${sessionScope.names[2] } <br>
		Name4: ${applicationScope.names[0] } <br>
		<hr>
		a = ${sessionScope.a } <br>
		b = ${appplicationScope.b } <br>
	</body>
</html>