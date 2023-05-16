<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import='tw.brad.classes.WebUtils' %>    
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>    
<!DOCTYPE html>
<html>
	<sql:setDataSource
	driver='com.mysql.cj.jdbc.Driver'
	url='jdbc:mysql://localhost/iii'
	user='root'
	password='root'	
	/>
	<sql:query var="rs">
		SELECT * FROM food 
	</sql:query>
	
	<c:set var='count'>${rs.rowCount }</c:set>
	<c:set var='rpp' value='10'/>
	<c:set var='pages'>
		${WebUtils.pages(count,rpp)}
	</c:set>
	<c:set var='page'>${param.page == null ? 1 : param.page }</c:set>
	<c:set var='prev'>${WebUtils.prevPage(page) }</c:set>
	<c:set var='next'>${WebUtils.nextPage(page,pages) }</c:set>
	<c:set var='start'>${(page - 1)* rpp}</c:set>
	<sql:query var="rs">
		SELECT * FROM food LIMIT ${start },${rpp }
	</sql:query>
	
	<head>
		<meta charset="UTF-8">
		<title>JSP</title>
	</head>
	<body>
	<h1>Local Cuisine</h1>
	<hr>
	總筆數: ${count } <br>
	頁數: ${page } / ${pages } |
	<a href='?page=${prev }'> 上一頁</a> |
	<a href='?page=${next }'> 下一頁</a>
	<hr>
		<table border='1'width='100%'>
			<tr>
				<th>#</th>
				<th>Name</th>
				<th>Tel</th>
				<th>Photo</th>
			</tr>
			
			<c:forEach items="${rs.rows }" var='food'>
				<tr>
					<td>${food.id}</td>
					<td>${food.name }</td>
					<td>${food.tel }</td>
					<td><img src="${food.picurl }" width='80px' height='60px'>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>