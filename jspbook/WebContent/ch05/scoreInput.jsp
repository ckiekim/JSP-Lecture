<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Score Input</title>
	<style>
		input[type=text] { /* text 창에만 적용 */
			color : red; 
		}
		input:hover, textarea:hover { /* 마우스 올라 올 때 */
			background : aliceblue;
		}
		input[type=text]:focus, input[type=email]:focus { /* 포커스 받을 때 */
			font-size : 120%; 
		}
		label {
			display : block; /* 새 라인에서 시작 */
			padding : 5px;
		}
		label span {
			display : inline-block;
			width : 90px;
			text-align : right;
			padding : 10px;
		}
	</style>
</head>
<body>
	<center>
	<h3>성적 입력</h3>
	<hr>
	<form name="form1" action=/jspbook/ch05/scoreProc.jsp method=post>
		<label><span>국어:</span><input type="text" name="kor" width="200" size="5"></label>
		<label><span>영어:</span><input type="text" name="eng" width="200" size="5"></label>
		<label><span>수학:</span><input type="text" name="math" width="200" size="5"></label><br>
		<label><span></span><input type="submit" value="계산" name="B1">&nbsp;&nbsp;
			<input type="reset" value="다시 입력" name="B2"></label>
	</form>
</body>
</html>