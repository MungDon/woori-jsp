<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="top.jsp" %>
<h1>ex04.jsp</h1>
<% 
	int score = 95;
	if(score >= 90){
		System.out.println("A");
	}

	int number = 40;
	
	if(number > 40){%>
		<h1>숫자가 40보다 큽니다</h1>
	<%}else{%>
		<h1>숫자가 40보다 작아요</h1>
	<%}

	int number2 = 50;
	
	if(number2 >20){
		out.println("<h1>숫자가 20보다 큽니다</h1>");
	}else{
		out.println("숫자가 20보다 작습니다");
	}

	for(int i = 1; i<=5; i++){%>
		<h1><%=i %>.안녕</h1>
	<%}

	for(int i = 1 ; i<=5; i++){
		out.println("<h1>"+i+".하세요</h1>");
	}
%>