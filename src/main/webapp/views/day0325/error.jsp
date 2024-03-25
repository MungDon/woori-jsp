<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page  isErrorPage="true" %>
<%--
	 - isErrorPage="false"
	 	: errorPage 에다가 설정
	 		true : 예외를 자동으로 처리
	 	: web.xml 파일에서 < error-page > 로 처리하도록 되어있어 지금은 쓸모 없는 기능이다. 
--%>
	
<h1>0325/error</h1>
<h2>에러처리 페이지</h2>

요청하신 페이지에서 문제가 생겼습니다
서비스 사용에 불편을 끼쳐드려 죄송합니다.
빠른 시간내에 복구하겠습니다.
<%--
	404
		- 문서를 찾을 수가 없다
			: 사용자가 잘못된 페이지를 요청했을 경우 
				-> URL확인 올바르게 입력됐는지 확인할 것.
	500
		- 서버 내부 에러
		- 웹 서버가 요청사항을 수행 할 수 없을 경우
			-> 코드 확인
			
		실제 현재 에러처리 방법
			web.xml 페이지에 작성
				- 전체 파일 설정
				- 프로젝트 이름.xml로 자동생성
			.xml
				- 태그 사용하는 것은 HTML 과 같음
				- 그러나 지정된 태그는 없다.
				- DTD 스키마 파일의 맨위에 있음
		
 --%>


