<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>ex02.jsp</h1>
<%--
	JSP 페이지에 대한 정보를 page 디렉티브 속성들을 사용하여 정의.
	
	- info 속성
		: 간단한 정보, 화면에는 나오지않는다.
	
	- language 속성
		: 이 속성은 생략 가능, 기본값 "java", java 만 지원하기 때문
	
	- pageEncoding 속성
		: Encoding 정보
	
	- contentType 속성
		: 현재 JSP 페이지의 내용이 어떤 Type 의 문서로 생성되는지 지정하는 속성
		: 여러 형태의 문서를 생성할 수 있음
			기본값 : text/HTML - 응답결과를 HTML 문서형식으로 생성하고 출력하겠다는 의미
	
	- extends 속성
		: 상속 받을 클래스 이름
		: 쓰이지 않음.
	
	- import 속성
		: java 의 import 와 같음
		: 이 속성은 유일하게 한 페이지 내엣거 여러개 사용 가능
		
	- buffer="8kb" 
		: 현재 페이지에서 한번에 출력할 될 있는 양
		: buffer = 입출력 데이터 등의 정보를 전달 할 때 사용 되는 임시 저장소
					한 장소에서 다른 장소로 데이터를 송신할 때 일어나는 시간의 차이나 데이터 흐름 속도 차이를 맞추기 위해 사용한다
		: 기본값	: buffer="8kb" 
				none : 사용하기 않겠다는 의미
						바로 웹 브라우저로 출력이 된다.
		: 더 많은 내용 출력할 때 크기를 늘려주면 된다.
	
	- autoFlush="true"
		: JSP 페이지의 내용들이 웹 브라우저에 출력이 되기전에 
			출력 버퍼가 다 찰 경우
			buffer 의 양을 늘리겠느냐 ="true" :  자동으로 늘리겠다.
			
	 - errorPage 속성
	 	: 에러가 났을 때 보여줄 페이지를 지정해주는것.
	
	 - isErrorPage="false"
	 	: errorPage 에다가 설정
	 		true : 예외를 자동으로 처리
	 	: web.xml 파일에서 < error-page > 로 처리하도록 되어있어 지금은 쓸모 없는 기능이다.
	 	
	 - isThreadSafe="true"
	 	: 멀티 스레드(여러 브라우저에서 동시 실행) 사용할 수 있느냐
	 	: false = 다수의 사용자들의 요청을 동시에 처리하지 못하고 순차적으로 처리하기때문에 
	 		진행시간이 많이 소모가 된다
	 		
	 - IsELIgnored="false"
	 	 : EL(표현언어)식 출력에 관한것, 반드시 사용함. (1차 풀젝 후 사용하게 될것)
	 
	 - deferredSyntaxAllowedAsLiteral="false"
	 	: 표현식에 관한 것, EL 과 같이 사용됌
	 	
	 - trimDirectiveWhitespaces="false"
	 	 : 공백 제공, 큰 차이 없는 기능
--%>