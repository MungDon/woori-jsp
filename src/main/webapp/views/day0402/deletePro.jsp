<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dao" class="web.test.bean.MemberDAO"/>
<jsp:useBean id="dto" class="web.test.bean.MemberDTO"/>
<jsp:setProperty property="*" name="dto"/>
<%
	dao.deleteMember(dto);
%>
<script>
	alert("탈퇴완");
	window.location="main.jsp"
</script>