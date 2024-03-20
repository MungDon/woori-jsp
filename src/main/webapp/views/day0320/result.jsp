<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>result</h1>
<% 
	String msg = request.getParameter("msg");	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String gender = request.getParameter("gender");
	String ph1 = request.getParameter("ph1");
	String ph2 = request.getParameter("ph2");
	String ph3 = request.getParameter("ph3");
//	String info = request.getParameter("info");
	String file = request.getParameter("file");
	String[] ch = request.getParameterValues("ch");
	
	for(String c : ch){%>
		<h2>관심 : <%=c %></h2>	
	<%}%>
	<h1>값 확인</h1>
<h2>메세지 : <%=msg %></h2>
<h2>아이디 : <%=id %></h2>
<h2>비밀번호 : <%=pw %></h2>
<h2>성별 : <%=gender %></h2>
<h2>통신사 : <%=ph1 %></h2>
<h2>폰번호: 010-<%=ph2 %>-<%=ph3 %></h2>
<h2>파일 : <%=file %></h2>
<h2>관심 : <%=ch %></h2>
