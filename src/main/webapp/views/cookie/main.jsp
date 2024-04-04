<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>cookie/main</h1>
<%
	// 먼저 session 꺼냄
	String sid = (String)session.getAttribute("sid");
	
	
	if(sid == null){
		// 쿠키 확인전 변수 선언
		String cid = null;
		String cpw = null;
		String cauto = null;
		
		//쿠키 꺼냄 -> 배열로 받아줌
		Cookie[] cookies = request.getCookies();
		
		//쿠키가 있다면 반복문으로 값을 꺼내고 변수에 대입
		if(cookies != null){
			for(Cookie c : cookies){
				if(c.getName().equals("cid")){
					cid = c.getValue();
				}
				if(c.getName().equals("cpw") ){
					cpw = c.getValue();
				}
				if(c.getName().equals("cauto")){
					cauto = c.getValue();					
				}
			}
		}
		if(cid != null || cpw != null || cauto != null){
			response.sendRedirect("loginPro.jsp");
		}
%>
		<button type="button" onclick="window.location='web/views/member/insertForm.jsp'">회원가입</button>
		<button type="button" onclick="window.location='../member/insertForm.jsp'">회원가입</button>
		<button type="button" onclick="window.location='loginForm.jsp'">로그인</button>
		
<%	}else{%>
		<h2>[<%=sid %>] 님 환영합니다.</h2>
		<button type="button" onclick="window.location='../member/allMember.jsp'">전체회원</button>
		<button type="button" onclick="window.location='../member/updateForm.jsp'">내정보</button>
		<button type="button" onclick="window.location='logout.jsp'">로그아웃</button>
<%}%>