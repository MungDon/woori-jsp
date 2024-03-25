<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>scope</h1>

<%

	// 서버가 실행(켜져있는)상태에서 어디서든 사용이 가능하다
	// 서버에 저장되기 때문에 어디서든(페이지가 달라도) 꺼낼 수 있다.
	application.setAttribute("data", "app");
//	application.removeAttribute("data");
	application.setAttribute("id", "app_i");
	
	// 클라이언트의 상태 정보를 서버상에 저장, 기록
	// 해당 브라우저 유지 시 어디서든(페이지가 달라도) 사용가능
	// 브라우저를 껐다 켜면 , 다른브라우저에서 사용못함
	session.setAttribute("sdata", "session");
//	session.removeAttribute("sdata");
	session.setAttribute("sid", "session_i");
	
	//해당페이지, 포워드로 전달 받은 페이지에서만 사용가능
	request.setAttribute("rdata", "request");
//	request.removeAttribute("rdata");
	request.setAttribute("rid", "request_i");
//	request.getRequestDispatcher("/views/day0320/scopeResult.jsp").forward(request, response);
	request.getRequestDispatcher("/views/day0325/scopeResult.jsp").forward(request,response);
											
%>
<h2>attribute 생성!</h2>