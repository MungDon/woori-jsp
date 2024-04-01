<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<h1>empInsert</h1>
<jsp:useBean id="empDTO" class="web.test.bean.EmpDTO"/>
<jsp:setProperty property="*" name="empDTO"/>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String user = "scott";
	String password = "tiger";
	
	Connection conn = DriverManager.getConnection(url,user,password);
	
	String sql = "insert into emp values(?,?,?,?,sysdate,?,?,?)";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	pstmt.setInt(1,empDTO.getEmpno());
	pstmt.setString(2,empDTO.getEname());
	pstmt.setString(3,empDTO.getJob());
	pstmt.setInt(4,empDTO.getMgr());
	pstmt.setInt(5,empDTO.getSal());
	pstmt.setInt(6,empDTO.getComm());
	pstmt.setInt(7,empDTO.getDeptno());
	
	int result = pstmt.executeUpdate();
	
	conn.close();
	pstmt.close();
%>
<h2><%=result %>행이 추가되었습니다</h2>