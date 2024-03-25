<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>test</h1>
	
<%!
	// 클래스 영역
	static String a="aa";
	String b = "bb";
%>
<h2>out.println</h2>
<%
	String c = "cc";
	out.println(a+"<br/>");
	out.println(b+"<br/>");
	out.println(c+"<br/>");
	
%>
<h2>표현식</h2>
<%=a%><br/>
<%=b%><br/>
<%=c%><br/>