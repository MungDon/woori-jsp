<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>board/writeForm</h1>

<form action="writePro.jsp" method="post">
	작성자 : <input type="text" name="writer"/><br/>
	글제목 : <input type="text" name="title"/><br/>
	<textarea name="content" rows="20" cols="31"></textarea><br/>
	<button type="submit">글 등록</button>
</form>