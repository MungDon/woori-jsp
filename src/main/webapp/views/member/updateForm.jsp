<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dto" class="web.test.bean.MemberDTO"/>
<jsp:useBean id="dao" class="web.test.bean.MemberDAO"/>
<h1>updateForm</h1>
<%
	// 로그인 한 후에 개인정보를 보여줘야함
	// 아이디 정보를 꺼내와야함 - > session 은 tomcat 서버에 보관중
	String sid = (String)session.getAttribute("sid");
	dto = dao.idInfo(sid);
%>

<form action="updatePro.jsp" method="get">
	<input type="hidden" name="id" value="<%=sid %>"/>
	아이디 : <%=sid %><br/>
	이름	: <input type="text" name="name" value="<%=dto.getName() %>"/><br/>
	비밀번호 : <input type="password" value="<%=dto.getPw() %>" name="pw"/><br/>
	생일 : <%=dto.getBirth() %><br/>
	통신사 : <select name="phone1">
				<option value="<%=dto.getPhone1()%>"><%=dto.getPhone1()%></option>
				<option value="KT">KT</option>
				<option value="SKT">SKT</option>
				<option value="U+">U+</option>
				<option value="알뜰폰">알뜰폰</option>
		   </select><br/>
	연락처 : <input type="text" name="phone2" value="<%=dto.getPhone2()%>"><br/>
	성별	: <%=dto.getGender() %><br/>
	<input type="submit" value="수정하기"/>
	<button type="button" onclick="window.location='main.jsp'">메인으로</button>
</form>
