<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<jsp:useBean id="empDTO" class="web.test.bean.EmpDTO"/>
<jsp:setProperty property="empno" name="empDTO"/>

<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String user ="scott";
	String password = "tiger";
	
	Connection conn = DriverManager.getConnection(url,user,password);
	
	String sql = "delete from emp where empno = ?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	pstmt.setInt(1,empDTO.getEmpno());
	
	int result = pstmt.executeUpdate();
	
	if(result != 0){%>
	<h1><%=result%>행이 삭제되었습니다</h1>
<% 	}else{
	out.println("<h1>없는 사원번호입니다 다시 입력해주세요</h1>");
	}
	conn.close();
	pstmt.close();
%>	
<button type="button" onclick="back()">돌아가기</button> 
<h1>현재 전체사원 간략정보</h1>
<jsp:include page="connection.jsp" flush="true"/>
<script>

	function back(){
		location.href="empDeleteForm.jsp";
	}
</script>