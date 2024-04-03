<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//	String sid = (String)session.getAttribute("sid");
	//세션 삭제
		
	//하나만지우는거
//	session.removeAttribute("sid");
	// 모든세션삭제
//	response.sendRedirect("main.jsp");

	session.invalidate();
	

%>
<script>
	alert("로그아웃되었습니다");
	window.location="main.jsp";
</script>