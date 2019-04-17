<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<TITLE>ch05 :include action 테스트</TITLE>
</HEAD>
<BODY>
	<H2>include_action.jsp에서 footer.jsp 호출</H2>
	<HR>
	include_action.jsp 에서 출력한 메시지 입니다.<BR>
	<HR>
	<jsp:include page="footer.jsp">
		<jsp:param name="email" value="include@test.net" />
		<jsp:param name="tel" value="010-9876-5432" />
	</jsp:include>
</BODY>
</HTML>