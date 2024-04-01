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
<%--
	enctype이란 서버에 폼데이터를 보낼때 해당 데이터가 인코딩 되는 타입을 말한다
	
	*enctype의 종류
																			 				 
	1) application/x-www-form-urlencoded
		POST 방식을 사용할 때 enctype를 따로 지정하지 않을 때, default 값으로 설정되는 속성입니다.
		모든 문자들을 서버로 보내기 전에 인코딩됨을 명시합니다.
																				 
	2) text/plain
		공백 문자를 "+" 기호로 변환하고, 나머지 문자는 인코딩하지 않습니다.
																 
	3) multipart/form-data
		모든 문자를 인코딩하지 않습니다.
		주로 파일이나 이미지의 업로드가 필요할 때 사용됩니다.
--%>