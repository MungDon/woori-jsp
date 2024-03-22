<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>/day0322/ex06</h1>
<h2>application 내장객체</h2>
	웹 어플리케이션의 설정 정보를 갖는 context와 관련이 있는 객체.<br>	
		서버의 설정 정보, 지원에 대한 정보를 얻거나<br>	
		어플리케이션이 실행되고있는 동안 발생할 수 있는 <br>	
		이벤트 로그 정보와 관련된 기능을 제공한다.<br>	
		
		application 객체는 웹 어플리케이션 당 1개의 객체가 생성된다.<br>	
		하나의 웹 어플리케이션에서 공유하는 변수로 사용된다.<br>	
<br>		
<%
	String info = application.getServerInfo();
	String path = application.getRealPath("/");
	application.log("로그 기록 : ");
	
%>
웹 컨테이너의 이름과 버전 : <%=info%><br>	
웹 어플리케이션경로의 로컬 시스템 경로  : <%=path%>