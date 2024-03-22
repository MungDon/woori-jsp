<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<h1>pro</h1>

<%
	//response.sendRedirect("result.jsp");
%>
<%
	String hobby = "movie";
%>
<jsp:forward page="result.jsp">
	<jsp:param name="hobby" value="<%=hobby %>" />
</jsp:forward>