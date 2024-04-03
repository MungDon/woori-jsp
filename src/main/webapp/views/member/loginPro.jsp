<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dto" class="web.test.bean.MemberDTO"/>
<jsp:useBean id="dao" class="web.test.bean.MemberDAO"/>
<jsp:setProperty property="*" name="dto"/>

<%
	boolean result = dao.loginCheck(dto);
	if(result == true){
		session.setAttribute("sid", dto.getId());
		response.sendRedirect("main.jsp");
		out.println("<h2>로그인성공</h2>");
	}else{%>
	<script>
		alert("아이디/비밀번호를 확인해주세요");
		history.go(-1);
	</script>
	<%}%>
	
