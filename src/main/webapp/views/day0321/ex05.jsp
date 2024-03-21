<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="top.jsp" %>

<h1>ex05.jsp</h1>
<h2>out.println 사용</h2>

<%
	String[] strArr = {"java","jsp","MVC","Spring"};

	for(int i =0; i<strArr.length; i++){
		out.println("<h3>strArr["+i+"] = "+strArr[i]+"</h3>");
	}

	for(String str : strArr){
		out.println("<h3>"+str+"</h3>");
	}
%>

<hr color="orange">
<h2>JSP 표현식 사용</h2>

<%
	for(int i =0; i<strArr.length; i++){
%>		<h3>strArr[<%=i%>] = <%=strArr[i]%></h3>
<%	}
	

	for(String str : strArr){
%>		<h3><%=str%></h3>
<%	}
%>