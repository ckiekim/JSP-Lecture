<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>ch05 : 스크립트릿 테스트</title>
	<style>
		td, th { text-align: center; }
	</style>
</head>
<body>
	<div align="center">
	<H2>스크립트릿 테스트5 - 2차원 배열</H2>
	<HR>
	<table border="1" style="border-collapse:collapse;">
		<tr bgcolor="pink"><th></th><th>3</th><th>5</th><th>7</th><th>9</th></tr>
	<%
		for (int i=3; i<10; i+=2) {
	%>
		<tr><td bgcolor="pink" width="40"><%=i %></td>
	<%
			for (int k=3; k<10; k+=2) {
	%>
			<td width="40"><%=i*k %></td>
	<%
			}
	%>
		</tr>
	<%
		}
	%>
	</table>
	</div>
</body>
</html>