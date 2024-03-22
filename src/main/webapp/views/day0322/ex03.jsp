<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>ex03</h1>
<h2>response 내장객체- redirect</h2>

<h3>현재 페이지는 ex03(responseRedirect.jsp)임다</h3>

<%
	response.sendRedirect("ex04.jsp");
%>