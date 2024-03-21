<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import="web.test.jsp.Tv" %>
<h1>ex01.jsp</h1>
<%! 
	/*	선언부
		클래스의 영역
		 - 변수, 생성자, 메서드
		 - jsp는 컴파일을 서버가 하기 때문에 생성자를 만들 수 없다.
		 - 재사용불가 = 상속 불가 = 접근제어가 필요없음
		 - 그렇기 때문에 클래스 부분이 필요가 없다
	*/
		int a = 100;
		static int x = 200;
%>
<% 
	// 인스턴스 메서드의 영역
	int z = 500;
	Tv tv = new Tv();
%>
표현문 (jsp에서의 출력문)<br>
<%=a %><br>
<%=x %><br>
<%=z %><br>
<%=tv %><br>