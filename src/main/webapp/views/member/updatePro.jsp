<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dto" class="web.test.bean.MemberDTO"/>
<jsp:useBean id="dao" class="web.test.bean.MemberDAO"/>
<jsp:setProperty property="*" name="dto"/>
<h1>updatePro</h1>
<%
	String sid = (String)session.getAttribute("sid");
	dao.updateMember(dto);
%>
<script>
	alert("수정이 완료되었습니다");
	window.location="main.jsp";
</script>