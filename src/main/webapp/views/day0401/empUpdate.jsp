<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<jsp:useBean id="empDTO" class="web.test.bean.EmpDTO"/>
<jsp:setProperty property="*" name="empDTO"/>
<h1>empUpdate</h1>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url="jdbc:oracle:thin:@localhost:1521:orcl";
	String user = "scott";
	String password = "tiger";
	
	Connection conn = DriverManager.getConnection(url,user,password);
	
	String sql = "update emp set job = ?, sal = ?, comm = ? where empno = ?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	pstmt.setString(1,empDTO.getJob());
	pstmt.setInt(2, empDTO.getSal());
	pstmt.setInt(3, empDTO.getComm());
	pstmt.setInt(4, empDTO.getEmpno());

	int result = pstmt.executeUpdate();
	
	conn.close();
	pstmt.close();// 끊지않으면 데이터 누수 발생
			 
%>
<h2><%=result %>행이 수정되었습니다</h2>