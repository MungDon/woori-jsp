<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>ex05</h1>
<h2>페이지 이동</h2>
	<a href="http://localhost:8080/web/views/day0320/ex01.jsp">ex01</a><%--ex01.jsp 도 가능 --%><br/>
	<a href="http://localhost:8080/web/views/day0320/ex02.jsp">ex02</a><%--ex02.jsp 도 가능 --%><br/>
	<a href="http://localhost:8080/web/views/day0320/ex03.jsp">ex03</a><%--ex03.jsp 도 가능 --%><br/>
	<a href="http://localhost:8080/web/views/day0320/ex04.jsp">ex04</a><%--ex04.jsp 도 가능 --%><br/>
	
	<input type="button" value="이동" onclick="location.href='ex01.jsp'">

<br>
<hr color="skyblue">
	<form action="ex01.jsp">
		
		<input type="submit" value="로그인">
	</form>
<hr color="orange">


<a href="ex06.jsp">
	<img src="/web/views/images/mang.jpg" />
</a>
</body>
</html>