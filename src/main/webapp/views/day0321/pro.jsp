<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="top.jsp"%>
<% request.setCharacterEncoding("UTF-8"); %>

<%
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	
	if(age >= 20){ // 나이가 20살이상
		out.println("<h1>"+name+"님의 나이는 20세 이상입니다</h1>");
	}else{//20미만
		out.println("<h1>"+name+"님은 미성년자입니다,<br> 그대의 나이 : "+age+"</h1>");
	}
%>

