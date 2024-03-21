<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="top.jsp" %>
<% request.setCharacterEncoding("UTF-8"); %>

<% 
	String name = request.getParameter("name");
	String local= request.getParameter("local");
	String tel 	= request.getParameter("tel");
	String localNum="";

	if(local.equals("인천")){
		localNum="032";
		out.println("<h2>정보 요약 : "+name+"님의 전화번호는 "+localNum+"-"+tel+"입니다</h2>");
	}else if(local.equals("경기")){
		localNum="031";
		out.println("<h2>정보 요약 : "+name+"님의 전화번호는 "+localNum+"-"+tel+"입니다</h2>");
	}else{
		localNum="02";
		out.println("<h2>정보 요약 : "+name+"님의 전화번호는 "+localNum+"-"+tel+"입니다</h2>");
	}
	
	
//	switch(local){
//		case "인천" : 
//			localNum= "032";
//			break;	
//		case "서울" :
//			localNum="02";
//			break;
//		case "경기" : 
//			localNum="031";
//			break;
//	}
%>

<h1>정보 확인</h1>

<h2>이름 : <%=name %></h2>
<h2>전화번호 : <%=localNum+"-"+tel%></h2>
<h2>프로필사진</h2><img src="/web/views/images/mang.jpg"><br/>
<strong>입력한 정보가 틀렸다면?</strong><br/>
=> <a href="form2.jsp">다시적으러가기!</a>
