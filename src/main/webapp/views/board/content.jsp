<%@page import="web.test.bean.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	table{
		text-align : center;
		border-top : 2px solid black;
		border-collapse: collapse;
		width : 800px;
		height : 200px;
	}
	th,td{
		border-bottom : 1px solid darkgray;
	}
</style>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="dao" class="web.test.bean.BoardDAO"/>
<jsp:useBean id="dto" class="web.test.bean.BoardDTO"/>
<jsp:setProperty property="*" name="dto"/>

<% 
	int num = Integer.parseInt(request.getParameter("num"));
	dto = dao.content(num); %>    
<h1>board/content</h1>

<table border="1">
	<tr>
		<th>글번호</th>		
		<td><%=dto.getNum() %></td>		
	</tr>
	<tr>
		<th>제목</th>
		<td><%=dto.getTitle() %></td>
	</tr>
	<tr>
		<th>작성자</th>
		<td><%=dto.getWriter() %></td>
	</tr>
	<tr>
		<th>작성일</th>
		<td><%=dto.getReg() %></td>
	</tr>
	<tr>
		<th>내용</th>
		<td><%=dto.getContent() %></td>
	</tr>
</table>
<button type="button" onclick="window.location='delete.jsp?num=<%=dto.getNum()%>'">글삭제</button>
<button type="button" onclick="window.location='updateForm.jsp?num=<%=dto.getNum()%>'">글수정</button>
<button type="button" onclick="window.location='list.jsp'">목록으로</button>

