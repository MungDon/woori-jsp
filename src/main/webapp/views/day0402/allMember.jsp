<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="web.test.bean.MemberDTO" %>
<%@ page import="java.util.List" %>
<h1>allMember</h1>
<jsp:useBean id="dao" class="web.test.bean.MemberDAO"/>
<%
	List<MemberDTO> list = dao.allMember();
	for(MemberDTO dto : list){%>
		<h2><%=dto.getId()%>/
		<%=dto.getPw()%>/
		<%=dto.getName()%>/
		<%=dto.getBirth()%>/
		<%=dto.getPhone1()%>/
		<%=dto.getPhone2()%>/
		<%=dto.getGender()%>/
		<%=dto.getReg()%></h2>
<%	}
%>