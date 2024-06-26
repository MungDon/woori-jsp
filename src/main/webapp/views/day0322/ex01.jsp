<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>ex01</h1>
	내장 객체 - 9개의 내장객체
		: 	request
			session
			application
			pageContext
			속성(attribute)값을 저장하고 읽을 수 있는
			setAtturibute(), getAttribute()메서드가 있다 	
	
		* Enumeration 객체
			-java.util.Enumeration 인터페이스는
				객체를 저장하는 컬렉션
				저장된 객체들은 모두 Object 타입으로 저장한다
				
				- 주로 사용하는 메서드
					: boolean 타입 hasMoreElements();
						- 더 이상의 객체가 있는지 없는지 판단 
						- 객체가 	있으면 ture 리턴
								없으면 false 리턴
								
					: Object 타입 nextElement();
						- 다음 객체를 가져오는 메서드
						- 이때 Object 타입으로 받아온 객체를
							원래의 객체 형태로 형변환(casting) 해야함.
							
		* URL / URI	
			
			- URL(Uniform Resource Locator)
				: 웹 상에서 서비스를 제공하는 각 서버들이 제공하고 있는 
					파일들의 위치를 명시하기 위한 것.
					따라서 URL 에는 접속해야 할 서비스의 종류, 도메인 명, 파일의 위치가 포함된다.
			
			- URI(Uniform Resource Identifier)
				: URL로부터 존재하는 자원들을 식별하기 위한
					일반적인 식별자를 규정하기 위한 것
					따라서 URI는 URL에서 HTTP 프로토콜, 호스트명, port번호를 제외한 부분이 된다.
				
				예) http://localhost:8080/web/views/home.jsp 에서 
					URL : http://localhost:8080/web/views/home.jsp 가 되고
					URI : web/views/home.jsp 가 된다