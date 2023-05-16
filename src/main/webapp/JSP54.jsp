<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String[] names = {"Alan","Bob", "Eason", "Jason", "Mia"};
pageContext.setAttribute("names", names);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<table border='1' width='100%'>
		<tr>
			<th>#</th>
			<th>Name</th>
			<th>Counter</th>
			<th>isFirst</th>
			<th>isLast</th>
		</tr>
		<c:forEach items="${names}" var='name' varStatus='status'>
			<tr bgcolor='${status.index % 2 == 0?"pink":"yellow" }'>
				<td>${status.index }</td>
				<td>${name }</td>
				<td>${status.count }</td>
				<td>${status.first }</td>
				<td>${status.last }</td>
			</tr>
		</c:forEach>

	</table>
</body>
</html>