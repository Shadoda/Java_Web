<%@page import="java.util.HashMap"%>
<%@page import="java.util.LinkedList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String[] var1 = {"alan","bob","irene"};
	//pageContext.setAttribute("names", var1);
	
	String[] var2 = {"alan2","bob2","irene2"};
	request.setAttribute("names", var2);
	
	String[] var3 = {"alan3","bob3","irene3"};
	session.setAttribute("names", var3);
	
	String[] var4 = {"alan4","bob4","irene4"};
	application.setAttribute("names", var4);
	
	int a = 10;
	session.setAttribute("a",a);
	
	int b = 10;
	application.setAttribute("b",b);
	
	
	LinkedList<String> list = new LinkedList<>();
	list.add("aa");list.add("bb");list.add("cc");
	pageContext.setAttribute("list", list);
	
	
	HashMap<String,String> map = new HashMap<>();
	map.put("k1", "111");
	map.put("k2", "222");
	map.put("k3", "333");
	pageContext.setAttribute("map", map);
%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP</title>
	</head>
	<body>
		Page Name1: ${pageScope.names[0]} <br>
		Request Name2: ${requestScope.names[1] } <br>
		Session Name3: ${sessionScope.names[2] } <br>
		Application Name4: ${applicationScope.names[0] } <br>
		Name:${names[2] } <br>
		<hr>
		list => ${list[1] } <br>
		<hr>
		map => ${map["k1"] } <br>
		map => ${map.k2 } <br>
		${param.x + param.y }
		${param.x == 4 }
	</body>
</html>