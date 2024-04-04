<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>cookie/loginForm</h1>
<form action="loginPro.jsp" method="post">
	아이디<input type="text" name="id"/>
	패스워드<input type="password" name="pw"/>
	자동 로그인<input type="checkbox" name="auto" value="1"/>
	<input type="submit" value="로그인"/>
</form>