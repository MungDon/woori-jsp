<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>uploadForm2</h1>

<form action="uploadPro2.jsp" method="post" enctype="multipart/form-data">
	파일1 : <input type="file" name="upload1"/><br>
	파일2 : <input type="file" name="upload2"/><br>
	파일3 : <input type="file" name="upload3"/><br>
	파일4 : <input type="file" name="upload4"/><br>
	<button type="submit">업로드</button>
</form>