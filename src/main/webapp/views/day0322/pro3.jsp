<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>pro3</h1>
<% request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="cal" class="web.test.jsp.Calc"/>
<jsp:useBean id="date" class="java.util.Date"/>
<jsp:setProperty name="cal" property="*" />

<h1>
날짜
<jsp:getProperty property="year" name="date"/>년
<jsp:getProperty property="month" name="date"/>월
<jsp:getProperty property="date" name="date"/>일
	
</h1>



<h1>
계산
	<jsp:getProperty property="num1" name="cal"/>
	<jsp:getProperty property="oper" name="cal"/>
	<jsp:getProperty property="num2" name="cal"/>
	=<jsp:getProperty property="result" name="cal"/>
</h1>