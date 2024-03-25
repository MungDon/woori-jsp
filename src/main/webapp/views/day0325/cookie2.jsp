<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>cookie2</h1>

<%
	//쿠키 생성
	Cookie coo1 = new Cookie("cid","java");
	Cookie coo2 = new Cookie("cpw","1234");
	Cookie coo3 = new Cookie("cname","jsp");
	
	//쿠키 유효시간
	coo1.setMaxAge(60);
	coo2.setMaxAge(60);
	coo3.setMaxAge(60);
/*	
	//사용 가능한 폴더 설정 /day0320/cookieResult.jsp 확인
	coo1.setPath("/web/views/day0320");
	coo2.setPath("/web/views/day0320");
	coo3.setPath("/web/views/day0320");
*/
	//클라이언트(브라우저)전달
	response.addCookie(coo1);
	response.addCookie(coo2);
	response.addCookie(coo3);
%>
<h2>쿠키 생성 완료</h2>