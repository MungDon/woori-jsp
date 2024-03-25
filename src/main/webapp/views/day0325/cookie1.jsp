<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>cookie1</h1>
<%
	/*	
		Cookie
			- 세션과 달리 클라이언트의 상태 정보를 클라이언트 측에 보관(저장)한다.
			- 쿠키를 항상 가지고 다님 = 자동로그인
			- 브라우저에 저장하기때문에 브라우저에서 확인한다 
			- 해당 폴더 내에서만 사용가능
				내부 객체가 아니기 때문에 생성해야한다
			
	*/
	Cookie coo = new Cookie("coo","test");
	
	// 쿠키 유효기간 : 초 단위
	coo.setMaxAge(30); // 유효기간 30초 설정 = 30초 지나면 자동삭제
	// .setMaxAge(0); // 로그 아웃
	
	// 클라이언트(브라우저) 전달
	response.addCookie(coo);
%>
<h1>쿠키생성완료</h1>