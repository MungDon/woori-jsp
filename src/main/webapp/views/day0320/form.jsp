<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>form</h1>

	<form action="result.jsp" method="get">
		메세지	: <input type="text" name="msg" value="hello"/><br/>
		아이디 	: <input type="text" name="id"/><br/>
		비밀번호 	: <input type="password" name="pw" /><br/>
		
		<h4>성별</h4>
		M<input type="radio" name="gender" value="m" /><br/>
		W<input type="radio" name="gender" value="w" /><br/>
		<br/>
		통신사<br/>
		<select name="ph1">
			<option>KT</option>
			<option>SKT</option>
			<option>U+</option>
			<option>알뜰폰</option>
		</select>
		<input type="text" name="ph2"/>-
		<input type="text" name="ph3"/><br/>
		<br/>
		소개<br/>	
		<textarea rows="5" cols="40" name="info" placeholder="안녕하세요"></textarea><br/>
		<br/>
		관심<br/>
		1)java<input type="checkbox" name="ch" value="java">
		2)jsp<input type="checkbox" name="ch" value="jsp">
		3)sql<input type="checkbox" name="ch" value="sql">
		<br/>
		파일 : <input type="file" name="file"/><br/>
		<input type="submit" value="전송"/>
	</form>
</body>
</html>