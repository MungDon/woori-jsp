<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>day0325/uploadForm</h1>

<%--form 태그 설정 시 
		전송 방식 : post <-> get 은 URL 만 보낼 수 있음
		enctype: multipart/form-data	:	multipart 는 모든 데이터 타입이 가능		
		
		문자가 아니기 때문에
		request.getParameter(); / <jsp:useBean 으로 받지 못함.
		외부 라이브러리 필요
		http://servlets.com/cos/ - > cos-22.05.zip 다운 -> 압축풀고 lib 폴더안에 cos.jar 파일을 이클립스 WEB_INF /lib 안에 복사
		파일 업로드를 위한 라이브러리
--%>
<form action="uploadPro.jsp" method="post" enctype="multipart/form-data">
	파일명 : <input type="text" name="fileName" /><br>
	파일선택 : <input type="file" name="save"/><br>
	<button type="submit">업로드</button>
</form>