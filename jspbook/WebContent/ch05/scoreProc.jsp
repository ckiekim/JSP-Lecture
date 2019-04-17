<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int math = Integer.parseInt(request.getParameter("math"));
	int sum = kor + eng + math;
	double avg = sum / 3.0;
	String sAvg = String.format("%.2f", avg);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:forward page="scoreResult.jsp">
	<jsp:param name="kor" value="<%=kor%>" />
	<jsp:param name="eng" value="<%=eng%>" />
	<jsp:param name="math" value="<%=math%>" />
	<jsp:param name="sum" value="<%=sum%>" />
	<jsp:param name="avg" value="<%=sAvg%>" />
</jsp:forward>
</body>
</html>