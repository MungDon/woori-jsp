<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dao" class="web.test.bean.MemberDAO"/> 
<jsp:useBean id="dto" class="web.test.bean.MemberDTO"/>
<jsp:setProperty property="id" name="dto"/>
<h1>confrimId</h1>
<h1>아이디 중복확인</h1>
<% 
	boolean result = dao.confirmId(dto.getId()); 
	if(result == true){
%>
	<script>
		opener.document.getElementById("idResult").innerHTML="<font color='red'>사용 불가능한 아이디입니다</font>";
		self.close();
	</script>
<%}else{%>
	<script>
		opener.document.getElementById("idResult").innerHTML="<font color='blue'>사용 가능한 아이디입니다</font>";
		self.close();
	</script>
<% } %>	