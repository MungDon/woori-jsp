<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	//1단계 import
	//2단계 JDBC 드라이버 로딩
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String user = "scott";
	String password = "tiger";
	
	//3단계 connection 객체 생성
	Connection conn = DriverManager.getConnection(url,user,password);
	
	//4.쿼리문 작성
	String sql = "select * from emp";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	/*
		5. 쿼리문 실행
			-두가지방법
			pstmt.executeQuery();	:	select
									:	결과있음 - return타입 resultSet 
			pstmt.executeUpdate();	:	insert, update, delete
									:	결과 없음 - return타입 int 
		이때 결과는 레코드 한줄씩 나옴
	*/
	ResultSet rs = pstmt.executeQuery();
	while(rs.next()){	// 레코드(가로한줄) : 있으면  true 없으면 false
		int empno = rs.getInt("empno");
		String ename = rs.getString("ename");
		Timestamp hiredate = rs.getTimestamp("hiredate");
		
		out.println("<h2> 사원번호 : "+empno+", 사원명 : "+ename+", 입사일자 : "+hiredate+"</h2>");
	}
	//6단계 연결 끊기 / 연결해서 이루어지는 경우 반드시 연결을 끊어줘야한다.
	conn.close();
	pstmt.close();
	rs.close();
%>