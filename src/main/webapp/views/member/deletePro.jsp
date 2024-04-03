<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dao" class="web.test.bean.MemberDAO"/>
<jsp:useBean id="dto" class="web.test.bean.MemberDTO"/>
<jsp:setProperty property="*" name="dto"/>
<%
	String sid = (String)session.getAttribute("sid");
	dto.setId(sid);
	int result = dao.deleteMember(dto);
	if(result == 1){
		session.invalidate();
%>
		<script>
			alert("탈퇴완");
			window.location="main.jsp"
		</script>
<%	}else{%>
		<script>
			alert("비밀번호를 확인해주세욧");
			history.go(-1);
		</script>
	<% }
%>
