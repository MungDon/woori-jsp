<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>main</h1>
<%
	String sid = (String)session.getAttribute("sid");
	if(sid == null){
%>
<%-- 
	<script>
		alert("로그인 후 사용가능합니다");
		window.location="loginForm.jsp"
	</script>
--%>
<input type="button" value="회원가입" onclick="window.location='insertForm.jsp'"/>
<input type="button" value="로그인" onclick="window.location='loginForm.jsp'"/>
<% }else{%>
<h2>[<%=sid %>] 님 환영합니다.</h2>
<input type="button" value="로그아웃" onclick="window.location='logout.jsp'"/>
<input type="button" value="내 정보" onclick="window.location='myPage.jsp'">
<input type="button" value="전체회원보기" onclick="window.location='allMember.jsp'"/>
<input type="button" value="회원탈퇴하기" onclick="window.location='deleteForm.jsp'"/>
<input type="button" value="정보수정"  onclick="window.location='updateForm.jsp'">
<%}%>     