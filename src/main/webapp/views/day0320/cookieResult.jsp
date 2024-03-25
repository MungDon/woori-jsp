<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>/0325/cookie2.jsp 실행 후</h1>

<%
	Cookie[] cookies = request.getCookies();

	for(Cookie c : cookies){
		out.println(c.getName()+" : "+c.getValue()+"<br/>");
	}
	//60초후 다시확인
%>