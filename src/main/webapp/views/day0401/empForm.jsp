<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>empFrom</h1>
<form action="empInsert.jsp" method="post">
	사원번호<input type="text" name="empno"/><br/>
	사원이름<input type="text" name="ename"/><br/>
	직무<input type="text" name="job"/><br/>
	상사번호<input type="text" name="mgr"/><br/>
	급여<input type="text" name="sal"/><br/>
	보너스<input type="text" name="comm"/><br/>
	부서번호<input type="text" name="deptno"/><br/>
	<input type="submit" value="제출"/>
</form>