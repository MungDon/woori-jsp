<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="top.jsp"%>
<% request.setCharacterEncoding("UTF-8"); %>
<h1>pro3.jsp</h1>
<%
	int localNum = Integer.parseInt(request.getParameter("localNum")); 
	String localName="";
	
		switch(localNum){
			case 0 : 
				localName="종로, 중구, 용산";
				break;
			case 1 : 
				localName = "도봉, 깅븍, 노원, 성북";
				break;
			case 2 : 
				localName = "대문, 성동, 중랑, 광진";
				break;
			case 3 : 
				localName = "강동, 송파";
				break;
			case 4 : 
				localName = "서초, 강남";
				break;
			case 5 : 
				localName = "동작, 관악, 금천";
				break;
			case 6 : 
				localName = "강서, 양천, 영등포";
				break;
			default : 
				localName="존재하지 않는 권역번호";
				break;
		
		}
%>
<h1><%="선택하신 권역번호는 ["+localNum+"]이고<br/>번호에 맞는 권역은 ["+localName+"]입니다."%></h1>
<hr color="orange">
<a href="form3.jsp">다시 선택하러 가기~</a>
<%-- localName	0 : 종로, 중구, 용산
			1 : 도봉, 깅븍, 노원, 성북
			2 : 동대문, 성동, 중랑, 광진
			3 : 강동, 송파
			4 : 서초, 강남
			5 : 동작, 관악, 금천
			6 : 강서, 양천, 영등포
			없는 권역
--%>