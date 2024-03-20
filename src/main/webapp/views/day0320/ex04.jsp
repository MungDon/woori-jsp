<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="web.test.jsp.Data" %>
<%-- jsp 주석을 사용하여 필기 --%>
 <% Date day = new Date(); %>
 
 <h1>   날짜  : <%=day%></h1>
 
 <hr/>
 
 <h1>count 	: <%= Data.count%></h1>
 <h1>name 	: <%= Data.name%></h1>
 
 <hr/>
 
 <% Data data = new Data(); %>
 <h1>number : <%=data.number%></h1>
 <h1>str : <%=data.str%></h1>

 <hr/>