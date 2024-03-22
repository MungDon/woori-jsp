<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>ex05</h1>
out 내장객체
	JSP 페이지가 생성한 결과를 웹 브라우저에 전송을 해주는 출력 스트림!
	println() 메서드와 표현식 < %= % > 모두 브라우저에서 출력시키는 역할을 한다.
	단지 편의성을 위해서 표현식의 형태로 제공을 한다.
	
	<h2>out 내장객체 - out.println() 사용</h2>
<%
	String name = "HTML";
	out.println("출력되는 내용 : <b>"+name+"</b> 입니다");
%>

	<h2>out 내장객체 - 표현식 사용</h2>
<% 
	String name2 ="JSP";
%>
 출력되는 내용 : <b>"<%=name2%>"</b> 입니다