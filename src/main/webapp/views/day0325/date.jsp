<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page errorPage="error.jsp" %>
<%--	 - errorPage 속성
	 	: 해당페이지에서 에러가 났을 때 보여줄 페이지를 지정해주는것. 
--%>

<h1>0325/date</h1>
<h2>고의로 에러를 발생시킬 페이지</h2>

<%
	Date date  = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	String strDate = sdf.format(date);
%>
	<%--고의로 에러발생(변수명 고의 오타) // 오늘 날짜는 <%=strDat%>입니다. --%>
	오늘 날짜는 <%=strDate%>입니다.