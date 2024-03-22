<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>/day0322/ex09.jsp</h1>
<h2>forward 액션태그</h2>
<form action="ex10.jsp" method="post">
	<input type="text" name="id"/><br/>
	<select name="hobby">
		<option value="영화">영화</option>
		<option value="운동">운동</option>
		<option value="수면">수면</option>
	</select><br/>
	<input type="submit" value="전송" />
</form>