<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>ex11.jsp</h1>
<% request.setCharacterEncoding("UTF-8");%>
<%
	String id = request.getParameter("id");
	String habby = request.getParameter("habby");
%>
포워드하는 페이지입니다
<b><%=id %></b>님의<br/>
취미는<b><%=habby%>입니다</b><br/>