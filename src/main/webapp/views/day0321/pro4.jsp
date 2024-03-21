<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="top.jsp"%>
<style>
	table{
		border-collapse : collapse;
		text-align : center;
		width : 500px;
		height : 200px;
		margin-bottom : 20px;
	}
	tr{
	border-bottom : 1px solid darkgray;
	}
	a{
		padding : 10px;
		color : white;
		background-color : darkgray;
		border : none;
		border-radius : 10px;
	}
</style>
<% request.setCharacterEncoding("UTF-8"); %>
<center>
	<h1>pro4</h1>
</center>
<%
	String name = request.getParameter("name");
	String studentNum = request.getParameter("studentNum");
	String grade = request.getParameter("grade");
	String subject = request.getParameter("subject");
%>
<center>
	<table>
		<tr style="border-top : 2px solid black">
			<th>이름</th>
			<th>학번</th>
			<th>학년</th>
			<th>선택과목</th>
		</tr>
		<tr>
			<td><%=name%></td>
			<td><%=studentNum%></td>
			<td><%=grade%></td>
			<td><%=subject%></td>
		</tr>
	</table>
	<a href="form4.jsp">다시 제출</a>
</center>
