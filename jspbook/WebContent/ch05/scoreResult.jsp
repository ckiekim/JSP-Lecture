<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String kor = request.getParameter("kor");
	String eng = request.getParameter("eng");
	String math = request.getParameter("math");
	String sum = request.getParameter("sum");
	String avg = request.getParameter("avg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성적 계산</title>
	<style>
		table { /* 이중 테두리 제거 */
			border-collapse : collapse;
		}
		td { /* 모든 셀에 적용 */
			text-align : center;
			padding : 5px;
			height : 15px;
			width : 100px;
		}
		th { /* 모든 셀에 적용 */
			text-align : center;
			padding : 5px;
			height : 15px;
			width : 100px;
		}
		thead, tfoot { /* <thead>의 모든 셀에 적용 */
			background : darkgray;
			color : yellow;
		}
		tbody tr:nth-child(even) { /* 짝수 <tr>에 적용*/
			background : aliceblue;
		}
		tbody tr:hover { /* 마우스가 올라오면 pink 배경 */
			background : pink;
		}
	</style>
</head>
<body>
	<center><h2>성적계산 결과</h2><hr>
	<table>
		<thead><th>국어</th><th>영어</th><th>수학</th><th>합계</th><th>평균</th></thead>
		<tr><td><%=kor%></td><td><%=eng%></td><td><%=math%></td><td><%=sum%></td><td><%=avg%></td></tr>
	</table>
</body>
</html>