<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>cookieResult</h1>

<%
	Cookie[] cookies = request.getCookies();

	for(Cookie c : cookies){
		out.println(c.getName()+" : "+c.getValue()+"<br>");
	}
	// 60초 후에 다시확인
	//day0320/cookieResult.jsp에서도 확인
%>