<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>ch05 : 스크립트릿 테스트</title>
</head>
<body>
	<div align="center">
	<H2>스크립트릿 테스트3</H2>
	<HR>
	<table>
		<tr><th>X</th><th>Y(= X*X)</th></tr>
	<%
		for(int i=1;i<10;i++) {
	%>
		<tr><td><%=i %></td><td><%=i*i %></td></tr>
	<%
		}
	%>
	</table>
	</div>
</body>
</html>