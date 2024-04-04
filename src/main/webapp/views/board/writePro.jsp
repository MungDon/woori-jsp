<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="dao" class="web.test.bean.BoardDAO"/>
<jsp:useBean id="dto" class="web.test.bean.BoardDTO"/>
<jsp:setProperty property="*" name="dto"/>
<h1>board/writeForm</h1>
<%
	int result = dao.insert(dto);
%>

<h2><%=result %>개의 글이 등록되었습니다</h2>
<%if(result != 0){ %>
<script>
	alert("글등록이 완료되었습니다");
	location.href="list.jsp";
</script>
<% } %>
