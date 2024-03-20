<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<h1>ex02.jsp</h1>
	<%! 
		// 선언문 - 클래스영역
		static String name ="java"; 
		int number =10;
		public String getName(){
			return name;
		}
	%>
	
	<%
		out.println("<h1>"+name+"</h1>");
		out.println(number+"<br>");
		out.println(getName());
	
	%>
	
	<%-- 표현부 --%>
	<h1><%=name %></h1>
	<%=number %><br>
	<%=getName() %>
</body>
</html>