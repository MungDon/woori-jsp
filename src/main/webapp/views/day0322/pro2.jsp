<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>pro2</h1>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="tv" class="web.test.jsp.Tv"/><%--자바 빈등록 --%>

<jsp:setProperty property="*" name="tv"/>

	<h1><jsp:getProperty property="model" name="tv"/></h1>	
	<h1><jsp:getProperty property="brand" name="tv"/></h1>	
	<h1><jsp:getProperty property="color" name="tv"/></h1>	
	