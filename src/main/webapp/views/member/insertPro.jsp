<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>insertPro</h1>
<%request.setCharacterEncoding("UTF-8"); %> 
<jsp:useBean id="dao" class="web.test.bean.MemberDAO"/>
<jsp:useBean id="dto" class="web.test.bean.MemberDTO"/>
<jsp:setProperty property="*" name="dto"/>

<%
	dao.insertMember(dto);	// 메서드 호출(매개변수 DTO)
%>
<script>
	alert("가입되었습니다");
	window.location="main.jsp";
</script>day