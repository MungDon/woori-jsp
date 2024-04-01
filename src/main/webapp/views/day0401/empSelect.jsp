<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<jsp:useBean id="empDTO" class="web.test.bean.EmpDTO"/>
<jsp:setProperty property="*" name="empDTO"/>
<h1>empSelect</h1>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String user = "scott";
	String password = "tiger";
	
	Connection conn = DriverManager.getConnection(url, user, password);
	
	String sql = "select * from emp where empno = ?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	pstmt.setInt(1,empDTO.getEmpno());
	
	ResultSet rs = pstmt.executeQuery();
	if(rs.next()){
		int empno  = rs.getInt("empno");
		String ename = rs.getString("ename");
		String job = rs.getString("job");
		int mgr = rs.getInt("mgr");
		Timestamp hiredate = rs.getTimestamp("hiredate");
		int sal = rs.getInt("sal");
		int comm = rs.getInt("comm");
		int deptno = rs.getInt("deptno");
%>	
	<h2>사원번호 : <%=empno %></h2>
	<h2>사원이름 : <%=ename%></h2>
	<h2>직무 : <%=job %></h2>
	<h2>상사번호 : <%=mgr%></h2>
	<h2>입사일자 : <%=hiredate %></h2>
	<h2>급여 : <%=sal %></h2>
	<h2>보너스 : <%=comm%></h2>
	<h2>부서번호 : <%=deptno %></h2>
	<a href ='empSearch.jsp'>되돌아가기</a>
<%	}else{
		out.println("<h2>존재하지않는 사원번호입니다</h2>");
		out.println("<a href ='empSearch.jsp'>되돌아가기</a>");
		
	}
	conn.close();
	pstmt.close();
	rs.close();
%>