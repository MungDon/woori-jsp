<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>empUpdateForm</h1>
<form action="empUpdate.jsp" method="post"><br/>
	사원번호 : <input type="text" name="empno"/><br/>
	직무	:	<input type="text" name="job"/><br/>
	급여	:	<input type="text" name="sal"/><br/>
	보너스 : <input type="text" name="comm"/><br/>
	<input type="submit" value="수정하기"/>
</form>