<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>empDeleteForm</h1>
<h2>정보를 삭제할 사원의 번호를 입력하세요</h2>
<form action="empDelete.jsp" method="post">
	사원번호 : <input type="text" name="empno"/>
	<input type="submit" value="삭제하기"/>
</form>