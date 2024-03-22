<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>ex08</h1>
<% request.setCharacterEncoding("UTF-8");%> 

<%
	String pageName = request.getParameter("pageName");	
	pageName += ".jsp";
	
%>
	
<h2>포함 하는 페이지 ex08.jsp</h2>
<hr color="skyblue"/>
<jsp:include page="<%=pageName%>"/>
<hr color="skyblue"/>
ex08.jsp의 나머지 부분입니다.
