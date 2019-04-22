<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<title>ch06 : selProduct.jsp</title>
</head>
<%
	request.setCharacterEncoding("UTF-8"); // euc-kr
	String username = request.getParameter("username");
	if (username.equals("")) {
		out.println("<script>alert('로그인을 하세요');");
		out.println("history.go(-1);</script>");
	}
	session.setAttribute("username", username);
%>
<body>
<div align="center">
	<H2>상품선택</H2>
	<HR>
	<%=session.getAttribute("username")%>님 환영합니다!!!!
	<HR>
	<form name="form1" method="POST" action="add3.jsp">
		품목: <SELECT name="product">
			<option>사과</option>
			<option>귤</option>
			<option>파인애플</option>
			<option>자몽</option>
			<option>레몬</option>
		</SELECT>
		&nbsp;&nbsp;수량: <input type="text" name="quantity" size="4" value="0">&nbsp;&nbsp;
		<input type="submit" value="추가"/>
	</form>
	<a href="checkOut3.jsp">계산</a>
</div>
</body>
</html>




