<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page errorPage="JSP34.jsp" %>
<%
	String start = request.getParameter("start");
	String rows = request.getParameter("rows");
	String cols = request.getParameter("cols");

	final int ROWS = rows == null ? 2 : Integer.parseInt(rows);
	final int START = start == null ? 2 : Integer.parseInt(start);
	final int COLS = cols == null ? 2 : Integer.parseInt(cols);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>

<script type='text/javascript'>
	function checkData(){
		let start = document.getElementById('start').value;
		let rows = document.getElementById('rows').value;
		let cols = document.getElementById('cols').value;
		
		if (start > 0 && rows > 0 && cols > 0){
			return true;
		}else{
			alert('xxxxx');
			return false;
		}
	}
</script>

<style>
	tr,td{
	border:1px solid lightblue;
	}
</style>
<body>
	<h1>Multiplication TABLE</h1>
	<form onsubmit='return checkData();'>
		<input type="number" id='start' name='start' value='<%= START %>'> :
		<input type="number" id='rows' name='rows' value='<%= ROWS %>'> X
		<input type="number" id='cols' name='cols' value='<%= COLS %>'>
		<input type='submit' value='Show'>
	</form>
	<hr style='border: 1px solid red'>
	<table width='50%' style='border:2px solid black;'>
		<%
		for (int r = 0; r < ROWS; r++) {
			out.print("<tr>");
			int i = r*COLS;
			for (int l = START; l < (START+COLS); l++) {
				if((l+r)%2==0){
					out.print("<td bgcolor='yellow'>");
				}else {
					out.print("<td bgcolor='pink'>");
				}
				for (int j = 1; j <= 9; j++) {
					out.print(String.format("%d x %d = %d<br>",l+i,j,(l+i)*j));
				}
				out.print("</td>");
				}
			out.print("</tr>");
		}
		%>
	</table>
</body>
</html>
