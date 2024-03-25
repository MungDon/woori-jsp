<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>scopeResult</h1>
<h2>day0325/scopeResult</h2>
<%
	Object obj = application.getAttribute("data");
	Object obj2 = application.getAttribute("id");

	Object objSession =  session.getAttribute("sdata");
	Object objSession2 = session.getAttribute("sid");
	
	Object objRequest = request.getAttribute("rdata");
	Object objRequest2 = request.getAttribute("rid"); 
%>
<%--서버측에 생성되기 때문에 브라우저에서 출력하여 확인해라 --%>
<h1>첫번째</h1>
<h2>data : <%=obj%></h2>
<h2>sdata : <%=objSession%></h2>
<h2>rdata : <%=objRequest%></h2>
<h1>두번째</h1>
<h2>id : <%=obj2 %></h2>
<h2>sid : <%=objSession2 %></h2>
<h2>rid : <%=objRequest2 %></h2>