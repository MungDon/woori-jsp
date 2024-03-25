<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>day0320/scopeResult</h1>
<h2>day0325/scope.jsp 실행 후</h2>
<%
	Object obj = application.getAttribute("data");
	
	Object objSession =  session.getAttribute("sdata");
	
	Object objRequest = request.getAttribute("rdata");
	
%>
<%--서버측에 생성되기 때문에 브라우저에서 출력하여 확인해라 --%>	
<h2>data 	: <%=obj%></h2>
<h2>sdata 	: <%=objSession%></h2>
<h2>rdata 	: <%=objRequest%></h2>
    