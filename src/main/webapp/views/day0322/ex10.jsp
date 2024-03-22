<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("UTF-8"); %>
<h1>포워드 하는 페이지 ex10.jsp입니다</h1>


<% 	String id = request.getParameter("id"); 
	String hobby = request.getParameter("hobby");
	
	System.out.println(id);
	System.out.println(hobby);
%>
<jsp:forward page="ex09.jsp"/>

ex09 포워드 완료