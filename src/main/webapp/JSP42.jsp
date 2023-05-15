<%@page import="tw.brad.classes.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    Member member1 = new Member();
    member1.setId(1);
    member1.setAccount("alan");
    member1.setEmail("alan123@eeit.tw");
    %>
    <!-- 上面(Java)跟下面(JSP)是一樣的 & 使用JSP標籤寫法相容性較高 -->
    <!-- 結論:使用下方寫法 -->
    <jsp:useBean id="member2" class='tw.brad.classes.Member'></jsp:useBean>
    <jsp:setProperty property="id" value='2' name="member2"/>
    <jsp:setProperty property="account" value='brad' name="member2"/>
    <jsp:setProperty property="email" value='brad123@eeit.tw' name="member2"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP</title>
	</head>
	
	<body>
	Member1: <br>
	<%= member1.getId() %>   <%=member1.getAccount() %>   
	<%=member1.getEmail() %> <hr>
	Member2: <br>
	<jsp:getProperty property="id" name="member2"/>   
	<jsp:getProperty property="account" name="member2"/>   
	<jsp:getProperty property="email" name="member2"/>
	
	
	</body>
</html>