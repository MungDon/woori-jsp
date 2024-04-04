<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="web.test.bean.BoardDTO" %>
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
<%-- dto 는 useBean 중복선언이라 사용불가 --%>
<style type="text/css">
	table{
		text-align: center;
	}
</style>
<h1>board/list</h1>

<table>
	<tr>
		<th>글번호</th>
		<th>제목</th>
		<th>작성자</th>
		<th>작성일</th>
	</tr>
<%
		ArrayList<BoardDTO> list = dao.list();
		for(BoardDTO dto : list){
%>
	<tr>
		<td style="font-weight : bolder"><%= dto.getNum()%></td>
		<td>
			<a href="content.jsp?num=<%=dto.getNum()%>"><%= dto.getTitle()%></a>
		</td>
		<td><%= dto.getWriter()%></td>
		<td><%= dto.getReg()%></td>
	</tr>
	<%} %>
</table>
<button type="button" onclick="window.location='writeForm'">글 등록</button>