<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<h1>result</h1>

<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String hobby = request.getParameter("hobby");
%>

<h3>id : <%=id%></h3>
<h3>name : <%=name%></h3>
<h3>hobby : <%=hobby%></h3>